% gen_fig_extra.m  —  生成腔长与吸收损耗对比图

outDir = fullfile(fileparts(mfilename('fullpath')), '..', '实验报告', 'figures');
lambda = linspace(300, 1200, 8000);

function T = fp(lambda, r, n, d, theta_deg, A, phi)
    prefactor = (1 - A / (1 - r))^2;
    F  = 4 * r / (1 - r)^2;
    delta = 2 * pi ./ lambda .* n .* d .* cos(theta_deg * pi/180) - phi;
    T = prefactor ./ (1 + F .* sin(delta).^2);
end

%% 图A：腔长 d 对 FSR 的影响（d=800 vs d=400）
T_d800 = fp(lambda, 0.90, 1.50, 800, 0, 0, 0);
T_d400 = fp(lambda, 0.90, 1.50, 400, 0, 0, 0);

fig = figure('Color', [0.97 0.97 0.97], 'Position', [100 100 900 480]);
ax  = axes(fig);
hold(ax, 'on');
plot(ax, lambda, T_d800, '--', 'Color', [0.55 0.55 0.55], 'LineWidth', 1.8, ...
    'DisplayName', '$d = 800\,\mathrm{nm}\ (\mathrm{FSR}\approx234\,\mathrm{nm})$');
plot(ax, lambda, T_d400, '-',  'Color', [0.20 0.40 0.85], 'LineWidth', 2.0, ...
    'DisplayName', '$d = 400\,\mathrm{nm}\ (\mathrm{FSR}\approx469\,\mathrm{nm})$');
xlim(ax,[300,1200]); ylim(ax,[0,1]);
xlabel(ax,'$\lambda\ \mathrm{(nm)}$','Interpreter','latex','FontSize',15);
ylabel(ax,'$T$','Interpreter','latex','FontSize',15);
title(ax,'F-P 谐振腔透过率谱线','FontSize',16,'FontWeight','bold','FontName','楷体');
ax.XGrid='on'; ax.YGrid='on'; ax.GridAlpha=0.12; ax.Box='on'; ax.FontSize=12;
lg = legend(ax,'Interpreter','latex','FontSize',13,'Location','northeast');
lg.Box='off';
exportgraphics(fig, fullfile(outDir,'gui_cavity.png'), 'Resolution', 150);
fprintf('已保存 gui_cavity.png\n'); close(fig);

%% 图B：吸收损耗 A 对峰值的影响（A=0 vs A=0.04）
% T_max = (1 - A/(1-r))^2，当 r=0.9, A=0.04 时 T_max=(1-0.4)^2=0.36
T_A0   = fp(lambda, 0.90, 1.50, 800, 0, 0.00, 0);
T_A004 = fp(lambda, 0.90, 1.50, 800, 0, 0.04, 0);

fig = figure('Color', [0.97 0.97 0.97], 'Position', [100 100 900 480]);
ax  = axes(fig);
hold(ax, 'on');
plot(ax, lambda, T_A0,   '--', 'Color', [0.55 0.55 0.55], 'LineWidth', 1.8, ...
    'DisplayName', '$A = 0\quad\ (T_{\max} = 100\%)$');
plot(ax, lambda, T_A004, '-',  'Color', [0.20 0.40 0.85], 'LineWidth', 2.0, ...
    'DisplayName', '$A = 0.04\ (T_{\max} = 36\%)$');
xlim(ax,[300,1200]); ylim(ax,[0,1]);
xlabel(ax,'$\lambda\ \mathrm{(nm)}$','Interpreter','latex','FontSize',15);
ylabel(ax,'$T$','Interpreter','latex','FontSize',15);
title(ax,'F-P 谐振腔透过率谱线','FontSize',16,'FontWeight','bold','FontName','楷体');
ax.XGrid='on'; ax.YGrid='on'; ax.GridAlpha=0.12; ax.Box='on'; ax.FontSize=12;
lg = legend(ax,'Interpreter','latex','FontSize',13,'Location','northeast');
lg.Box='off';
exportgraphics(fig, fullfile(outDir,'gui_absorption.png'), 'Resolution', 150);
fprintf('已保存 gui_absorption.png\n'); close(fig);
