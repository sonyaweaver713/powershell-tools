# CloudHealthCheck.ps1

$endpoints = @(
    "azure.com",
    "login.microsoftonline.com",
    "graph.microsoft.com",
    "dns.google",
    "revolutiongroup.com"
)

$results = @()

foreach ($endpoint in $endpoints) {
    try {
        $dnsResult = Resolve-DnsName $endpoint -ErrorAction Stop
        $ip = $dnsResult[0].IPAddress
        $ping = Test-Connection -ComputerName $endpoint -Count 2 -Quiet

        $results += [PSCustomObject]@{
            Endpoint = $endpoint
            IPAddress = $ip
            DNS_OK = $true
            Ping_OK = $ping
        }
    }
    catch {
        $results += [PSCustomObject]@{
            Endpoint = $endpoint
            IPAddress = "N/A"
            DNS_OK = $false
            Ping_OK = $false
        }
    }
}

# Optional: Output as formatted text (for email or logs)
$output = $results | Format-Table -AutoSize | Out-String
Write-Output $output
