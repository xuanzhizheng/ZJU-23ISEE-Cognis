try
    data_task2 = readmatrix('2.dis.csv');
catch ME
    disp('Error reading the CSV file. Make sure ''2.dis.csv'' is in the MATLAB path or current directory.');
    disp(['Error message: ', ME.message]);
    return;
end

if isempty(data_task2) || size(data_task2, 2) < 2
    disp('Data could not be read properly or does not contain enough columns.');
    return;
end

distance_R = data_task2(:, 1);
received_power_Pr_mW = data_task2(:, 2);

distance_R = distance_R(:);
received_power_Pr_mW = received_power_Pr_mW(:);

valid_indices = ~isnan(distance_R) & ~isinf(distance_R) & ...
                ~isnan(received_power_Pr_mW) & ~isinf(received_power_Pr_mW) & ...
                distance_R > 0;

distance_R = distance_R(valid_indices);
received_power_Pr_mW = received_power_Pr_mW(valid_indices);

if isempty(distance_R)
    disp('No valid data points remaining after cleaning. Check your data.');
    return;
end

figure;
plot(distance_R, received_power_Pr_mW, 'bo-', 'LineWidth', 1.5, 'MarkerFaceColor', 'b');
title('归一化信号强度 vs. 距离', 'FontSize', 14);
xlabel('距离 R (米)', 'FontSize', 12);
ylabel('归一化信号强度', 'FontSize', 12);
grid on;
hold on;

ft1 = fittype('a/x', 'independent', 'x', 'dependent', 'y');
ft2 = fittype('a/x^2', 'independent', 'x', 'dependent', 'y');
ft3 = fittype('a/x^3', 'independent', 'x', 'dependent', 'y');

try
    [fit_model1, gof1] = fit(distance_R, received_power_Pr_mW, ft1);
    [fit_model2, gof2] = fit(distance_R, received_power_Pr_mW, ft2);
    [fit_model3, gof3] = fit(distance_R, received_power_Pr_mW, ft3);
catch ME_fit
    disp('Error during curve fitting. Ensure the Curve Fitting Toolbox is installed and data is suitable.');
    disp(['Fitting error message: ', ME_fit.message]);
    hold off;
    return;
end

h_fit1 = plot(fit_model1, 'r-');
set(h_fit1, 'LineWidth', 1.5);

h_fit2 = plot(fit_model2, 'g-');
set(h_fit2, 'LineWidth', 1.5);

h_fit3 = plot(fit_model3, 'm-');
set(h_fit3, 'LineWidth', 1.5);

legend('原始数据', ...
       ['拟合: a/R (R^2 = ', sprintf('%.4f', gof1.rsquare), ')'], ...
       ['拟合: a/R^2 (R^2 = ', sprintf('%.4f', gof2.rsquare), ')'], ...
       ['拟合: a/R^3 (R^2 = ', sprintf('%.4f', gof3.rsquare), ')'], ...
       'Location', 'northeast', 'FontSize', 10);

disp('--------------------------------------------------');
disp('拟合效果比较:');
disp('--------------------------------------------------');
fprintf('模型 1 (a/R):\n');
fprintf('  R-squared: %.4f\n', gof1.rsquare);
fprintf('  Adjusted R-squared: %.4f\n', gof1.adjrsquare);
fprintf('  RMSE: %.4f\n', gof1.rmse);
fprintf('  Coefficient (a): %.4f\n\n', fit_model1.a);

fprintf('模型 2 (a/R^2):\n');
fprintf('  R-squared: %.4f\n', gof2.rsquare);
fprintf('  Adjusted R-squared: %.4f\n', gof2.adjrsquare);
fprintf('  RMSE: %.4f\n', gof2.rmse);
fprintf('  Coefficient (a): %.4f\n\n', fit_model2.a);

fprintf('模型 3 (a/R^3):\n');
fprintf('  R-squared: %.4f\n', gof3.rsquare);
fprintf('  Adjusted R-squared: %.4f\n', gof3.adjrsquare);
fprintf('  RMSE: %.4f\n', gof3.rmse);
fprintf('  Coefficient (a): %.4f\n\n', fit_model3.a);
disp('--------------------------------------------------');

rsquares = [gof1.rsquare, gof2.rsquare, gof3.rsquare];
models = {'a/R', 'a/R^2', 'a/R^3'};
[best_rsquare, best_idx] = max(rsquares);
fprintf('最佳拟合模型 (基于 R-squared): %s (R^2 = %.4f)\n', models{best_idx}, best_rsquare);
disp('--------------------------------------------------');

hold off;