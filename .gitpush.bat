@echo off

:: 將更改添加至暫存區
git add .

:: 提示輸入提交資訊
set /p commit_message=請輸入提交資訊: 

:: 確認是否提交
echo 您輸入的提交資訊是："%commit_message%"
set /p confirm=確認推送至遠端倉庫？(y/n): 

:: 如果用戶確認，繼續推送，否則取消推送
if /i "%confirm%"=="y" (
    git commit -m "%commit_message%"
    git push
    echo 已完成提交與推送！
) else (
    echo 已取消推送！
)

pause