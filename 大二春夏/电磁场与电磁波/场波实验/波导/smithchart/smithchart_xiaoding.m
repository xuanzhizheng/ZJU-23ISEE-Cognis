function plot_matching_process_updated()
Z_L_val = 0.672 - 0.570j;
d_val = 6.8481;
lambda_g_val = 4.520;

beta_d_val = 2 * pi * d_val / lambda_g_val;
Y_L_val = 1 / Z_L_val;

t_beta_d = tan(beta_d_val);
Y_d_val = (Y_L_val + 1j*t_beta_d) / (1 + 1j*Y_L_val*t_beta_d);

B_stub_val = -imag(Y_d_val);

if B_stub_val == 0
    X_stub_val = Inf;
else
    X_stub_val = 1/B_stub_val;
end

Y_final_val = Y_d_val + 1j*B_stub_val;

figure('Position', [100, 100, 800, 800], 'Color', 'white');
hold on;
axis equal;
axis([-1.2 1.2 -1.2 1.2]);
axis off;

draw_basic_smith_chart();

Gamma_Y_L_val = (1 - Y_L_val) / (1 + Y_L_val);
Gamma_Y_d_val = (1 - Y_d_val) / (1 + Y_d_val);
Gamma_Y_final_val = (1 - Y_final_val) / (1 + Y_final_val);

plot(real(Gamma_Y_L_val), imag(Gamma_Y_L_val), 'ro', 'MarkerSize', 10, 'LineWidth', 2, 'MarkerFaceColor', 'r');
plot(real(Gamma_Y_d_val), imag(Gamma_Y_d_val), 'bo', 'MarkerSize', 10, 'LineWidth', 2, 'MarkerFaceColor', 'b');
plot(real(Gamma_Y_final_val), imag(Gamma_Y_final_val), 'ko', 'MarkerSize', 8, 'MarkerFaceColor', 'k');

draw_arc(Gamma_Y_L_val, Gamma_Y_d_val, 'b');
draw_arc(Gamma_Y_d_val, Gamma_Y_final_val, 'g');

text(real(Gamma_Y_L_val) + 0.03, imag(Gamma_Y_L_val) -0.06 , sprintf('A: Y_L=%.3f%+.3fj', real(Y_L_val), imag(Y_L_val)), 'FontSize', 11, 'FontWeight', 'bold', 'Color', 'r', 'BackgroundColor', 'w', 'EdgeColor','k', 'Margin', 1);
text(real(Gamma_Y_d_val) + 0.03, imag(Gamma_Y_d_val) + 0.06, sprintf('B: Y_d=%.3f%+.3fj', real(Y_d_val), imag(Y_d_val)), 'FontSize', 11, 'FontWeight', 'bold', 'Color', 'b', 'BackgroundColor', 'w', 'EdgeColor','k', 'Margin', 1);
text(real(Gamma_Y_final_val) + 0.03, imag(Gamma_Y_final_val) - 0.06, sprintf('C: Y_{final}=%.3f%+.3fj', real(Y_final_val), imag(Y_final_val)), 'FontSize', 11, 'FontWeight', 'bold', 'Color', 'k', 'BackgroundColor', 'w', 'EdgeColor','k', 'Margin', 1);

title(sprintf('Smith圆图匹配分析 (d = %.2f cm, X_{stub} = %.2f)', d_val, X_stub_val), 'FontSize', 16, 'FontWeight', 'bold');
legend('A: 负载导纳 Y_L', 'B: 销钉位置导纳 Y_d', 'C: 最终导纳 Y_{final}', 'Location', 'southoutside', 'Orientation','horizontal');
hold off;
end

function draw_basic_smith_chart()
theta = linspace(0, 2*pi, 1000);
plot(cos(theta), sin(theta), 'k-', 'LineWidth', 1.5);
plot([-1, 1], [0, 0], 'k-', 'LineWidth', 1);

rValues = [0.2, 0.5, 1, 2, 5];
for r = rValues
    center = r/(r+1);
    radius = 1/(r+1);
    theta = linspace(0, 2*pi, 200);
    x = center + radius*cos(theta);
    y = radius*sin(theta);
    plot(x, y, 'k:', 'LineWidth', 0.5);
end

xValues = [-5, -2, -1, -0.5, 0.5, 1, 2, 5];
for x_val = xValues
    center_x = 1;
    center_y = 1/x_val;
    radius = abs(1/x_val);
    theta = linspace(0, 2*pi, 200);
    x_coords = center_x + radius*cos(theta);
    y_coords = center_y + radius*sin(theta);
    plot(x_coords, y_coords, 'k:', 'LineWidth', 0.5);
end

text(0.95, 0.05, '短路点', 'FontSize', 10);
text(-0.95, 0.05, '开路点', 'FontSize', 10);
end

function draw_arc(start_point, finish_point, color_val)
r_start = abs(start_point);
theta_start = angle(start_point);
r_finish = abs(finish_point);
theta_finish = angle(finish_point);

theta_arc = linspace(theta_start, theta_finish, 100);
r_arc = linspace(r_start, r_finish, 100);
x_arc = r_arc .* cos(theta_arc);
y_arc = r_arc .* sin(theta_arc);

plot(x_arc, y_arc, [color_val '-'], 'LineWidth', 2);

arrow_index = round(length(x_arc)*0.7);
quiver(x_arc(arrow_index), y_arc(arrow_index), x_arc(arrow_index+1)-x_arc(arrow_index), y_arc(arrow_index+1)-y_arc(arrow_index), 0, 'MaxHeadSize', 0.5, 'LineWidth', 1.5, 'Color', color_val);
end