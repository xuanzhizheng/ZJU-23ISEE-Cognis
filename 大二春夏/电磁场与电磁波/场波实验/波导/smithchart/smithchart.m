function smithchart()
    % 根据给定参数绘制Smith圆图并分析
    
    % 给定参数
    rho = 2.186;  % VSWR
    absGamma = 0.372;  % 反射系数幅度
    psi0 = -1.765;  % 初始相位(弧度)
    
    % 计算复反射系数
    gamma = absGamma * exp(1i * psi0);
    
    % 计算归一化阻抗
    z = (1 + gamma) / (1 - gamma);
    r = real(z);
    x = imag(z);
    
    % 创建图形
    figure('Position', [100, 100, 600, 600], 'Color', 'white');
    hold on;
    axis equal;
    axis([-1.2 1.2 -1.2 1.2]);
    axis off;
    
    % 绘制基础Smith圆图
    drawBasicSmithChart();
    
    % 画一条过原点的红色线，角度为psi0
    line_length = 1.2; % 线长足够穿过单位圆
    line_x = [0, line_length*cos(psi0)];
    line_y = [0, line_length*sin(psi0)];
    plot(line_x, line_y, 'r-', 'LineWidth', 1.5);
    text(1.1*cos(psi0), 1.1*sin(psi0), ['\psi(0)=' num2str(psi0*180/pi, '%.1f') '°'], 'Color', 'r', 'FontSize', 10);
    
    % 画一个圆心在原点，半径为absGamma的红色圆
    circle_theta = linspace(0, 2*pi, 200);
    circle_x = absGamma * cos(circle_theta);
    circle_y = absGamma * sin(circle_theta);
    plot(circle_x, circle_y, 'r-', 'LineWidth', 1.5);
    text(absGamma/sqrt(2), absGamma/sqrt(2), ['|Γ|=' num2str(absGamma)], 'Color', 'r', 'FontSize', 10);
    
    % 标记交点
    intersection_x = absGamma * cos(psi0);
    intersection_y = absGamma * sin(psi0);
    plot(intersection_x, intersection_y, 'ko', 'MarkerSize', 8, 'LineWidth', 2, 'MarkerFaceColor', 'r');
    text(intersection_x + 0.05, intersection_y + 0.05, '交点', 'FontSize', 10);
    
    % 在交点附近标注大写的R和X值
    text(intersection_x + 0.05, intersection_y - 0.05, ['R = ' num2str(r, '%.3f')], 'FontSize', 10, 'FontWeight', 'bold');
    text(intersection_x + 0.05, intersection_y - 0.13, ['X = ' num2str(x, '%.3f')], 'FontSize', 10, 'FontWeight', 'bold');
    
    % 绘制常数电阻圆 (粗黑线)
    drawConstantResistanceCircle(r, 'k-', 1);
    
    % 绘制常数电抗圆 (粗黑线)
    drawConstantReactanceCircle(x, 'k-', 1);
    
    % 添加标题和信息
    title('Smith圆图分析', 'FontSize', 14);
    text(-1.1, 1.1, sprintf('Z = %.3f + j%.3f', r, x), 'FontSize', 12);
    text(-1.1, 1.0, sprintf('|Γ| = %.3f, ∠Γ = %.1f°', absGamma, psi0*180/pi), 'FontSize', 12);
    text(-1.1, 0.9, sprintf('VSWR = %.3f', rho), 'FontSize', 12);
    
    hold off;
end

