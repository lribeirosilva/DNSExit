While ( $true ) {

"DDNS Update ######################################`n"

#Alterar as chaves API KEY e o Host Dinamico
$apikey = "*** API KEY ***"
$hostdinamico = "*** HOST DINAMICO ***"

$data = Get-Date -Format yyyyMMdd-HHmm

$URL = "https://api.dnsexit.com/dns/ud/?apikey="+$apikey+"&host="+$hostdinamico

"REQUEST => " + $data

$Response = Invoke-WebRequest -URI $URL

If ($Response.StatusCode -ne 200) {

    "ERROR => " + $Response.Content

} Else {

    "OK => " + $Response.Content

}

Start-Sleep -Seconds 600

}


