@echo off
if "%MEMORYSYNC_KEY%"=="" (
  echo MEMORYSYNC_KEY is required. 1>&2
  exit /b 1
)
if "%MEMORYSYNC_PROJECT_ID%"=="" (
  echo MEMORYSYNC_PROJECT_ID is required. 1>&2
  exit /b 1
)
if "%MEMORYSYNC_BASE_URL%"=="" set "MEMORYSYNC_BASE_URL=https://api.memorysync.io"

curl --fail-with-body -X POST "%MEMORYSYNC_BASE_URL%/memory/add" -H "X-API-Key: %MEMORYSYNC_KEY%" -H "X-Project-ID: %MEMORYSYNC_PROJECT_ID%" -H "X-End-User-ID: starter-user" -H "Content-Type: application/json" -d "{\"text\":\"The user prefers concise responses.\",\"source\":\"starter\"}"
if errorlevel 1 exit /b %errorlevel%

curl --fail-with-body -X POST "%MEMORYSYNC_BASE_URL%/memory/query" -H "X-API-Key: %MEMORYSYNC_KEY%" -H "X-Project-ID: %MEMORYSYNC_PROJECT_ID%" -H "X-End-User-ID: starter-user" -H "Content-Type: application/json" -d "{\"query\":\"How should I respond to this user?\",\"k\":5}"
