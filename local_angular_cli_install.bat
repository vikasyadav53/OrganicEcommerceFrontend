echo off
set arg1=%1
set arg2=%2
cd %~dp0
PATH=%PATH%%CD%\node\node.exe;
node node/node_modules/npm/bin/npm-cli.js %arg1% %arg2%