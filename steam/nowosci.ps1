pipeline {
    agent any
    stages {
        stage('Gracze online') {
            steps {
                powershell '''
                    $ErrorActionPreference = "Stop"
                    $appid = 570

                    $urlApi = "https://api.steampowered.com/ISteamNews/GetNewsForApp/v2/?appid=$appid&count=1&maxlength=300&feeds=steam_community_announcements"
                    $odpowiedz = Invoke-RestMethod -Uri $urlApi -UseBasicParsing -TimeoutSec 20

                    $news = $odpowiedz.appnews.newsitems[0]

                    Write-Host "Ostatni komunikat twórców:"
                    Write-Host "Tytuł: $($news.title)"
                    Write-Host "Link: $($news.url)"
                '''
            }
        }
    }
}
