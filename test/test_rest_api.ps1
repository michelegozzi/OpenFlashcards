function Get-RandomHex {
    param(
        [int] $Bits = 256
    )
    $bytes = new-object 'System.Byte[]' ($Bits/8)
    (new-object System.Security.Cryptography.RNGCryptoServiceProvider).GetBytes($bytes)
    (new-object System.Runtime.Remoting.Metadata.W3cXsd2001.SoapHexBinary @(,$bytes)).ToString()
}




$url = "http://localhost:3000/api/topics"
$token = "9bba6601131e41005e9e7099ec85c913" #Get-RandomHex -Bits 160
$headers = @{ "Content-Type" = "application/json"; "Accept" = "application/openflashcards.api.v1"; "Authorization" = "Bearer $($token)" }
#$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
#$headers.Add('Accept','application/openflashcards.facebook.v1')



$LoginResponse = Invoke-WebRequest $url -Headers $headers -Method 'GET'
$LoginResponse.Content
