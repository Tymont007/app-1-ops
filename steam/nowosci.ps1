$gra = Get-Content -LiteralPath "steam/gra.json" -Raw | ConvertFrom-Json
$url = "https://api.steampowered.com/ISteamNews/GetNewsForApp/v2/?appid=$($gra.appid)&count=1"
$response = Invoke-RestMethod -Uri $url -Method Get
$news = $response.appnews.newsitems[0]
Write-Output "$($gra.nazwa): Najnowszy komunikat: $($news.title) - $($news.url)"
