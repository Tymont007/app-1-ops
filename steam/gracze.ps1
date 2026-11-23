$ErrorActionPreference = "Stop"
$appid = 570
$dane = Invoke-RestMethod -Uri "https://api.steampowered.com/ISteamUserStats/GetNumberOfCurrentPlayers/v0001/?appid=$appid&format=json" -UseBasicParsing
Write-Host "Liczba graczy online w Dota 2: $($dane.response.player_count)"
