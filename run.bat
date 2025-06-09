@echo off
REM 卡牌對決：元素抽卡競技場 - 啟動腳本
echo 啟動卡牌對決：元素抽卡競技場...

REM 檢查 Java 是否安裝
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo 錯誤：未檢測到 Java 運行環境。
    echo 請安裝 Java 8 或更新版本後再執行此程式。
    pause
    exit /b 1
)

REM 執行遊戲
java -jar CardGame.jar

REM 如果程式異常結束，暫停顯示錯誤訊息
if %errorlevel% neq 0 (
    echo.
    echo 程式執行時發生錯誤。
    pause
)
