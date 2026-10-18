% gen_fig_holdon.m  —  重新生成 gui_holdon.png（纯绘图，无 GUI 截图）

outDir = fullfile(fileparts(mfilename('fullpath')), '..', '实验报告', 'figures');
lambda = linspace(300, 1200, 8000);

function T = fp(lambda, r, n, d, theta_deg, A, phi)
    prefactor = (1 - A / (1 - r))^2;
    F  = 4 * r / (1 - r)^2;
    delta = 2 * pi ./ lambda .* n .* d .* cos(theta_deg * pi/180) - phi;
    T = prefactor ./ (1 + F .* sin(delta).^2);
end

T_0  = fp(lambda, 0.90, 1.50, 800,  0, 0, 0);
T_60 = fp(lambda, 0.90, 1.50, 800, 60, 0, 0);

fig = figure('Color', [0.97 0.97 0.97], 'Position', [100 100 900 480]);
ax  = axes(fig);
hold(ax, 'on');
plot(ax, lambda, T_0,  '--', 'Color', [0.55 0.55 0.55], 'LineWidth', 1.8, ...
    'DisplayName', '$\theta = 0^{\circ}$');
plot(ax, lambda, T_60, '-',  'Color', [0.20 0.40 0.85], 'LineWidth', 2.0, ...
    'DisplayName', '$\theta = 60^{\circ}$');
xlim(ax,[300,1200]); ylim(ax,[0,1]);
xlabel(ax,'$\lambda\ \mathrm{(nm)}$','Interpreter','latex','FontSize',15);
ylabel(ax,'$T$','Interpreter','latex','FontSize',15);
title(ax,'F-P 谐振腔透过率谱线','FontSize',16,'FontWeight','bold','FontName','楷体');
ax.XGrid='on'; ax.YGrid='on'; ax.GridAlpha=0.12; ax.Box='on'; ax.FontSize=12;
lg = legend(ax,'Interpreter','latex','FontSize',13,'Location','northeast');
lg.Box='off';
exportgraphics(fig, fullfile(outDir,'gui_holdon.png'), 'Resolution', 150);
fprintf('已保存 gui_holdon.png\n'); close(fig);
