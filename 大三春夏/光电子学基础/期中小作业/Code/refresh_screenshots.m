% refresh_screenshots.m  ——  重新拍三张 GUI 截图（覆盖 figures/ 中旧版本）。
%   gui_main.png       默认参数主界面（含理论/实测两列、5 按钮、预设下拉框）
%   gui_hold_demo.png  Hold on 演示（默认锁定后切到 r=0.97）
%   gui_db.png         dB 视图（r=0.97）

outDir = fullfile(fileparts(mfilename('fullpath')), '..', '实验报告', 'figures');

%% 1) 默认主界面
app = GUI();
drawnow; pause(1.0);
app.screenshot(fullfile(outDir, 'gui_main.png'));
fprintf('已保存 gui_main.png\n');
close(app.figureHandle());
clear app;

%% 2) Hold on 演示
app = GUI();
drawnow; pause(0.5);
app.holdCurrent();
app.configure('r', 0.97);
drawnow; pause(0.8);
app.screenshot(fullfile(outDir, 'gui_hold_demo.png'));
fprintf('已保存 gui_hold_demo.png\n');
close(app.figureHandle());
clear app;

%% 3) dB 视图
app = GUI();
drawnow; pause(0.5);
app.configure('r', 0.97, 'db', true);
drawnow; pause(0.8);
app.screenshot(fullfile(outDir, 'gui_db.png'));
fprintf('已保存 gui_db.png\n');
close(app.figureHandle());
clear app;

%% 4) 标注层演示（默认参数 + 标注开启）
app = GUI();
drawnow; pause(0.5);
app.configure('a', 0.02, 'mark', true);
drawnow; pause(0.8);
app.screenshot(fullfile(outDir, 'gui_annot.png'));
fprintf('已保存 gui_annot.png\n');
close(app.figureHandle());

fprintf('\n刷新完成。\n');
