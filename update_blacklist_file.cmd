@echo off
setlocal

:: Определяем URL файла и имя для сохранения
set "url=https://p.thenewone.lol/domains-export.txt"
set "output_file=files\russia-blacklist.txt"

:: Создаем папку files, если она не существует
if not exist "%~dp0files\" (
    mkdir "%~dp0files\"
)

:: Используем curl для скачивания файла
echo Скачивание файла...
curl -o "%~dp0%output_file%" "%url%"

:: Проверяем, успешно ли скачан файл
if exist "%~dp0%output_file%" (
    echo Файл успешно скачан и сохранен как %output_file%
) else (
    echo Ошибка при скачивании файла.
)

endlocal
pause