try
    data_h_raw = readmatrix('8.h.csv');
catch ME
    disp('Error reading ''8.h.csv''. Please ensure the file is in the MATLAB path.');
    disp(['MATLAB error: ', ME.message]);
    return;
end

if size(data_h_raw, 2) < 6
    disp('Error: ''8.h.csv'' does not have enough columns for 6, 7, and 8 GHz data as expected.');
    disp('Expected at least 6 columns of numerical data after headers.');
    return;
end

azimuth_angles_deg = data_h_raw(:, 1);
gain_6ghz_h_dB = data_h_raw(:, 2);
gain_7ghz_h_dB = data_h_raw(:, 4);
gain_8ghz_h_dB = data_h_raw(:, 6);

azimuth_angles_rad = deg2rad(azimuth_angles_deg);

figure;

polarplot(azimuth_angles_rad, gain_6ghz_h_dB, '-', 'LineWidth', 1.5, 'DisplayName', '6 GHz');
hold on;

polarplot(azimuth_angles_rad, gain_7ghz_h_dB, '-', 'LineWidth', 1.5, 'DisplayName', '7 GHz');
polarplot(azimuth_angles_rad, gain_8ghz_h_dB, '-', 'LineWidth', 1.5, 'DisplayName', '8 GHz');

hold off;

title('水平面辐射方向图 (增益 dB)', 'FontSize', 14);
legend('show', 'Location', 'northeastoutside');

all_gains_h = [gain_6ghz_h_dB(:); gain_7ghz_h_dB(:); gain_8ghz_h_dB(:)];
all_gains_h_clean = all_gains_h(~isinf(all_gains_h) & ~isnan(all_gains_h));

if ~isempty(all_gains_h_clean)
    min_gain = min(all_gains_h_clean);
    max_gain = max(all_gains_h_clean);
    buffer = max(5, abs(max_gain - min_gain) * 0.1);
    if min_gain == max_gain
        min_gain = min_gain - 5;
        max_gain = max_gain + 5;
    end
    rlim([min_gain - buffer, max_gain + buffer]);
else
    rlim([-40 0]);
    disp('Warning: No valid gain data found for horizontal plot rlim calculation.');
end

ax_h = gca;
ax_h.ThetaDir = 'clockwise';
ax_h.ThetaZeroLocation = 'top';
ax_h.FontSize = 10;

try
    data_v_raw = readmatrix('8.v.csv');
catch ME
    disp('Error reading ''8.v.csv''. Please ensure the file is in the MATLAB path.');
    disp(['MATLAB error: ', ME.message]);
    return;
end

if size(data_v_raw, 2) < 6
    disp('Error: ''8.v.csv'' does not have enough columns for 6, 7, and 8 GHz data as expected.');
    disp('Expected at least 6 columns of numerical data after headers.');
    return;
end

elevation_angles_deg = data_v_raw(:, 1);
gain_6ghz_v_dB = data_v_raw(:, 2);
gain_7ghz_v_dB = data_v_raw(:, 4);
gain_8ghz_v_dB = data_v_raw(:, 6);

elevation_angles_rad = deg2rad(elevation_angles_deg);

figure;

polarplot(elevation_angles_rad, gain_6ghz_v_dB, '-', 'LineWidth', 1.5, 'DisplayName', '6 GHz');
hold on;

polarplot(elevation_angles_rad, gain_7ghz_v_dB, '-', 'LineWidth', 1.5, 'DisplayName', '7 GHz');
polarplot(elevation_angles_rad, gain_8ghz_v_dB, '-', 'LineWidth', 1.5, 'DisplayName', '8 GHz');

hold off;

title('垂直面辐射方向图 (增益 dB)', 'FontSize', 14);
legend('show', 'Location', 'northeastoutside');

all_gains_v = [gain_6ghz_v_dB(:); gain_7ghz_v_dB(:); gain_8ghz_v_dB(:)];
all_gains_v_clean = all_gains_v(~isinf(all_gains_v) & ~isnan(all_gains_v));

if ~isempty(all_gains_v_clean)
    min_gain = min(all_gains_v_clean);
    max_gain = max(all_gains_v_clean);
    buffer = max(5, abs(max_gain - min_gain) * 0.1);
     if min_gain == max_gain
        min_gain = min_gain - 5;
        max_gain = max_gain + 5;
    end
    rlim([min_gain - buffer, max_gain + buffer]);
else
    rlim([-40 0]);
    disp('Warning: No valid gain data found for vertical plot rlim calculation.');
end

ax_v = gca;
ax_v.ThetaDir = 'clockwise'; 
ax_v.ThetaZeroLocation = 'top'; 
ax_v.FontSize = 10;

disp('Processing complete. Check figures for plots.');