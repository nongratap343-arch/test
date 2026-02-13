@echo off
powershell -Command "Start-Process powershell -Verb RunAs -ArgumentList '-NoP -NonI -ExecutionPolicy Bypass -File \"%~dp0run.ps1\"'"
