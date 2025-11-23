oh-my-posh --init --shell pwsh --config c:\Users\greninja-threadrip\Documents\WindowsPowerShell\p10k_classic.omp.json | Invoke-Expression

# Disable pager for the session
$env:PAGER = ""
function more { $input }

function eza-list {
    eza.exe --oneline --long --icons=always --binary --git
}

function cd-github {
    cd ~/Documents/github
    eza-list
}

New-Alias -Name l -Value eza-list
New-Alias -Name g -Value cd-github

# Setup mise-en-place
# $mise_bin = "C:\Users\greninja-threadrip\AppData\Local\Microsoft\WinGet\Packages\jdx.mise_Microsoft.Winget.Source_8wekyb3d8bbwe\mise\bin"
# $shimPath = "$env:USERPROFILE\AppData\Local\mise\shims"
# $currentPath = [Environment]::GetEnvironmentVariable('Path', 'User')
# $newPath = $currentPath + ";" + $shimPath
# $newPath = $newPath + ";" + $mise_bin
# [Environment]::SetEnvironmentVariable('Path', $newPath, 'User')

# $mise_bin = "C:\Users\greninja-threadrip\AppData\Local\Microsoft\WinGet\Packages\jdx.mise_Microsoft.Winget.Source_8wekyb3d8bbwe\mise\bin"
# $currentPath = [Environment]::GetEnvironmentVariable('Path', 'User')
# $newPath = $newPath + ";" + $mise_bin
# [Environment]::SetEnvironmentVariable('Path', $newPath, 'User')

# winget
# %userprofile%\AppData\Local\Microsoft\WindowsApps

# Add custom path to PATH
$customPath = "C:\Users\greninja-threadrip\Documents\github\app"
if ($env:PATH -notlike "*$customPath*") {
    $env:PATH = "$env:PATH;$customPath"
}
$npm_path = "$env:appdata\npm"
$env:PATH = "$env:PATH;${npm_path}"