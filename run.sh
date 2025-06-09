#!/bin/bash
# 卡牌對決：元素抽卡競技場 - 啟動腳本 (Linux/Mac)

echo "啟動卡牌對決：元素抽卡競技場..."

# 檢查 Java 是否安裝
if ! command -v java &> /dev/null; then
    echo "錯誤：未檢測到 Java 運行環境。"
    echo "請安裝 Java 8 或更新版本後再執行此程式。"
    exit 1
fi

# 顯示 Java 版本
echo "檢測到 Java 版本："
java -version

# 執行遊戲
echo "正在啟動遊戲..."
java -jar CardGame.jar

# 如果程式異常結束，顯示錯誤訊息
if [ $? -ne 0 ]; then
    echo ""
    echo "程式執行時發生錯誤。"
    read -p "按 Enter 鍵退出..."
fi
