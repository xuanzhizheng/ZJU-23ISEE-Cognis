% gen_screenshots.m — 自动驱动 GUI 生成演示截图

outDir = fullfile(fileparts(mfilename('fullpath')), '..', '实验报告', 'figures');

%% 截图1：主界面（默认参数）
app1 = GUI();
drawnow; pause(1);
app1.screenshot(fullfile(outDir, 'gui_main.png'));
fprintf('已保存 gui_main.png\n');

%% 截图2：dB 视图（r=0.97）
app2 = GUI();
drawnow; pause(1);
app2.configure('r', 0.97, 'db', true);
drawnow; pause(0.8);
app2.screenshot(fullfile(outDir, 'gui_db.png'));
fprintf('已保存 gui_db.png\n');

%% 截图3：Hold on 演示（默认参数锁定后改为 r=0.97）
app3 = GUI();
drawnow; pause(1);
app3.holdCurrent();
app3.configure('r', 0.97);
drawnow; pause(0.8);
app3.screenshot(fullfile(outDir, 'gui_hold_demo.png'));
fprintf('已保存 gui_hold_demo.png\n');
