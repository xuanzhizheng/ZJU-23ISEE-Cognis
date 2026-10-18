% gen_tables.m  ——  计算实验报告每节实验对应的"主峰 / 平均 FSR / 局部 FSR /
% FWHM / 数值精细度 / 理论精细度 / 最大透射率"七列数据。
% 输出至 Code/tables_data.txt 供 LaTeX 表格直接复制。
%
% 关于"平均 FSR"与"局部 FSR"：
%   平均 FSR  = mean(diff(locs))                   全谱平均峰间距
%   局部 FSR  = locs(idxRef+1) - locs(idxRef)      参考峰（最靠近 λ0 者）的相邻峰间距
% 两者在波长跨度较大时差异显著（FSR ∝ λ²），数值精细度 = 局部 FSR / FWHM。

lambda = linspace(300, 1200, 5000);

% 每个实验给出"基准 + 对照"两行（与报告 4 个实验一致）
groups = struct();
groups(1).title = '反射率对峰形的影响';
groups(1).rows  = {
    '$r = 0.90$ (基准)', 0.90, 0.00, 1.50, 800,  0;
    '$r = 0.97$',       0.97, 0.00, 1.50, 800,  0;
};
groups(2).title = '入射角引起的蓝移';
groups(2).rows  = {
    '$\theta = 0^{\circ}$ (基准)',  0.90, 0.00, 1.50, 800,  0;
    '$\theta = 60^{\circ}$',        0.90, 0.00, 1.50, 800, 60;
};
groups(3).title = '腔长对自由光谱范围的影响';
groups(3).rows  = {
    '$d = 800$\,nm (基准)', 0.90, 0.00, 1.50, 800, 0;
    '$d = 400$\,nm',        0.90, 0.00, 1.50, 400, 0;
};
groups(4).title = '吸收损耗对峰值透过率的影响';
groups(4).rows  = {
    '$A = 0$ (基准)', 0.90, 0.00, 1.50, 800, 0;
    '$A = 0.04$',     0.90, 0.04, 1.50, 800, 0;
};

outFile = fullfile(fileparts(mfilename('fullpath')), 'tables_data.txt');
fid = fopen(outFile, 'w', 'n', 'UTF-8');
fprintf(fid, '%% 由 gen_tables.m 自动生成 —— 直接复制到 main.tex 各 \\subsection 内\n\n');

for g = 1:numel(groups)
    fprintf(fid, '%% ===== %s =====\n', groups(g).title);
    fprintf(fid, '\\begin{table}[H]\n  \\centering\n');
    fprintf(fid, '  \\caption{%s——数值仿真特征值}\n', groups(g).title);
    fprintf(fid, '  \\label{tab:exp%d}\n', g);
    fprintf(fid, '  \\footnotesize\n');
    fprintf(fid, '  \\begin{tabular}{l c c c c c c c}\n');
    fprintf(fid, '    \\toprule\n');
    fprintf(fid, '    参数组 & 主峰/nm & 平均\\,FSR/nm & 局部\\,FSR/nm & FWHM/nm & 数值\\,$\\mathcal{F}$ & 理论\\,$\\mathcal{F}$ & $T_{\\max}$ \\\\\n');
    fprintf(fid, '    \\midrule\n');

    rows = groups(g).rows;
    for i = 1:size(rows,1)
        name = rows{i,1};
        r=rows{i,2}; A=rows{i,3}; n=rows{i,4}; d=rows{i,5}; th=rows{i,6}*pi/180;

        if A > 1-r
            T = zeros(size(lambda));
        else
            pf = (1 - A/(1-r))^2;
            airyF = 4*r/(1-r)^2;
            delta = 2*pi./lambda .* n .* d .* cos(th);
            T = pf ./ (1 + airyF .* sin(delta).^2);
        end

        Fth = pi*sqrt(r)/(1-r);
        Tmax = max(T);

        if Tmax < 1e-3
            fprintf(fid, '    %s & -- & -- & -- & -- & -- & %.2f & %.2f \\\\\n', name, Fth, Tmax);
            continue;
        end

        [pks, locs, widths, ~] = findpeaks(T, lambda, ...
            'MinPeakProminence', 0.02*Tmax, ...
            'WidthReference', 'halfheight');

        if isempty(pks)
            fprintf(fid, '    %s & -- & -- & -- & -- & -- & %.2f & %.2f \\\\\n', name, Fth, Tmax);
            continue;
        end

        lambda0 = (lambda(1)+lambda(end))/2;
        [~, idxRef] = min(abs(locs - lambda0));
        mainPk = locs(idxRef);
        FWHMms = widths(idxRef);

        if numel(locs) >= 2
            FSR_avg = mean(diff(locs));
            if idxRef < numel(locs)
                FSR_loc = locs(idxRef+1) - locs(idxRef);
            else
                FSR_loc = locs(idxRef) - locs(idxRef-1);
            end
        else
            FSR_avg = NaN; FSR_loc = NaN;
        end

        if ~isnan(FSR_loc) && FWHMms > 0
            Fms = FSR_loc / FWHMms;
        else
            Fms = NaN;
        end

        fprintf(fid, '    %s & %.2f & %.2f & %.2f & %.3f & %.2f & %.2f & %.2f \\\\\n', ...
            name, mainPk, FSR_avg, FSR_loc, FWHMms, Fms, Fth, Tmax);
    end

    fprintf(fid, '    \\bottomrule\n  \\end{tabular}\n\\end{table}\n\n');
end

fclose(fid);
fprintf('表格数据已写入：%s\n', outFile);
type(outFile);
