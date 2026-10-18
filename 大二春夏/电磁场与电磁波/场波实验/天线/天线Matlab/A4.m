try
    data_task4 = readmatrix('3.polar.csv');
catch ME
    disp('Error reading the CSV file. Make sure ''3.polar.csv'' is in the MATLAB path or current directory.');
    disp(['Error message: ', ME.message]);
    return;
end

if isempty(data_task4) || size(data_task4, 2) < 2
    disp('Data could not be read properly or does not contain enough columns.');
    return;
end

polarization_angle_deg = data_task4(:, 3);
received_signal = data_task4(:, 4);

if max(received_signal) > 0 && isreal(max(received_signal))
    normalized_power = received_signal / max(received_signal);
    disp('Note: ''normalized_power'' has been calculated as ''received_signal / max(received_signal)''.');
elseif all(received_signal == 0)
    normalized_power = received_signal;
    disp('Warning: All values in ''received_signal'' are zero. ''normalized_power'' will also be all zeros.');
else
    normalized_power = received_signal;
    disp('Warning: Could not normalize ''received_signal'' by its maximum (max is zero, negative, or complex). Using ''received_signal'' as is for ''normalized_power''.');
end

polarization_angle_deg = polarization_angle_deg(:);
normalized_power = normalized_power(:);

polarization_angle_rad = deg2rad(polarization_angle_deg);

figure;
plot(polarization_angle_deg, normalized_power, 'bo-', 'LineWidth', 1.5, 'MarkerFaceColor', 'b', 'DisplayName', '实验数据');
title('归一化接收幅度 vs. 发射天线极化角度', 'FontSize', 14);
xlabel('极化角度 \theta (度)', 'FontSize', 12);
ylabel('归一化接收幅度', 'FontSize', 12);
grid on;
hold on;

cos_squared_theta_ref = cos(polarization_angle_rad).^2;
plot(polarization_angle_deg, cos_squared_theta_ref, 'r--', 'LineWidth', 2, 'DisplayName', '参考: cos^2(\theta)');

valid_indices = ~isnan(polarization_angle_rad) & ~isinf(polarization_angle_rad) & ...
                ~isnan(normalized_power) & ~isinf(normalized_power);

angle_rad_fit = polarization_angle_rad(valid_indices);
power_fit = normalized_power(valid_indices);
angle_deg_for_plot_range = polarization_angle_deg(valid_indices);

if isempty(angle_rad_fit)
    disp('No valid data points remaining after cleaning for fitting. Check your data.');
    hold off;
    return;
end

ft_cos = fittype('A * cos(x)', ...
                 'independent', 'x', ...
                 'dependent', 'y', ...
                 'coefficients', 'A');

ft_cos_sq = fittype('A * (cos(x)^2)', ...
                    'independent', 'x', ...
                    'dependent', 'y', ...
                    'coefficients', 'A');

if ~isempty(power_fit) && any(power_fit > 0)
    positive_power_values = power_fit(power_fit > 0);
    if ~isempty(positive_power_values)
        start_A = max(positive_power_values);
    else
        start_A = 1;
        disp('Warning: No positive values in ''power_fit'' for fitting. Defaulting StartPoint A to 1.');
    end
else
    start_A = 1;
    disp('Warning: ''power_fit'' is empty or all non-positive. Defaulting StartPoint A to 1.');
end

if ~isreal(start_A) || isinf(start_A) || isnan(start_A) || start_A <= 0
    disp(['Warning: Calculated start_A (', num2str(start_A), ') was not a positive real number. Defaulting to 1.']);
    start_A = 1;
end

try
    [fit_cos_model, gof_cos] = fit(angle_rad_fit, power_fit, ft_cos, 'StartPoint', start_A);
    [fit_cos_sq_model, gof_cos_sq] = fit(angle_rad_fit, power_fit, ft_cos_sq, 'StartPoint', start_A);
catch ME_fit
    disp('Error during curve fitting. Ensure the Curve Fitting Toolbox is installed and data is suitable.');
    disp(['Fitting error message: ', ME_fit.message]);
    hold off;
    return;
end

if isempty(angle_deg_for_plot_range)
    disp('Cannot plot fitted curves as no valid data range is available.');
else
    angle_deg_plot_smooth = linspace(min(angle_deg_for_plot_range), max(angle_deg_for_plot_range), 200);
    angle_rad_plot_smooth = deg2rad(angle_deg_plot_smooth);

    y_fit_cos = fit_cos_model(angle_rad_plot_smooth);
    y_fit_cos_sq = fit_cos_sq_model(angle_rad_plot_smooth);

    plot(angle_deg_plot_smooth, y_fit_cos, 'c-', 'LineWidth', 1.5, ...
         'DisplayName', ['拟合: A_1cos(\theta) (R^2=' sprintf('%.3f', gof_cos.rsquare) ')']);
    plot(angle_deg_plot_smooth, y_fit_cos_sq, 'm-', 'LineWidth', 1.5, ...
         'DisplayName', ['拟合: A_2cos^2(\theta) (R^2=' sprintf('%.3f', gof_cos_sq.rsquare) ')']);
end

legend('show', 'Location', 'southwest', 'FontSize', 10);

disp('--------------------------------------------------');
disp('拟合结果比较:');
disp('--------------------------------------------------');

disp('模型 1: P = A_1 * cos(\theta)');
fprintf('  Fitted A_1: %.4f\n', fit_cos_model.A);
fprintf('  R-squared: %.4f\n', gof_cos.rsquare);
fprintf('  RMSE: %.4f\n\n', gof_cos.rmse);

disp('模型 2: P = A_2 * cos^2(\theta) (Malus''s Law type)');
fprintf('  Fitted A_2: %.4f\n', fit_cos_sq_model.A);
fprintf('  R-squared: %.4f\n', gof_cos_sq.rsquare);
fprintf('  RMSE: %.4f\n\n', gof_cos_sq.rmse);
disp('--------------------------------------------------');

if gof_cos.rsquare > gof_cos_sq.rsquare
    fprintf('基于 R-squared，模型 A*cos(\\theta) 拟合效果更佳。\n');
else
    fprintf('基于 R-squared，模型 A*cos^2(\\theta) 拟合效果更佳。\n');
end
disp('注意: cos^2(\\theta) (马吕斯定律形式) 通常在物理上更符合极化实验。');
disp('--------------------------------------------------');

hold off;