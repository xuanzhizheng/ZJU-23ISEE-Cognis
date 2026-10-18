% 输入数据
input_current_mA = [4, 6, 8, 10, 12, 14, 16, 18, 20]; % 输入电流 (mA)
output_voltage_V = [-0.003, 1.246, 2.49, 3.74, 5, 6.25, 7.5, 8.75, 10]; % 输出电压 (V)

% 线性拟合
p = polyfit(input_current_mA, output_voltage_V, 1);
fitted_voltage_V = polyval(p, input_current_mA);

% 计算误差
error_mV = (output_voltage_V - fitted_voltage_V) * 1000; % 转换为mV

% 绘制电流-电压转换特性曲线
figure;

plot(input_current_mA, output_voltage_V, 'bo', 'DisplayName', '实测值');
hold on;
plot(input_current_mA, fitted_voltage_V, 'r--', 'DisplayName', sprintf('拟合曲线: V = %.3fI + %.2f', p(1), p(2)));
title('电流-电压转换特性曲线', 'Interpreter', 'none');
xlabel('输入电流 (mA)', 'Interpreter', 'none');
ylabel('输出电压 (V)', 'Interpreter', 'none');
legend('Location', 'best');
grid on;

% 显示拟合曲线公式和相关系数
% 计算相关系数矩阵并提取R^2值
correlation_matrix = corrcoef(input_current_mA, output_voltage_V);
r_squared = correlation_matrix(1, 2)^2;

% 显示拟合曲线公式和相关系数
text(4, 9, sprintf('R^2 = %.6f', r_squared), 'VerticalAlignment', 'bottom');
% 绘制误差分布分析图
figure;
errorbar(input_current_mA, zeros(size(input_current_mA)), error_mV, 'o');
title('误差分布分析', 'Interpreter', 'none');
xlabel('输入电流 (mA)', 'Interpreter', 'none');
ylabel('误差 (mV)', 'Interpreter', 'none');
grid on;
xlim([min(input_current_mA) - 1, max(input_current_mA) + 1]);
ylim([-10, 10]);

% 添加零误差线
hold on;
plot([min(input_current_mA) - 1, max(input_current_mA) + 1], [0, 0], 'r--');