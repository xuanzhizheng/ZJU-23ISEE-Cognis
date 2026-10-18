% gen_fig3.m  —  生成 Figure 3：Hold on 对比 r=0.90 与 r=0.97
% 运行后自动保存 gui_high_r.png 到 ../实验报告/figures/

lambda = linspace(300, 1200, 8000);
n = 1.50; d = 800; theta = 0; A = 0; phi = 0;

function T = fp(lambda, r, n, d, theta, A, phi)
    prefactor = (1 - A/(1-r))^2;
    F = 4*r/(1-r)^2;
    delta = 2*pi ./ lambda .* n .* d .* cos(theta*pi/180) - phi;
    T = prefactor ./ (1 + F .* sin(delta).^2);
end

T09  = fp(lambda, 0.90, n, d, theta, A, phi);
T097 = fp(lambda, 0.97, n, d, theta, A, phi);

fig = figure('Color', [0.97 0.97 0.97], 'Position', [100 100 900 480]);
ax  = axes(fig);
hold(ax, 'on');

plot(ax, lambda, T09,  '--', 'Color', [0.55 0.55 0.55], 'LineWidth', 1.8, ...
    'DisplayName', '$r = 0.90\ (\mathcal{F}=29.8)$');
plot(ax, lambda, T097, '-',  'Color', [0.20 0.40 0.85], 'LineWidth', 2.0, ...
    'DisplayName', '$r = 0.97\ (\mathcal{F}=103)$');

xlim(ax, [300, 1200]);
ylim(ax, [0, 1]);
xlabel(ax, '$\lambda\ \mathrm{(nm)}$', 'Interpreter', 'latex', 'FontSize', 15);
ylabel(ax, '$T$',                       'Interpreter', 'latex', 'FontSize', 15);
title(ax,  'F-P 谐振腔透过率谱线', 'FontSize', 16, 'FontWeight', 'bold', 'FontName', '楷体');
ax.XGrid = 'on'; ax.YGrid = 'on'; ax.GridAlpha = 0.12;
ax.Box = 'on'; ax.FontSize = 12;

lg = legend(ax, 'Interpreter', 'latex', 'FontSize', 13, 'Location', 'northeast');
lg.Box = 'off';

out = fullfile(fileparts(mfilename('fullpath')), ...
    '..', '实验报告', 'figures', 'gui_high_r.png');
exportgraphics(fig, out, 'Resolution', 150);
fprintf('已保存：%s\n', out);
close(fig);
