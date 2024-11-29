# URL of the Google Drive file
$url = "https://drive.google.com/uc?export=download&id=1PNwK3Wwxi4oasUQXF01N-xk7lDSm82O2"

# Destination path for the file
$destinationPath = "C:\Windows\Media\CustomUSBConnect.wav"

# Download the file
Invoke-WebRequest -Uri $url -OutFile $destinationPath

# Registry path for the USB connection sound
$registryPath = "HKCU:\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Current"

# Set the downloaded sound file as the new sound
Set-ItemProperty -Path $registryPath -Name "(default)" -Value $destinationPath