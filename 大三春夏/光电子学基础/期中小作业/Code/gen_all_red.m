v% gen_all_red.m — 重新生成第五节全部对比图，实线改为红色 [0.85, 0.20, 0.20]

outDir = fullfile(fileparts(mfilename('fullpath')), '..', '实验报告', 'figures');
lambda = linspace(300, 1200, 8000);
redC  = [0.85, 0.20, 0.20];
grayC = [0.55, 0.55, 0.55];

function T = fp(lambda, r, n, d, theta_deg, A, phi)
    prefactor = (1 - A / (1 - r))^2;
    airyF = 4 * r / (1 - r)^2;
    delta = 2 * pi ./ lambda .* n .* d .* cos(theta_deg * pi/180) - phi;
    T = prefactor ./ (1 + airyF .* sin(delta).^2);
end

function fig = makeFig(lambda, T_dash, T_solid, label_dash, label_solid, outFile, redC, grayC)
    fig = figure('Color', [0.97 0.97 0.97], 'Position', [100 100 900 480]);
    ax  = axes(fig);
    hold(ax, 'on');
    plot(ax, lambda, T_dash,  '--', 'Color', grayC, 'LineWidth', 1.8, 'DisplayName', label_dash);
    plot(ax, lambda, T_solid, '-',  'Color', redC,  'LineWidth', 2.0, 'DisplayName', label_solid);
    xlim(ax,[300,1200]); ylim(ax,[0,1]);
    xlabel(ax,'$\lambda\ \mathrm{(nm)}$','Interpreter','latex','FontSize',15);
    ylabel(ax,'$T$','Interpreter','latex','FontSize',15);
    title(ax,'F-P 谐振腔透过率谱线','FontSize',16,'FontWeight','bold','FontName','楷体');
    ax.XGrid='on'; ax.YGrid='on'; ax.GridAlpha=0.12; ax.Box='on'; ax.FontSize=12;
    lg = legend(ax,'Interpreter','latex','FontSize',13,'Location','northeast');
    lg.Box='off';
    exportgraphics(fig, outFile, 'Resolution', 150);
    fprintf('已保存 %s\n', outFile); close(fig);
end

%% 图1：反射率 r（Figure 3）
makeFig(lambda, ...
    fp(lambda,0.90,1.50,800,0,0,0), fp(lambda,0.97,1.50,800,0,0,0), ...
    '$r = 0.90\ (\mathcal{F}=29.8)$', '$r = 0.97\ (\mathcal{F}=103)$', ...
    fullfile(outDir,'gui_high_r.png'), redC, grayC);

%% 图2：入射角 θ（Figure 4）
makeFig(lambda, ...
    fp(lambda,0.90,1.50,800, 0,0,0), fp(lambda,0.90,1.50,800,60,0,0), ...
    '$\theta = 0^{\circ}$', '$\theta = 60^{\circ}$', ...
    fullfile(outDir,'gui_holdon.png'), redC, grayC);

%% 图3：腔长 d（Figure 5）
makeFig(lambda, ...
    fp(lambda,0.90,1.50,800,0,0,0), fp(lambda,0.90,1.50,400,0,0,0), ...
    '$d = 800\,\mathrm{nm}\ (\mathrm{FSR}\approx234\,\mathrm{nm})$', ...
    '$d = 400\,\mathrm{nm}\ (\mathrm{FSR}\approx469\,\mathrm{nm})$', ...
    fullfile(outDir,'gui_cavity.png'), redC, grayC);

%% 图4：吸收损耗 A（Figure 6）
makeFig(lambda, ...
    fp(lambda,0.90,1.50,800,0,0.00,0), fp(lambda,0.90,1.50,800,0,0.04,0), ...
    '$A = 0\quad\ (T_{\max} = 100\%)$', '$A = 0.04\ (T_{\max} = 36\%)$', ...
    fullfile(outDir,'gui_absorption.png'), redC, grayC);
