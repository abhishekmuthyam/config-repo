@ECHO OFF
FOR /F "tokens=1,2 delims==" %%A IN (C:/Users/muthyama/build/%DEPLOY_ENV%_PCF.properties) DO (
    IF "%%A"=="API_URL" SET PCF_ENDPOINT_NAME=%%B 
)
FOR /F "tokens=1,2 delims==" %%A IN (C:/Users/muthyama/build/%DEPLOY_ENV%_PCF.properties) DO (
    IF "%%A"=="USER_NAME" SET USER_NAME=%%B
)
FOR /F "tokens=1,2 delims==" %%A IN (C:/Users/muthyama/build/%DEPLOY_ENV%_PCF.properties) DO (
    IF "%%A"=="PASSWORD" SET PASSWORD=%%B
)
FOR /F "tokens=1,2 delims==" %%A IN (C:/Users/muthyama/build/%DEPLOY_ENV%_PCF.properties) DO (
    IF "%%A"=="ORGANIZATION" SET PCF_ORG=%%B
)
FOR /F "tokens=1,2 delims==" %%A IN (C:/Users/muthyama/build/%DEPLOY_ENV%_PCF.properties) DO (
    IF "%%A"=="SPACE" SET PCF_SPACE=%%B
)
ECHO "PCF_ENDPOINT_NAME: %PCF_ENDPOINT_NAME%"
ECHO "USER NAME: %USER_NAME%"
ECHO "PASSWORD: %PASSWORD%"
ECHO "PCF_ORG: %PCF_ORG%"
ECHO "PCF_SPACE: %PCF_SPACE%"
