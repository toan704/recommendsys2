@echo off
set /p "APIKEY=Please enter your API key: "
echo. Ready, start now...
if not exist "moviegeek_config.zip" (echo LOI: Khong tim thay file moviegeek_config.zip. & pause & exit /b)
powershell -Command "Expand-Archive -Path 'moviegeek_config.zip' -DestinationPath './' -Force"
if not exist ".prs" (echo LOI: Khong tim thay file .prs. & pause & exit /b)
powershell -Command "(Get-Content '.prs').replace('API_KEY_HERE', '%APIKEY%') | Set-Content '.prs'"
echo API Key configured successfully.
python -m pip install --upgrade pip --disable-pip-version-check
pip install pyparsing==2.4.7 -q
pip install numpy==1.19.5 matplotlib==3.0.3 kiwisolver==1.0.1 django==2.2.28 django-extensions==2.1.3 scipy==1.5.4 -q
pip install pandas==0.25.3 packaging==16.8 python-dateutil==2.8.2 pytz==2021.3 requests==2.25.0 seaborn==0.8.1 six==1.11.0 sklearn==0.0 smart-open==1.7.1 stop-words==2015.2.23.1 tqdm==4.28.1 urllib3==1.26.5 pyLDAvis==2.1.1 -q
pip install appdirs==1.4.3 boto==2.49.0 boto3==1.17.0 botocore==1.20.0 bz2file==0.98 certifi==2022.12.7 chardet==3.0.4 cycler==0.10.0 docutils==0.14 gensim==3.6.0 idna==2.7 jmespath==0.9.3 -q
echo.
echo Installation script complete!
pause