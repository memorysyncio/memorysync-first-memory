@echo off
if "%MEMORYSYNC_KEY%"=="" exit /b 1
if "%MEMORYSYNC_PROJECT_ID%"=="" exit /b 1
if "%MEMORYSYNC_BASE_URL%"=="" set MEMORYSYNC_BASE_URL=https://api.memorysync.io
curl --fail-with-body -X POST "%MEMORYSYNC_BASE_URL%/memory/add" -H "X-API-Key: %MEMORYSYNC_KEY%" -H "X-Project-ID: %MEMORYSYNC_PROJECT_ID%" -H "X-End-User-ID: starter-user" -H "Content-Type: application/json" -d "{\"text\":\"The user prefers concise responses.\",\"source\":\"starter\"}"
curl --fail-with-body -X POST "%MEMORYSYNC_BASE_URL%/memory/query" -H "X-API-Key: %MEMORYSYNC_KEY%" -H "X-Project-ID: %MEMORYSYNC_PROJECT_ID%" -H "X-End-User-ID: starter-user" -H "Content-Type: application/json" -d "{\"query\":\"How should I respond to this user?\",\"k\":5}"