function drawBasicSmithChart()
    % 绘制Smith圆图的基础框架
    
    % 绘制外圆
    theta = linspace(0, 2*pi, 1000);
    plot(cos(theta), sin(theta), 'k-', 'LineWidth', 1.5);
    
    % 绘制实轴
    plot([-1, 1], [0, 0], 'k-', 'LineWidth', 1);
    
    % 绘制标准电阻圆 - 增加更多电阻圆并使用实线
    rValues = [0, 0.1, 0.2, 0.3, 0.5, 0.7, 1, 1.5, 2, 3, 5];
    for r = rValues
        center = [r/(1+r), 0];
        radius = 1/(1+r);
        
        theta = linspace(0, 2*pi, 200);
        x = center(1) + radius * cos(theta);
        y = center(2) + radius * sin(theta);
        
        plot(x, y, 'k-', 'LineWidth', 0.5);
        % 移除电阻圆的标注
    end
    
    % 绘制标准电抗圆 - 增加更多电抗圆并使用实线
    xValues = [-5, -3, -2, -1.5, -1, -0.7, -0.5, -0.3, -0.2, 0.2, 0.3, 0.5, 0.7, 1, 1.5, 2, 3, 5];
    for x = xValues
        center = [1, 1/x];
        radius = abs(1/x);
        
        % 计算圆与单位圆的交点
        d = sqrt(center(1)^2 + center(2)^2);
        if d - radius >= 1 || d + radius <= 1  % 如果圆与单位圆没有交点或完全包含
            continue;
        end
        
        % 计算交点角度
        angle1 = acos((d^2 + 1 - radius^2)/(2*d));
        theta_center = atan2(center(2), center(1));
        
        if x > 0
            angles = linspace(theta_center - angle1, theta_center + angle1, 200);
        else
            if theta_center > 0
                angles = linspace(theta_center - angle1, theta_center + angle1 - 2*pi, 200);
            else
                angles = linspace(theta_center - angle1, theta_center + angle1, 200);
            end
        end
        
        % 生成圆弧点
        points_x = center(1) + radius * cos(angles);
        points_y = center(2) + radius * sin(angles);
        
        % 只保留单位圆内的点
        inside = (points_x.^2 + points_y.^2) <= 1.001;
        
        % 绘制圆弧 - 使用实线代替虚线
        plot(points_x(inside), points_y(inside), 'k-', 'LineWidth', 0.5);
        
        % 移除电抗圆的数值标注
    end
    
    % 使用另一种方法绘制电抗圆，确保能够显示
    % 对于每个电抗值x，画出在Smith圆内部的弧线
    xValues2 = [-5, -3, -2, -1.5, -1, -0.7, -0.5, -0.3, -0.2, 0.2, 0.3, 0.5, 0.7, 1, 1.5, 2, 3, 5];
    for x = xValues2
        % 电抗圆的中心和半径
        center_x = 1;
        center_y = 1/x;
        radius = abs(1/x);
        
        % 创建完整的圆
        t = linspace(0, 2*pi, 500);
        circ_x = center_x + radius * cos(t);
        circ_y = center_y + radius * sin(t);
        
        % 找出圆内部的点
        mask = (circ_x.^2 + circ_y.^2) <= 1;
        
        % 如果至少有两个点在单位圆内，则绘制
        if sum(mask) >= 2
            plot(circ_x(mask), circ_y(mask), 'k-', 'LineWidth', 0.5);
            % 移除标签代码以去除电抗圆的数值标注
        end
    end
end

function drawConstantResistanceCircle(r, style, lineWidth)
    center = [r/(1+r), 0];
    radius = 1/(1+r);
    
    theta = linspace(0, 2*pi, 200);
    x = center(1) + radius * cos(theta);
    y = center(2) + radius * sin(theta);
    
    plot(x, y, style, 'LineWidth', lineWidth);
    % 删除小r标注
end

function drawConstantReactanceCircle(x, style, lineWidth)
    center = [1, 1/x];
    radius = abs(1/x);
    
    % 计算圆与单位圆的交点
    d = sqrt(center(1)^2 + center(2)^2);
    if d - radius >= 1 || d + radius <= 1  % 如果圆与单位圆没有交点或完全包含
        return;
    end
    
    % 计算交点角度
    angle1 = acos((d^2 + 1 - radius^2)/(2*d));
    theta_center = atan2(center(2), center(1));
    
    if x > 0
        angles = linspace(theta_center - angle1, theta_center + angle1, 200);
    else
        if theta_center > 0
            angles = linspace(theta_center - angle1, theta_center + angle1 - 2*pi, 200);
        else
            angles = linspace(theta_center - angle1, theta_center + angle1, 200);
        end
    end
    
    % 生成圆弧点
    points_x = center(1) + radius * cos(angles);
    points_y = center(2) + radius * sin(angles);
    
    % 只保留单位圆内的点
    inside = (points_x.^2 + points_y.^2) <= 1.001;
    
    % 绘制圆弧
    plot(points_x(inside), points_y(inside), style, 'LineWidth', lineWidth);
    
    % 删除小x标注
end