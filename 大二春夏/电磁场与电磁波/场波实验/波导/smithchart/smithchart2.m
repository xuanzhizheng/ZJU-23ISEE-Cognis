function smithchart2()
    Z1 = 0.672 - 0.569j;  
    
    absGamma2 = 0.038;
    psi2 = 0;
    Gamma2 = absGamma2 * exp(1i * psi2);
    
    Z2 = (1 + Gamma2) / (1 - Gamma2);
    
    figure('Position', [100, 100, 600, 600], 'Color', 'white');
    hold on;
    axis equal;
    axis([-1.2 1.2 -1.2 1.2]);
    axis off;
    
    drawBasicSmithChart();
    
    Gamma1 = (Z1 - 1) / (Z1 + 1);
    
    plot(real(Gamma1), imag(Gamma1), 'ro', 'MarkerSize', 10, 'LineWidth', 2);
    text(real(Gamma1) + 0.05, imag(Gamma1) + 0.05, '容性膜片+匹配负载', 'FontSize', 10, 'Color', 'r');
    
    plot(real(Gamma2), imag(Gamma2), 'go', 'MarkerSize', 10, 'LineWidth', 2);
    text(real(Gamma2) + 0.05, imag(Gamma2) + 0.05, '容性膜片+单销钉(匹配)', 'FontSize', 10, 'Color', 'g');
    
    arrow_x = [real(Gamma1), real(Gamma2)];
    arrow_y = [imag(Gamma1), imag(Gamma2)];
    quiver(arrow_x(1), arrow_y(1), arrow_x(2)-arrow_x(1), arrow_y(2)-arrow_y(1), 0, 'MaxHeadSize', 0.5, 'LineWidth', 2, 'Color', 'b');
    
    Y1 = 1/Z1;
    
    beta_d = 78.75 * pi/180;
    
    Y2 = (Y1 + 1j*tan(beta_d))/(1 + 1j*Y1*tan(beta_d));
    
    Y_stub = -1j*imag(Y2);
    
    Y_total = real(Y2) + 1j*0;
    
    Z2_new = 1/Y_total;
    
    text(real(Gamma1) - 0.2, imag(Gamma1) - 0.1, ['Z = ' num2str(real(Z1), '%.3f') ' - j' num2str(abs(imag(Z1)), '%.3f')], 'FontSize', 10, 'FontWeight', 'bold');
    text(real(Gamma2) - 0.2, imag(Gamma2) - 0.1, ['Z \approx ' num2str(real(Z2_new), '%.3f')], 'FontSize', 10, 'FontWeight', 'bold');
    
    text(-1.1, 1.1, '阻抗匹配过程示意图', 'FontSize', 12);
    text(-1.1, 1.0, ['销钉提供导纳: Y_{stub} = j' num2str(imag(Y_stub), '%.3f')], 'FontSize', 12);
    text(-1.1, 0.9, ['销钉电抗: X_{stub} = ' num2str(-1/imag(Y_stub), '%.3f') 'j'], 'FontSize', 12);
    text(-1.1, 0.8, ['销钉距离负载: ' num2str(beta_d*180/pi, '%.1f') '°'], 'FontSize', 12);
    
    title('Smith圆图阻抗匹配分析', 'FontSize', 14);

    hold off;
end

function drawBasicSmithChart()
    theta = linspace(0, 2*pi, 1000);
    plot(cos(theta), sin(theta), 'k-', 'LineWidth', 1.5);
    
    plot([-1, 1], [0, 0], 'k-', 'LineWidth', 1);
    
    rValues = [0, 0.1, 0.2, 0.3, 0.5, 0.7, 1, 1.5, 2, 3, 5];
    for r = rValues
        center = [r/(1+r), 0];
        radius = 1/(1+r);
        
        theta = linspace(0, 2*pi, 200);
        x = center(1) + radius * cos(theta);
        y = center(2) + radius * sin(theta);
        
        plot(x, y, 'k-', 'LineWidth', 0.5);
    end
    
    xValues = [-5, -3, -2, -1.5, -1, -0.7, -0.5, -0.3, -0.2, 0.2, 0.3, 0.5, 0.7, 1, 1.5, 2, 3, 5];
    for x = xValues
        center_x = 1;
        center_y = 1/x;
        radius = abs(1/x);
        
        t = linspace(0, 2*pi, 500);
        circ_x = center_x + radius * cos(t);
        circ_y = center_y + radius * sin(t);
        
        mask = (circ_x.^2 + circ_y.^2) <= 1;
        
        if sum(mask) >= 2
            plot(circ_x(mask), circ_y(mask), 'k-', 'LineWidth', 0.5);
        end
    end
    
    plot(0, 0, 'ko', 'MarkerSize', 6, 'MarkerFaceColor', 'k');
    text(0.05, 0.05, '匹配点', 'FontSize', 10);
end
