classdef GUI < handle
    % GUI - 法布里-珀罗 (F-P) 谐振腔透过率谱线实时模拟器（增强版）
    %
    % 功能概述：
    %   1) 6 参数 (r, A, n, d, phi, theta) 滑块 + 数值框双向同步实时调节
    %   2) 理论特征值 (F, FSR, FWHM) 与基于 findpeaks 的数值实测值并列显示
    %   3) 谱线几何标注开关：FSR 双向箭头、FWHM 半高水平线、峰位三角标记
    %   4) 预设场景下拉框：一键切换报告中的典型实验场景
    %   5) dB / 线性视图切换、Hold on 对比、PNG / CSV 双格式导出
    %
    % 使用方法：在 MATLAB 命令窗口中输入 GUI 即可启动。

    properties (Access = private)
        % --- 主体 ---
        Fig
        Ax
        LiveLine
        HeldLine

        % --- 物理约束警告文字 ---
        WarnText

        % --- 谱线标注层（新增） ---
        PeakMarkers       % 峰位红色三角 (scatter)
        FWHMLine          % 半高水平线
        FSRArrow1         % FSR 双向箭头：水平线段
        FSRArrowL         % FSR 左端短竖线
        FSRArrowR         % FSR 右端短竖线
        FSRText           % FSR 文本标签
        FWHMText          % FWHM 文本标签

        % --- 6 个参数滑块 + 数值框 ---
        SliderR,     LabelR
        SliderA,     LabelA
        SliderN,     LabelN
        SliderD,     LabelD
        SliderPhi,   LabelPhi
        SliderTheta, LabelTheta
        NameLabels

        % --- 波长范围 ---
        EditXMin, EditXMax

        % --- 按钮与下拉框 ---
        BtnReset, BtnHold
        BtnDb             % dB / 线性切换
        BtnAnnotate       % 几何标注切换（新增）
        BtnExportPNG
        BtnExportCSV      % CSV 导出（新增）
        DropPreset        % 预设场景下拉框（新增）

        % --- 特征值标签（理论 / 实测两列，新增实测列） ---
        LabelFintTh,  LabelFSRTh,  LabelFWHMTh   % 理论
        LabelFintMs,  LabelFSRMs,  LabelFWHMMs   % 实测
        LabelTheoryHdr, LabelMeasHdr             % 表头

        % --- 缓存最近一次的特征值（供 CSV 导出元数据） ---
        LastFinesseTh = NaN
        LastFSRTh     = NaN
        LastFWHMTh    = NaN
        LastFinesseMs = NaN
        LastFSRMs     = NaN
        LastFWHMMs    = NaN
    end

    properties (Constant, Access = private)
        DEFAULT_R     = 0.90
        DEFAULT_A     = 0
        DEFAULT_N     = 1.50
        DEFAULT_D     = 800
        DEFAULT_PHI   = 0
        DEFAULT_THETA = 0
        DEFAULT_XMIN  = 300
        DEFAULT_XMAX  = 1200
    end

    methods
        function app = GUI()
            app.NameLabels = gobjects(0);
            app.buildUI();
            app.onResize();
            app.updatePlot();
        end

        % ----------------------------------------------------------------
        % 外部脚本驱动接口（演示 / 截图用）
        % ----------------------------------------------------------------
        function configure(app, varargin)
            for i = 1:2:numel(varargin)
                switch lower(varargin{i})
                    case 'r',     app.SliderR.Value     = varargin{i+1}; app.LabelR.Value     = varargin{i+1};
                    case 'a',     app.SliderA.Value     = varargin{i+1}; app.LabelA.Value     = varargin{i+1};
                    case 'n',     app.SliderN.Value     = varargin{i+1}; app.LabelN.Value     = varargin{i+1};
                    case 'd',     app.SliderD.Value     = varargin{i+1}; app.LabelD.Value     = varargin{i+1};
                    case 'phi',   app.SliderPhi.Value   = varargin{i+1}; app.LabelPhi.Value   = varargin{i+1};
                    case 'theta', app.SliderTheta.Value = varargin{i+1}; app.LabelTheta.Value = varargin{i+1};
                    case 'db',    app.BtnDb.Value       = varargin{i+1};
                    case 'mark',  app.BtnAnnotate.Value = varargin{i+1};
                end
            end
            app.updatePlot();
        end

        function holdCurrent(app)
            raw = app.LiveLine.UserData;
            if isempty(raw), return; end
            app.BtnHold.Value     = true;
            app.BtnHold.Text      = 'Release';
            app.HeldLine.UserData = raw;
            app.HeldLine.XData    = app.LiveLine.XData;
            app.HeldLine.YData    = app.LiveLine.YData;
            app.HeldLine.Visible  = 'on';
            app.HeldLine.Color    = [0.55, 0.55, 0.55];
            app.LiveLine.Color    = [0.85, 0.20, 0.20];
        end

        function screenshot(app, fname)
            drawnow; pause(0.3);
            exportgraphics(app.Fig, fname, 'Resolution', 150);
        end

        function screenshotAxes(app, fname)
            drawnow; pause(0.3);
            exportgraphics(app.Ax, fname, 'Resolution', 150);
        end

        function h = figureHandle(app)
            h = app.Fig;
        end

        function h = axesHandle(app)
            h = app.Ax;
        end
    end

    methods (Access = private)

        function buildUI(app)
            % ============================================================
            % 主窗口
            % ============================================================
            app.Fig = uifigure('Name', 'F-P Cavity Transmittance Simulator', ...
                'Position', [80, 30, 1120, 820], ...
                'Color', [0.97, 0.97, 0.97], ...
                'AutoResizeChildren', 'off', ...
                'SizeChangedFcn', @(~,~) app.onResize());

            % ============================================================
            % 绘图区
            % ============================================================
            app.Ax = uiaxes(app.Fig, 'Position', [1, 1, 100, 100]);
            title(app.Ax, 'F-P 谐振腔透过率谱线', ...
                'FontSize', 18, 'FontWeight', 'bold', 'FontName', '楷体');
            xlabel(app.Ax, '$\lambda\ \mathrm{(nm)}$', 'FontSize', 16, 'Interpreter', 'latex');
            ylabel(app.Ax, '$T$', 'FontSize', 16, 'Interpreter', 'latex');
            ylim(app.Ax, [0, 1]);
            xlim(app.Ax, [app.DEFAULT_XMIN, app.DEFAULT_XMAX]);
            app.Ax.XGrid     = 'on';
            app.Ax.YGrid     = 'on';
            app.Ax.GridAlpha = 0.12;
            app.Ax.Box       = 'on';
            app.Ax.FontSize  = 13;

            hold(app.Ax, 'on');

            % 锁定参考曲线（灰色虚线）
            app.HeldLine = plot(app.Ax, NaN, NaN, '--', ...
                'Color', [0.55, 0.55, 0.55], 'LineWidth', 1.8, ...
                'Visible', 'off');
            app.HeldLine.UserData = [];

            % 实时主曲线
            app.LiveLine = plot(app.Ax, NaN, NaN, '-', ...
                'Color', [0.20, 0.40, 0.85], 'LineWidth', 2);
            app.LiveLine.UserData = [];

            % ----- 谱线标注层（默认隐藏） -----
            app.PeakMarkers = scatter(app.Ax, NaN, NaN, 55, ...
                'v', 'filled', ...
                'MarkerFaceColor', [0.90, 0.30, 0.30], ...
                'MarkerEdgeColor', 'none', ...
                'Visible', 'off');
            app.FWHMLine = plot(app.Ax, NaN, NaN, '-', ...
                'Color', [0.20, 0.55, 0.30], 'LineWidth', 1.5, ...
                'Visible', 'off');
            app.FSRArrow1 = plot(app.Ax, NaN, NaN, '-', ...
                'Color', [0.55, 0.30, 0.75], 'LineWidth', 1.6, ...
                'Visible', 'off');
            app.FSRArrowL = plot(app.Ax, NaN, NaN, '-', ...
                'Color', [0.55, 0.30, 0.75], 'LineWidth', 1.6, ...
                'Visible', 'off');
            app.FSRArrowR = plot(app.Ax, NaN, NaN, '-', ...
                'Color', [0.55, 0.30, 0.75], 'LineWidth', 1.6, ...
                'Visible', 'off');
            app.FSRText = text(app.Ax, NaN, NaN, '', ...
                'Color', [0.55, 0.30, 0.75], 'FontSize', 11, ...
                'HorizontalAlignment', 'center', ...
                'VerticalAlignment', 'bottom', ...
                'Interpreter', 'latex', ...
                'Visible', 'off');
            app.FWHMText = text(app.Ax, NaN, NaN, '', ...
                'Color', [0.20, 0.55, 0.30], 'FontSize', 11, ...
                'HorizontalAlignment', 'left', ...
                'VerticalAlignment', 'middle', ...
                'Interpreter', 'latex', ...
                'Visible', 'off');

            % 物理约束违反警告（A > 1-r 时显示）
            app.WarnText = text(app.Ax, 0.5, 0.5, ...
                'A > 1−r：吸收超限，T = 0', ...
                'Units', 'normalized', ...
                'HorizontalAlignment', 'center', ...
                'VerticalAlignment', 'middle', ...
                'Interpreter', 'none', ...
                'FontSize', 16, 'FontWeight', 'bold', ...
                'Color', [0.80, 0.15, 0.15], ...
                'Visible', 'off');

            % 公式标注
            text(app.Ax, 0.98, 0.95, ...
                '$T = \left(1 - \frac{A}{1-r}\right)^{2} \!\cdot\! \frac{1}{1 + \frac{4r}{(1-r)^{2}}\sin^{2}\!\left(\frac{2\pi}{\lambda}nd\cos\theta - \varphi\right)}$', ...
                'Units', 'normalized', ...
                'HorizontalAlignment', 'right', ...
                'VerticalAlignment', 'top', ...
                'Interpreter', 'latex', ...
                'FontSize', 13, ...
                'Color', [0.3, 0.3, 0.3]);

            % ============================================================
            % 滑块行（位置由 onResize 动态设置）
            % ============================================================
            dummyPos = [0, 0, 100, 22];

            [app.SliderR, app.LabelR] = app.createSlider(...
                '$r$（反射率）', [0.01, 0.99], app.DEFAULT_R, '%.4f', 'R', dummyPos);
            [app.SliderA, app.LabelA] = app.createSlider(...
                '$A$（吸收损耗）', [0, 0.5], app.DEFAULT_A, '%.4f', 'A', dummyPos);
            [app.SliderN, app.LabelN] = app.createSlider(...
                '$n$（折射率）', [1.0, 4.0], app.DEFAULT_N, '%.4f', 'N', dummyPos);
            [app.SliderD, app.LabelD] = app.createSlider(...
                '$d$（腔长/nm）', [10, 5000], app.DEFAULT_D, '%.1f', 'D', dummyPos);
            [app.SliderPhi, app.LabelPhi] = app.createSlider(...
                '$\varphi$（附加相位）', [0, 6.28], app.DEFAULT_PHI, '%.4f', 'Phi', dummyPos);
            [app.SliderTheta, app.LabelTheta] = app.createSlider(...
                ['$\theta$', '（入射角/', char(176), '）'], [0, 85], app.DEFAULT_THETA, '%.1f', 'Theta', dummyPos);

            % ============================================================
            % 波长范围
            % ============================================================
            uilabel(app.Fig, 'Text', '$\lambda_{\min}$:', ...
                'Position', dummyPos, 'FontSize', 18, ...
                'Interpreter', 'latex', ...
                'FontColor', [0.35, 0.35, 0.35], 'Tag', 'lbl_xmin');
            app.EditXMin = uieditfield(app.Fig, 'numeric', ...
                'Position', dummyPos, 'Value', app.DEFAULT_XMIN, ...
                'FontSize', 13, 'HorizontalAlignment', 'center', ...
                'Limits', [1, Inf], 'LowerLimitInclusive', 'on', ...
                'ValueChangedFcn', @(~,~) app.updatePlot());

            uilabel(app.Fig, 'Text', '$\lambda_{\max}$:', ...
                'Position', dummyPos, 'FontSize', 18, ...
                'Interpreter', 'latex', ...
                'FontColor', [0.35, 0.35, 0.35], 'Tag', 'lbl_xmax');
            app.EditXMax = uieditfield(app.Fig, 'numeric', ...
                'Position', dummyPos, 'Value', app.DEFAULT_XMAX, ...
                'FontSize', 13, 'HorizontalAlignment', 'center', ...
                'Limits', [1, Inf], 'LowerLimitInclusive', 'on', ...
                'ValueChangedFcn', @(~,~) app.updatePlot());

            % ============================================================
            % 右侧信息栏：谱线特征值（理论 / 实测两列）
            % ============================================================
            uilabel(app.Fig, 'Text', '谱线特征值', ...
                'Position', dummyPos, 'FontSize', 15, ...
                'FontWeight', 'bold', 'FontName', '楷体', ...
                'FontColor', [0.2, 0.2, 0.2], ...
                'Tag', 'info_title');

            % 表头（"理论" / "实测"）
            app.LabelTheoryHdr = uilabel(app.Fig, 'Text', '理论', ...
                'Position', dummyPos, 'FontSize', 11, ...
                'FontWeight', 'bold', 'FontName', '楷体', ...
                'FontColor', [0.13, 0.35, 0.70], ...
                'HorizontalAlignment', 'center');
            app.LabelMeasHdr = uilabel(app.Fig, 'Text', '实测', ...
                'Position', dummyPos, 'FontSize', 11, ...
                'FontWeight', 'bold', 'FontName', '楷体', ...
                'FontColor', [0.70, 0.30, 0.13], ...
                'HorizontalAlignment', 'center');

            % 理论列
            app.LabelFintTh = uilabel(app.Fig, 'Text', '$\mathcal{F} = \textrm{--}$', ...
                'Position', dummyPos, 'FontSize', 13, ...
                'Interpreter', 'latex', 'FontColor', [0.13, 0.35, 0.70]);
            app.LabelFSRTh = uilabel(app.Fig, 'Text', '$\mathrm{FSR} = \textrm{--}$', ...
                'Position', dummyPos, 'FontSize', 13, ...
                'Interpreter', 'latex', 'FontColor', [0.13, 0.35, 0.70]);
            app.LabelFWHMTh = uilabel(app.Fig, 'Text', '$\mathrm{FWHM} = \textrm{--}$', ...
                'Position', dummyPos, 'FontSize', 13, ...
                'Interpreter', 'latex', 'FontColor', [0.13, 0.35, 0.70]);

            % 实测列（findpeaks 结果）
            app.LabelFintMs = uilabel(app.Fig, 'Text', '$\textrm{--}$', ...
                'Position', dummyPos, 'FontSize', 13, ...
                'Interpreter', 'latex', 'FontColor', [0.70, 0.30, 0.13]);
            app.LabelFSRMs = uilabel(app.Fig, 'Text', '$\textrm{--}$', ...
                'Position', dummyPos, 'FontSize', 13, ...
                'Interpreter', 'latex', 'FontColor', [0.70, 0.30, 0.13]);
            app.LabelFWHMMs = uilabel(app.Fig, 'Text', '$\textrm{--}$', ...
                'Position', dummyPos, 'FontSize', 13, ...
                'Interpreter', 'latex', 'FontColor', [0.70, 0.30, 0.13]);

            % ============================================================
            % 预设场景下拉框
            % ============================================================
            uilabel(app.Fig, 'Text', '预设场景', ...
                'Position', dummyPos, 'FontSize', 12, ...
                'FontName', '楷体', 'FontColor', [0.2, 0.2, 0.2], ...
                'Tag', 'preset_title');

            app.DropPreset = uidropdown(app.Fig, ...
                'Position', dummyPos, ...
                'Items', { ...
                    '默认 (r=0.9)', ...
                    '高精细度 (r=0.97)', ...
                    '有损耗 (A=0.04)', ...
                    '倾斜入射 (θ=60°)', ...
                    '短腔 (d=400 nm)' }, ...
                'FontSize', 12, ...
                'ValueChangedFcn', @(src,~) app.onPresetChanged(src));

            % ============================================================
            % 按钮
            % ============================================================
            app.BtnReset = uibutton(app.Fig, 'push', ...
                'Text', 'Reset', 'Position', dummyPos, ...
                'FontSize', 12, 'FontWeight', 'bold', ...
                'BackgroundColor', [0.95, 0.75, 0.20], ...
                'FontColor', [1, 1, 1], ...
                'ButtonPushedFcn', @(~,~) app.onReset());

            app.BtnHold = uibutton(app.Fig, 'state', ...
                'Text', 'Hold on', 'Position', dummyPos, ...
                'FontSize', 12, 'FontWeight', 'bold', ...
                'BackgroundColor', [0.25, 0.60, 0.95], ...
                'FontColor', [1, 1, 1], ...
                'ValueChangedFcn', @(~,evt) app.onHoldToggle(evt));

            app.BtnDb = uibutton(app.Fig, 'state', ...
                'Text', 'dB 视图', 'Position', dummyPos, ...
                'FontSize', 12, 'FontWeight', 'bold', ...
                'BackgroundColor', [0.45, 0.18, 0.72], ...
                'FontColor', [1, 1, 1], ...
                'ValueChangedFcn', @(~,~) app.updatePlot());

            app.BtnAnnotate = uibutton(app.Fig, 'state', ...
                'Text', '标注 FSR/FWHM', 'Position', dummyPos, ...
                'FontSize', 12, 'FontWeight', 'bold', ...
                'BackgroundColor', [0.20, 0.55, 0.30], ...
                'FontColor', [1, 1, 1], ...
                'ValueChangedFcn', @(~,~) app.updatePlot());

            app.BtnExportPNG = uibutton(app.Fig, 'push', ...
                'Text', 'Save PNG', 'Position', dummyPos, ...
                'FontSize', 12, 'FontWeight', 'bold', ...
                'BackgroundColor', [0.35, 0.35, 0.35], ...
                'FontColor', [1, 1, 1], ...
                'ButtonPushedFcn', @(~,~) app.onExportPNG());

            app.BtnExportCSV = uibutton(app.Fig, 'push', ...
                'Text', 'Save CSV', 'Position', dummyPos, ...
                'FontSize', 12, 'FontWeight', 'bold', ...
                'BackgroundColor', [0.55, 0.55, 0.55], ...
                'FontColor', [1, 1, 1], ...
                'ButtonPushedFcn', @(~,~) app.onExportCSV());
        end

        function [slider, valEdit] = createSlider(app, name, limits, defVal, fmt, param, pos)
            nameLbl = uilabel(app.Fig, 'Text', name, ...
                'Position', pos, 'FontSize', 13, ...
                'Interpreter', 'latex', ...
                'FontColor', [0.25, 0.25, 0.25]);
            app.NameLabels(end+1) = nameLbl;

            slider = uislider(app.Fig, ...
                'Limits', limits, 'Value', defVal, ...
                'MajorTicks', [], 'MinorTicks', [], ...
                'ValueChangingFcn', @(~,evt) app.onSliderChanging(evt, param));

            valEdit = uieditfield(app.Fig, 'numeric', ...
                'Position', pos, 'Value', defVal, ...
                'ValueDisplayFormat', fmt, ...
                'FontSize', 11, 'FontWeight', 'bold', ...
                'FontColor', [0.13, 0.35, 0.70], ...
                'HorizontalAlignment', 'center', ...
                'Limits', limits, 'LowerLimitInclusive', 'on', 'UpperLimitInclusive', 'on', ...
                'ValueChangedFcn', @(src,~) app.onEditChanged(src, param));
        end

        % ================================================================
        % 自适应布局
        % ================================================================
        function onResize(app)
            if isempty(app.Fig) || ~isgraphics(app.Fig), return; end
            if isempty(app.SliderR) || numel(app.NameLabels) < 6, return; end
            figPos = app.Fig.Position;
            W = figPos(3);
            H = figPos(4);

            margin = 20;
            infoW  = 340;       % 加宽以容纳两列对照文字完整显示
            ctrlH  = 380;       % 整体控制区高度
            labelW = 155;       % 稍压缩参数名宽度
            valueW = 70;
            barW   = max(W - 2*margin - infoW - 20 - labelW - valueW - 20, 80);

            % 绘图区
            axLeft   = margin + 45;
            axBottom = ctrlH + 15;
            app.Ax.Position = [axLeft, axBottom, ...
                max(W - axLeft - margin - 10, 100), ...
                max(H - axBottom - 15, 100)];

            % 滑块区域（第 1–6 行）
            xName = margin;
            xBar  = margin + labelW;
            xVal  = margin + labelW + barW + 10;
            rowH  = 38;

            sliders   = [app.SliderR,   app.SliderA,   app.SliderN, ...
                         app.SliderD,   app.SliderPhi, app.SliderTheta];
            valLabels = [app.LabelR,    app.LabelA,    app.LabelN, ...
                         app.LabelD,    app.LabelPhi,  app.LabelTheta];
            for i = 1:6
                y = ctrlH - 8 - i * rowH;
                app.NameLabels(i).Position = [xName, y, labelW, 22];
                sliders(i).Position        = [xBar,  y + 11, barW, 3];
                valLabels(i).Position      = [xVal,  y, valueW, 22];
            end

            % 波长范围（第 7 行）
            yRange   = ctrlH - 8 - 7 * rowH;
            lbl_xmin = findobj(app.Fig, 'Tag', 'lbl_xmin');
            lbl_xmax = findobj(app.Fig, 'Tag', 'lbl_xmax');
            if ~isempty(lbl_xmin)
                lbl_xmin.Position     = [xName,       yRange - 4, 65, 30];
                app.EditXMin.Position = [xName + 65,  yRange,     70, 26];
                lbl_xmax.Position     = [xName + 155, yRange - 4, 65, 30];
                app.EditXMax.Position = [xName + 220, yRange,     70, 26];
            end

            % 右侧信息栏：标题 + 表头 + 三行（理论 / 实测）+ 预设 + 5 按钮
            xInfo = W - margin - infoW;
            yInfo = ctrlH - 8;
            colW  = (infoW - 20) / 2;     % 两列宽度（加宽后各列有更多空间）
            xColTh = xInfo + 10;
            xColMs = xInfo + 10 + colW;

            infoTitle = findobj(app.Fig, 'Tag', 'info_title');
            if ~isempty(infoTitle)
                infoTitle.Position        = [xInfo, yInfo,            infoW, 24];

                % 表头：理论 / 实测
                app.LabelTheoryHdr.Position = [xColTh, yInfo - 24, colW, 18];
                app.LabelMeasHdr.Position   = [xColMs, yInfo - 24, colW, 18];

                % 三行（F / FSR / FWHM）
                rowY1 = yInfo - 24 - 1*22;
                rowY2 = yInfo - 24 - 2*22;
                rowY3 = yInfo - 24 - 3*22;
                app.LabelFintTh.Position  = [xColTh, rowY1, colW, 20];
                app.LabelFintMs.Position  = [xColMs, rowY1, colW, 20];
                app.LabelFSRTh.Position   = [xColTh, rowY2, colW, 20];
                app.LabelFSRMs.Position   = [xColMs, rowY2, colW, 20];
                app.LabelFWHMTh.Position  = [xColTh, rowY3, colW, 20];
                app.LabelFWHMMs.Position  = [xColMs, rowY3, colW, 20];

                % 预设
                yPreset = yInfo - 24 - 3*22 - 28;
                presetTitle = findobj(app.Fig, 'Tag', 'preset_title');
                if ~isempty(presetTitle)
                    presetTitle.Position = [xInfo, yPreset, 70, 22];
                end
                app.DropPreset.Position  = [xInfo + 70, yPreset, infoW - 70, 24];

                % 按钮
                btnH = 26;
                btnG = 4;
                y0   = yPreset - 12;
                app.BtnReset.Position      = [xInfo, y0 - 1*(btnH+btnG), infoW, btnH];
                app.BtnHold.Position       = [xInfo, y0 - 2*(btnH+btnG), infoW, btnH];
                app.BtnDb.Position         = [xInfo, y0 - 3*(btnH+btnG), infoW, btnH];
                app.BtnAnnotate.Position   = [xInfo, y0 - 4*(btnH+btnG), infoW, btnH];
                app.BtnExportPNG.Position  = [xInfo,           y0 - 5*(btnH+btnG), (infoW - 6)/2, btnH];
                app.BtnExportCSV.Position  = [xInfo + (infoW + 6)/2, y0 - 5*(btnH+btnG), (infoW - 6)/2, btnH];
            end
        end

        % ================================================================
        % 滑块 / 数值框双向同步
        % ================================================================
        function onSliderChanging(app, evt, param)
            val = evt.Value;
            switch param
                case 'R',     app.LabelR.Value     = val;
                case 'A',     app.LabelA.Value     = val;
                case 'N',     app.LabelN.Value     = val;
                case 'D',     app.LabelD.Value     = val;
                case 'Phi',   app.LabelPhi.Value   = val;
                case 'Theta', app.LabelTheta.Value = val;
            end
            app.updatePlot();
        end

        function onEditChanged(app, src, param)
            val = src.Value;
            switch param
                case 'R',     app.SliderR.Value     = val;
                case 'A',     app.SliderA.Value     = val;
                case 'N',     app.SliderN.Value     = val;
                case 'D',     app.SliderD.Value     = val;
                case 'Phi',   app.SliderPhi.Value   = val;
                case 'Theta', app.SliderTheta.Value = val;
            end
            app.updatePlot();
        end

        % ================================================================
        % 核心：透过率计算 + 数值实测 + 标注 + 显示
        % ================================================================
        function updatePlot(app)
            r     = app.SliderR.Value;
            A     = app.SliderA.Value;
            n     = app.SliderN.Value;
            d     = app.SliderD.Value;
            phi   = app.SliderPhi.Value;
            theta = app.SliderTheta.Value * pi / 180;

            xmin = app.EditXMin.Value;
            xmax = app.EditXMax.Value;
            if xmin >= xmax, return; end

            lambda = linspace(xmin, xmax, 5000);

            % ----- F-P 透过率（向量化） -----
            % 物理约束：单程透射 T_m = 1 - r - A >= 0
            if A > 1 - r
                T = zeros(size(lambda));
                app.WarnText.Visible = 'on';
                % 所有标签置 --（此参数组合无物理意义）
                na = '$\textrm{--}$';
                app.LabelFintTh.Text = na; app.LabelFSRTh.Text = na; app.LabelFWHMTh.Text = na;
                app.LabelFintMs.Text = na; app.LabelFSRMs.Text = na; app.LabelFWHMMs.Text = na;
            else
                app.WarnText.Visible = 'off';
                prefactor = (1 - A / (1 - r))^2;
                airyF     = 4 * r / (1 - r)^2;
                delta     = 2 * pi ./ lambda .* n .* d .* cos(theta) - phi;
                T         = prefactor ./ (1 + airyF .* sin(delta).^2);
            end

            app.LiveLine.UserData = T;
            app.LiveLine.XData    = lambda;

            % ----- dB / 线性显示切换 -----
            if app.BtnDb.Value
                Tdb = 10 * log10(max(T, 1e-12));
                app.LiveLine.YData = Tdb;
                ylabel(app.Ax, '$T\ \mathrm{(dB)}$', 'Interpreter', 'latex', 'FontSize', 16);
                ylim(app.Ax, [max(min(Tdb) - 5, -80), 1]);
            else
                app.LiveLine.YData = T;
                ylabel(app.Ax, '$T$', 'Interpreter', 'latex', 'FontSize', 16);
                ylim(app.Ax, [0, 1]);
            end
            xlim(app.Ax, [xmin, xmax]);

            % HeldLine 同步显示格式
            if strcmp(app.HeldLine.Visible, 'on') && ~isempty(app.HeldLine.UserData)
                hRaw = app.HeldLine.UserData;
                if app.BtnDb.Value
                    app.HeldLine.YData = 10 * log10(max(hRaw, 1e-12));
                else
                    app.HeldLine.YData = hRaw;
                end
            end

            % A > 1-r 时标签已置 --，跳过特征值计算
            if A > 1 - r
                app.updateAnnotations([], [], NaN, NaN, []);
                return;
            end

            % ----- 理论精细度（与峰无关，先算） -----
            finesse_th = pi * sqrt(r) / (1 - r);

            % ----- 数值实测：先找峰，再以参考峰位λ_ref统一计算理论值 -----
            [pkLambda, pkT, FSR_loc, ~, FWHM_meas, ~, idxRef] = app.measurePeaks(lambda, T);

            % 以参考峰位为基准计算理论 FSR/FWHM（与实测对同一位置比较）
            % 若未检到峰，回退到窗口中心 λ0
            if ~isempty(pkLambda) && ~isempty(idxRef)
                lambda_ref = pkLambda(idxRef);
            else
                lambda_ref = (xmin + xmax) / 2;
            end
            FSR_th  = lambda_ref^2 / (2 * n * d * cos(theta));
            FWHM_th = FSR_th / finesse_th;

            app.LastFinesseTh = finesse_th;
            app.LastFSRTh     = FSR_th;
            app.LastFWHMTh    = FWHM_th;

            app.LabelFintTh.Text  = sprintf('$\\mathcal{F} = %.1f$', finesse_th);
            app.LabelFSRTh.Text   = sprintf('$\\mathrm{FSR}_\\mathrm{loc} = %.2f\\ \\mathrm{nm}$', FSR_th);
            app.LabelFWHMTh.Text  = sprintf('$\\mathrm{FWHM} = %.3f\\ \\mathrm{nm}$', FWHM_th);

            % 精细度实测：参考峰连续FSR / 实测FWHM（避免离散间距的m/(m+1)系统偏差）
            if ~isnan(FWHM_meas) && FWHM_meas > 0
                F_meas = FSR_th / FWHM_meas;   % FSR_th 已在 λ_ref 处
            else
                F_meas = NaN;
            end

            app.LastFinesseMs = F_meas;
            app.LastFSRMs     = FSR_loc;
            app.LastFWHMMs    = FWHM_meas;

            if isnan(F_meas)
                app.LabelFintMs.Text = '$\mathcal{F} = \textrm{--}$';
            else
                app.LabelFintMs.Text = sprintf('$\\mathcal{F} = %.1f$', F_meas);
            end
            % FSR 实测：显示参考峰处的局部 FSR（与理论局部 FSR 直接可比）
            if isnan(FSR_loc)
                app.LabelFSRMs.Text = '$\mathrm{FSR}_\mathrm{loc} = \textrm{--}$';
            else
                app.LabelFSRMs.Text = sprintf('$\\mathrm{FSR}_\\mathrm{loc} = %.2f\\ \\mathrm{nm}$', FSR_loc);
            end
            if isnan(FWHM_meas)
                app.LabelFWHMMs.Text = '$\mathrm{FWHM} = \textrm{--}$';
            else
                app.LabelFWHMMs.Text = sprintf('$\\mathrm{FWHM} = %.3f\\ \\mathrm{nm}$', FWHM_meas);
            end

            % ----- 谱线标注层 -----
            app.updateAnnotations(pkLambda, pkT, FSR_loc, FWHM_meas, idxRef);
        end

        % ================================================================
        % 数值实测：findpeaks 检峰 + 半高宽 + 相邻峰间距
        % 取最靠近中心波长 λ0 的峰作为参考峰，FWHM/FSR 均做局部测量，
        % 与理论值（公式在 λ0 处的局部线性化）对齐，避免 λ² 色散造成
        % 全局平均与 λ0 局部值不可比的问题。
        % 同时返回参考峰索引 idxRef 供标注层使用。
        % ================================================================
        function [pkLambda, pkT, FSR_loc, FSR_avg, FWHM_meas, F_meas, idxRef] = measurePeaks(~, lambda, T)
            pkLambda  = [];
            pkT       = [];
            FSR_loc   = NaN;     % 局部 FSR：参考峰与相邻峰间距
            FSR_avg   = NaN;     % 平均 FSR：全谱所有相邻峰间距的均值
            FWHM_meas = NaN;
            F_meas    = NaN;
            idxRef    = [];

            if max(T) < 1e-3
                return;       % 物理违约（T 全 0）时不做实测
            end

            % findpeaks 直接给出峰位、峰值、半高全宽
            try
                [pks, locs, widths, ~] = findpeaks(T, lambda, ...
                    'MinPeakProminence', 0.02 * max(T), ...
                    'WidthReference', 'halfheight');
            catch
                return;
            end

            if isempty(pks)
                return;
            end

            pkLambda = locs(:)';
            pkT      = pks(:)';

            % 参考峰：最靠近中心波长 λ0 的峰
            lambda0 = (lambda(1) + lambda(end)) / 2;
            [~, idxRef] = min(abs(pkLambda - lambda0));

            % 实测 FWHM：参考峰处的半高宽
            FWHM_meas = widths(idxRef);

            % 局部 FSR / 平均 FSR
            if numel(locs) >= 2
                FSR_avg = mean(diff(locs));
                if idxRef < numel(locs)
                    FSR_loc = pkLambda(idxRef + 1) - pkLambda(idxRef);
                else
                    FSR_loc = pkLambda(idxRef) - pkLambda(idxRef - 1);
                end
            end

            % 实测精细度：局部 FSR / FWHM
            if ~isnan(FSR_loc) && ~isnan(FWHM_meas) && FWHM_meas > 0
                F_meas = FSR_loc / FWHM_meas;
            end
        end

        % ================================================================
        % 标注层更新：峰位三角 + FWHM 半高线 + FSR 双向箭头
        % ================================================================
        function updateAnnotations(app, pkLambda, pkT, FSR_meas, FWHM_meas, idxRef)
            on = app.BtnAnnotate.Value && ~isempty(pkLambda);
            if ~on
                app.PeakMarkers.Visible = 'off';
                app.FWHMLine.Visible    = 'off';
                app.FSRArrow1.Visible   = 'off';
                app.FSRArrowL.Visible   = 'off';
                app.FSRArrowR.Visible   = 'off';
                app.FSRText.Visible     = 'off';
                app.FWHMText.Visible    = 'off';
                return;
            end

            % 决定显示坐标（dB 模式则把峰高转 dB）
            if app.BtnDb.Value
                yPk = 10 * log10(max(pkT, 1e-12));
            else
                yPk = pkT;
            end

            % 峰位三角（略高于峰值）
            yLim = ylim(app.Ax);
            yOff = 0.04 * (yLim(2) - yLim(1));
            app.PeakMarkers.XData   = pkLambda;
            app.PeakMarkers.YData   = yPk + yOff;
            app.PeakMarkers.Visible = 'on';
            % 若标记超出 ylim 上界，自动扩展
            maxMarkerY = max(yPk + yOff);
            if maxMarkerY > yLim(2)
                ylim(app.Ax, [yLim(1), maxMarkerY + 0.02*(yLim(2)-yLim(1))]);
                yLim = ylim(app.Ax);
            end

            % 以参考峰（最靠近 λ0 的峰）作为 FWHM/FSR 演示对象
            if isempty(idxRef) || idxRef < 1 || idxRef > numel(pkLambda)
                [~, idxRef] = max(pkT);   % 退化保护
            end
            lamPk = pkLambda(idxRef);
            Tpk   = pkT(idxRef);

            % FWHM 半高水平线
            if ~isnan(FWHM_meas) && FWHM_meas > 0
                halfT_lin = Tpk / 2;                              % 线性半高
                if app.BtnDb.Value
                    yHalf = 10 * log10(max(halfT_lin, 1e-12));
                else
                    yHalf = halfT_lin;
                end
                xL = lamPk - FWHM_meas/2;
                xR = lamPk + FWHM_meas/2;
                app.FWHMLine.XData   = [xL, xR];
                app.FWHMLine.YData   = [yHalf, yHalf];
                app.FWHMLine.Visible = 'on';

                app.FWHMText.Position = [xR + 0.01*(yLim(2)-yLim(1)), yHalf, 0];
                app.FWHMText.String   = sprintf('FWHM=%.2f\\,nm', FWHM_meas);
                app.FWHMText.Visible  = 'on';
            else
                app.FWHMLine.Visible = 'off';
                app.FWHMText.Visible = 'off';
            end

            % FSR 双向箭头：用参考峰与其相邻峰演示
            if ~isnan(FSR_meas) && numel(pkLambda) >= 2
                % 找紧邻参考峰的下一峰
                if idxRef < numel(pkLambda)
                    j = idxRef + 1;
                else
                    j = idxRef - 1;
                end
                x1 = min(pkLambda(idxRef), pkLambda(j));
                x2 = max(pkLambda(idxRef), pkLambda(j));

                yFSR = yLim(1) + 0.85 * (yLim(2) - yLim(1));      % 上方 85% 处
                tick = 0.025 * (yLim(2) - yLim(1));               % 端短线高度

                app.FSRArrow1.XData = [x1, x2];
                app.FSRArrow1.YData = [yFSR, yFSR];
                app.FSRArrowL.XData = [x1, x1];
                app.FSRArrowL.YData = [yFSR - tick, yFSR + tick];
                app.FSRArrowR.XData = [x2, x2];
                app.FSRArrowR.YData = [yFSR - tick, yFSR + tick];
                app.FSRArrow1.Visible = 'on';
                app.FSRArrowL.Visible = 'on';
                app.FSRArrowR.Visible = 'on';

                app.FSRText.Position = [(x1+x2)/2, yFSR + tick, 0];
                app.FSRText.String   = sprintf('FSR=%.1f\\,nm', FSR_meas);
                app.FSRText.Visible  = 'on';
            else
                app.FSRArrow1.Visible = 'off';
                app.FSRArrowL.Visible = 'off';
                app.FSRArrowR.Visible = 'off';
                app.FSRText.Visible   = 'off';
            end
        end

        % ================================================================
        % 预设场景
        % ================================================================
        function onPresetChanged(app, src)
            switch src.Value
                case '默认 (r=0.9)'
                    app.applyPreset(0.90, 0.00, 1.50, 800, 0, 0);
                case '高精细度 (r=0.97)'
                    app.applyPreset(0.97, 0.00, 1.50, 800, 0, 0);
                case '有损耗 (A=0.04)'
                    app.applyPreset(0.90, 0.04, 1.50, 800, 0, 0);
                case '倾斜入射 (θ=60°)'
                    app.applyPreset(0.90, 0.00, 1.50, 800, 0, 60);
                case '短腔 (d=400 nm)'
                    app.applyPreset(0.90, 0.00, 1.50, 400, 0, 0);
            end
        end

        function applyPreset(app, r, A, n, d, phi, theta)
            app.SliderR.Value     = r;     app.LabelR.Value     = r;
            app.SliderA.Value     = A;     app.LabelA.Value     = A;
            app.SliderN.Value     = n;     app.LabelN.Value     = n;
            app.SliderD.Value     = d;     app.LabelD.Value     = d;
            app.SliderPhi.Value   = phi;   app.LabelPhi.Value   = phi;
            app.SliderTheta.Value = theta; app.LabelTheta.Value = theta;
            app.updatePlot();
        end

        % ================================================================
        % Reset / Hold / 导出
        % ================================================================
        function onReset(app)
            app.applyPreset(app.DEFAULT_R, app.DEFAULT_A, app.DEFAULT_N, ...
                app.DEFAULT_D, app.DEFAULT_PHI, app.DEFAULT_THETA);

            app.EditXMin.Value = app.DEFAULT_XMIN;
            app.EditXMax.Value = app.DEFAULT_XMAX;

            app.BtnHold.Value    = false;
            app.BtnHold.Text     = 'Hold on';
            app.HeldLine.Visible = 'off';
            app.LiveLine.Color   = [0.20, 0.40, 0.85];

            app.BtnDb.Value       = false;
            app.BtnAnnotate.Value = false;
            app.DropPreset.Value  = '默认 (r=0.9)';

            ylabel(app.Ax, '$T$', 'Interpreter', 'latex', 'FontSize', 16);
            ylim(app.Ax, [0, 1]);

            app.updatePlot();
        end

        function onHoldToggle(app, evt)
            if evt.Value
                app.BtnHold.Text      = 'Release';
                raw = app.LiveLine.UserData;
                app.HeldLine.UserData = raw;
                app.HeldLine.XData    = app.LiveLine.XData;
                app.HeldLine.YData    = app.LiveLine.YData;
                app.HeldLine.Visible  = 'on';
                app.LiveLine.Color    = [0.85, 0.20, 0.20];
                app.HeldLine.Color    = [0.55, 0.55, 0.55];
            else
                app.BtnHold.Text     = 'Hold on';
                app.HeldLine.Visible = 'off';
                app.LiveLine.Color   = [0.20, 0.40, 0.85];
            end
        end

        function onExportPNG(app)
            [fn, fp] = uiputfile('*.png', '保存 PNG', 'FP_spectrum.png');
            if fn ~= 0
                exportgraphics(app.Ax, fullfile(fp, fn), 'Resolution', 150);
            end
        end

        function onExportCSV(app)
            [fn, fp] = uiputfile('*.csv', '保存 CSV', 'FP_spectrum.csv');
            if fn == 0, return; end

            lambda = app.LiveLine.XData(:);
            T_lin  = app.LiveLine.UserData(:);
            if numel(lambda) ~= numel(T_lin) || isempty(lambda)
                uialert(app.Fig, '当前曲线为空，无法导出。', '导出失败');
                return;
            end

            fid = fopen(fullfile(fp, fn), 'w', 'n', 'UTF-8');
            if fid < 0
                uialert(app.Fig, '无法写入文件。', '导出失败');
                return;
            end
            % 元数据头（被 # 注释，常见数据分析工具均可跳过）
            fprintf(fid, '# F-P Cavity Transmittance Spectrum\n');
            fprintf(fid, '# r=%.4f, A=%.4f, n=%.4f, d=%.2f nm, phi=%.4f, theta=%.2f deg\n', ...
                app.SliderR.Value, app.SliderA.Value, app.SliderN.Value, ...
                app.SliderD.Value, app.SliderPhi.Value, app.SliderTheta.Value);
            fprintf(fid, '# Theoretical: F=%.3f, FSR=%.4f nm, FWHM=%.5f nm\n', ...
                app.LastFinesseTh, app.LastFSRTh, app.LastFWHMTh);
            fprintf(fid, '# Measured  : F=%.3f, FSR=%.4f nm, FWHM=%.5f nm\n', ...
                app.LastFinesseMs, app.LastFSRMs, app.LastFWHMMs);
            fprintf(fid, 'lambda_nm,T\n');
            fprintf(fid, '%.6f,%.8f\n', [lambda, T_lin]');
            fclose(fid);
        end
    end
end
