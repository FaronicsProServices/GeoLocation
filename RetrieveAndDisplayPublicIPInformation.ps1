# Retrieve and display information about the system's public IP address and its associated details (location, hostname, etc.)
$ip = (Test-Connection -ComputerName "google.com" -Count 1).IPV4Address.IPAddressToString  

$response = Invoke-RestMethod -Method Get -Uri "https://ipinfo.io/$ip/json"  

$ip = $response.ip  

$hostname = $response.hostname  

$city = $response.city  

$region = $response.region  

$country = $response.country  

$loc = $response.loc  

$org = $response.org  

$postal = $response.postal  

$timezone = $response.timezone  

Write-Output "IP: $ip"  

Write-Output "Hostname: $hostname"  

Write-Output "City: $city"  

Write-Output "Region: $region"  

Write-Output "Country: $country"  

Write-Output "Loc: $loc"  

Write-Output "Org: $org"  

Write-Output "Postal: $postal"  

Write-Output "Timezone: $timezone"
