$gra = Get-Content -LiteralPath "steam/gra.json" -Raw | ConvertFrom-Json
$url = "https://api.steampowered.com/ISteamUserStats/GetNumberOfCurrentPlayers/v1/?appid=$($gra.appid)"
$response = Invoke-RestMethod -Uri $url -Method Get
$players = $response.response.player_count
Write-Output "$($gra.nazwa): Aktualna liczba graczy online: $players"
