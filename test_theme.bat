@echo off
echo 启动卡牌游戏以测试主题切换功能...
echo.
echo 测试说明:
echo 1. 应用程序启动后，使用菜单栏中的"设定" > "主题"来切换主题
echo 2. 或者使用快捷键:
echo    - Ctrl+Shift+L: 切换到明亮主题
echo    - Ctrl+Shift+D: 切换到暗黑主题
echo 3. 观察主题是否立即生效，无需导航到其他面板
echo 4. 查看控制台输出以了解主题切换的执行过程
echo.
pause

cd /d "%~dp0"
java -cp "lib\sqlite-jdbc-3.49.1.0.jar;src" view.GameGUI

pause
