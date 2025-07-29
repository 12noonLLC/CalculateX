@echo off
echo.
echo This builds and publishes Calculate X win-x64 for LICENSING to C:\VSIntermediate\.
echo.
echo There should be two warnings:
echo 1. TRACE is set.
echo 2. Replace values of product ID and public key with your own.
echo.

timeout /t -1

dotnet clean CalculateX\CalculateX.csproj --nologo --configuration Release --runtime win-x64

dotnet build CalculateX\CalculateX.csproj --nologo --self-contained --configuration Release --runtime win-x64 --property:"DefineConstants=TRACE LICENSING"

dotnet publish CalculateX\CalculateX.csproj --property:PublishProfile=FolderProfile --property:"DefineConstants=TRACE LICENSING" --output "C:\VSIntermediate\CalculateX.Windows\publish"
