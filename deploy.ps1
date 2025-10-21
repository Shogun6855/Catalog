# JSP Catalog Application - Compile and Deploy Script

Write-Host "=== JSP Catalog Deployment Script ===" -ForegroundColor Cyan

# Step 1: Compile Java classes
Write-Host "`n[1/5] Compiling Java classes..." -ForegroundColor Yellow
Set-Location "WEB-INF\classes\com\catalog"
javac -cp "$env:CATALINA_HOME\lib\servlet-api.jar" *.java
if ($LASTEXITCODE -eq 0) {
    Write-Host "Compilation successful!" -ForegroundColor Green
} else {
    Write-Host "Compilation failed!" -ForegroundColor Red
    exit 1
}
Set-Location ..\..\..\..

# Step 2: Stop Tomcat
Write-Host "`n[2/5] Stopping Tomcat..." -ForegroundColor Yellow
taskkill /F /IM java.exe 2>$null
Start-Sleep -Seconds 2

# Step 3: Clean old deployment
Write-Host "`n[3/5] Cleaning old deployment..." -ForegroundColor Yellow
Remove-Item "$env:CATALINA_HOME\webapps\Catalog" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item "$env:CATALINA_HOME\work\Catalina\localhost\Catalog" -Recurse -Force -ErrorAction SilentlyContinue

# Step 4: Deploy application
Write-Host "`n[4/5] Deploying application..." -ForegroundColor Yellow
New-Item -Path "$env:CATALINA_HOME\webapps\Catalog" -ItemType Directory -Force | Out-Null
Copy-Item -Path ".\*" -Destination "$env:CATALINA_HOME\webapps\Catalog" -Recurse -Force

# Step 5: Start Tomcat
Write-Host "`n[5/5] Starting Tomcat..." -ForegroundColor Yellow
Start-Process -FilePath "$env:CATALINA_HOME\bin\startup.bat" -NoNewWindow
Start-Sleep -Seconds 3

Write-Host "`n=== Deployment Complete! ===" -ForegroundColor Green
Write-Host "`nAccess your application at:" -ForegroundColor Cyan
Write-Host "http://localhost:8080/Catalog/" -ForegroundColor White
