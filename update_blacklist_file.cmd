@echo off
setlocal

:: ��।��塞 URL 䠩�� � ��� ��� ��࠭����
set "url=https://p.thenewone.lol/domains-export.txt"
set "output_file=files\russia-blacklist.txt"

:: ������� ����� files, �᫨ ��� �� �������
if not exist "%~dp0files\" (
    mkdir "%~dp0files\"
)

:: �ᯮ��㥬 curl ��� ᪠稢���� 䠩��
echo ���稢���� 䠩��...
curl -o "%~dp0%output_file%" "%url%"

:: �஢��塞, �ᯥ譮 �� ᪠砭 䠩�
if exist "%~dp0%output_file%" (
    echo ���� �ᯥ譮 ᪠砭 � ��࠭�� ��� %output_file%
) else (
    echo �訡�� �� ᪠稢���� 䠩��.
)

endlocal
pause