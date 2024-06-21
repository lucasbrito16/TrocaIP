# Função para substituir o endereço IP pelo nome do servidor
function Replace-IpWithHostname {
    param (
        [string]$url,
        [string]$hostname
    )
    
    # Expressão regular para capturar o endereço IP na URL
    $ipRegex = '\b(?:\d{1,3}\.){3}\d{1,3}\b'
    
    # Substituir o endereço IP pelo nome do servidor
    $newUrl = $url -replace $ipRegex, $hostname
    return $newUrl
}

# Exemplo de uso
$url = "http://192.168.1.100:8080/path/to/resource"
$hostname = "meuServidor"

$newUrl = Replace-IpWithHostname -url $url -hostname $hostname
Write-Output "URL original: $url"
Write-Output "URL modificada: $newUrl"
