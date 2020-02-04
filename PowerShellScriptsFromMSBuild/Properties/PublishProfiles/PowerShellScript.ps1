function ReplaceText
{ 
  param([string]$filepath) 

# 將取代完成的文字儲存至檔案
((Get-Content -Path $filepath -Raw) -replace 'Test','') |
  Set-Content -Path $filepath
 
((Get-Content -Path $filepath -Raw) -replace 'Debug','Release') |
  Set-Content -Path $filepath
}
ReplaceText $args[0]
