@echo off

cls 

echo Содержимое файлов:
for %%f in ('*.txt') do (
    echo %%f
    type %%f
)

dir    