function Get-PublicIP {
    $response = Invoke-RestMethod https://www.bing.com/search?q=whats%20my%20ip
    $response -match '(<div class="b_focusTextSmall">)(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})(</div>)' | Out-Null
    return $Matches[2]
}
