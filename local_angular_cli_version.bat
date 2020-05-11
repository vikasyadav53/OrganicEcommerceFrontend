@echo off
cd %~dp0
PATH=%PATH%%CD%node\node_modules\@angular\cli\bin\ng;
ng %1