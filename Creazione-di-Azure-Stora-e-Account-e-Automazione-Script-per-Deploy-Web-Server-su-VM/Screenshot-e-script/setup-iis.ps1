# Install IIS Feature
Install-WindowsFeature -Name Web-Server -IncludeManagementTools

# Define IIS root
$path = "C:\inetpub\wwwroot"

# Create a sample HTML file
$html = @"
<!DOCTYPE html>
<html>
<head>
    <title>IIS Setup</title>
</head>
<body>
    <h1>Welcome to IIS</h1>
    <p>Your IIS server is up and running!</p>
</body>
</html>
"@

# Save file as default.html
Set-Content -Path "$path\default.html" -Value $html -Force
