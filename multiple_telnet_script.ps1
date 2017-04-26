$test = @('10.163.2.215:1433', '10.249.163.118:5432', '10.163.2.29:1433', '10.163.2.130:1433', '10.170.0.28:1433', '10.170.249.75:1433', '10.134.0.14:1521', '10.134.0.9:1521', '10.177.0.18:1521')

Foreach ($t in $test)
{
  $source = $t.Split(':')[0]
  $port = $t.Split(':')[1]
  
  Write-Host "Connecting to $source on port $port"

  try
  {
    $socket = New-Object System.Net.Sockets.TcpClient($source, $port)
  }
  catch [Exception]
  {
    Write-Host $_.Exception.GetType().FullName
    Write-Host $_.Exception.Message
  }

  Write-Host "Connected`n"
}