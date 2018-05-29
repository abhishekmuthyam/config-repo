@ECHO OFF
FOR /F "tokens=1,2 delims==" %%A IN (https://github.com/abhishekmuthyam/config-repo/blob/master/DEV1_PCF.properties) DO (
    IF "%%A"=="API_URL" SET API_URL=%%B 
)
FOR /F "tokens=1,2 delims==" %%A IN (https://github.com/abhishekmuthyam/config-repo/blob/master/DEV1_PCF.properties) DO (
    IF "%%A"=="USER_NAME" SET USER_NAME=%%B 
)
FOR /F "tokens=1,2 delims==" %%A IN (https://github.com/abhishekmuthyam/config-repo/blob/master/DEV1_PCF.properties) DO (
    IF "%%A"=="PASSWORD" SET PASSWORD=%%B
)
FOR /F "tokens=1,2 delims==" %%A IN (https://github.com/abhishekmuthyam/config-repo/blob/master/DEV1_PCF.properties) DO (
    IF "%%A"=="ORGANIZATION" SET ORGANIZATION=%%B
)
FOR /F "tokens=1,2 delims==" %%A IN (https://github.com/abhishekmuthyam/config-repo/blob/master/DEV1_PCF.properties) DO (
    IF "%%A"=="SPACE" SET SPACE=%%B
)

ECHO "API_URL=%API_URL%"
ECHO "USER_NAME=%USER_NAME%"
ECHO "PASSWORD=%PASSWORD%"
ECHO "ORGANIZATION=%ORGANIZATION%"
ECHO "SPACE=%SPACE%"

ECHO API_URL="%API_URL%">env.properties
ECHO USER_NAME="%USER_NAME%">>env.properties
ECHO PASSWORD="%PASSWORD%">>env.properties
ECHO ORGANIZATION="%ORGANIZATION%">>env.properties
ECHO SPACE="%SPACE%">>env.properties

copy env.properties /B+ ,,/Y
echo "properties files copied"
