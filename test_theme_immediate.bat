@echo off
echo ========================================
echo 卡牌遊戲 - 主題切換修復測試
echo ========================================
echo.

echo 正在編譯Java類...
javac -cp "lib\sqlite-jdbc-3.49.1.0.jar" -d bin src\model\*.java
if %ERRORLEVEL% neq 0 (
    echo 編譯model類失敗！
    pause
    exit /b 1
)

javac -cp "lib\sqlite-jdbc-3.49.1.0.jar;bin" -d bin src\service\*.java
if %ERRORLEVEL% neq 0 (
    echo 編譯service類失敗！
    pause
    exit /b 1
)

javac -cp "lib\sqlite-jdbc-3.49.1.0.jar;bin" -d bin src\database\*.java
if %ERRORLEVEL% neq 0 (
    echo 編譯database類失敗！
    pause
    exit /b 1
)

javac -cp "lib\sqlite-jdbc-3.49.1.0.jar;bin" -d bin src\controller\*.java
if %ERRORLEVEL% neq 0 (
    echo 編譯controller類失敗！
    pause
    exit /b 1
)

javac -cp "lib\sqlite-jdbc-3.49.1.0.jar;bin" -d bin src\view\GameGUI.java
if %ERRORLEVEL% neq 0 (
    echo 編譯GameGUI類失敗！
    pause
    exit /b 1
)

echo ✅ 編譯成功！
echo.

echo 啟動應用程序進行主題切換測試...
echo.
echo 測試步驟：
echo 1. 在菜單欄選擇「設定」→「主題」
echo 2. 切換到「暗黑主題」，觀察是否立即生效
echo 3. 切換回「明亮主題」，觀察是否立即生效
echo 4. 在不同面板中測試主題切換
echo.

java -cp "lib\sqlite-jdbc-3.49.1.0.jar;bin" view.GameGUI

echo.
echo 測試完成！請檢查主題切換是否立即生效。
pause
