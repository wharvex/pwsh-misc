oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\clean-detailed.omp.json" | Invoke-Expression

function CD-Func {
	Param($PATH_ARG)
	Push-Location -Path $PATH_ARG
}

function AGI {
    Param($SEARCH_STRING)
    ls -r | select-string $SEARCH_STRING
}

function Shank-Func {
	dotnet run --project "C:\Users\tgudl\OneDrive\projects\c-sharp\ShankCompiler" $args
}

function Git-Status-Short {
    git status --short
}

function Start-Eclipse {
    start C:\Users\tgudl\scoop\apps\eclipse-java\current\eclipse.exe
}

function Open-Commands {
    vim 'G:\My Drive\docs_kingfisher\pwsh_cmds'
}

function Open-Vimrc {
    vim 'C:\Users\tgudl\vimfiles\vimrc'
}

function Start-Pgadmin {
    start 'C:\Users\tgudl\scoop\apps\postgresql\current\pgAdmin 4\runtime\pgAdmin4.exe'
}

function Start-Obsidian {
    start 'C:\Users\tgudl\scoop\apps\obsidian\current\Obsidian.exe'
}

function Open-Shank-Lang-Def {
    start 'C:\Users\tgudl\OneDrive\projects\c-sharp\ShankCompiler\Shank\shank_lang_def.pdf'
}

function List-Sort-Write {
    ls | sort LastWriteTime
}

function Change-Dir-Downloads {
    cd C:\Users\tgudl\Downloads
}

function Change-Dir-OneDrive {
    cd C:\Users\tgudl\OneDrive
}

function Change-Dir-OneDriveProjects {
    cd C:\Users\tgudl\OneDrive\projects
}

function Change-Dir-CsharpProjects {
    cd 'C:\Users\tgudl\OneDrive\projects\c-sharp'
}

function Change-Dir-Kaleidoscope {
    cd 'C:\Users\tgudl\OneDrive\projects\c-sharp\LLVMSharp\samples\KaleidoscopeTutorial'
}

function Change-Dir-LlvmSharp {
    cd 'C:\Users\tgudl\OneDrive\projects\c-sharp\LLVMSharp'
}

function Change-Dir-Notes {
    cd C:\Users\tgudl\OneDrive\Documents\notes
}

function Change-Dir-Scripts {
    cd C:\Users\tgudl\OneDrive\Documents\WindowsPowerShell\Scripts
}

function Change-Dir-Shank {
    cd 'C:\Users\tgudl\OneDrive\projects\c-sharp\ShankCompiler'
}

function Git-Log-Stat {
    git log --stat
}

Remove-Item Alias:cd
Set-Alias -Name cd -Value CD-Func
Set-Alias -Name pd -Value Pop-Location
Set-Alias -Name shank -Value Shank-Func
Set-Alias -Name gss -Value Git-Status-Short
Set-Alias -Name eclipse -Value Start-Eclipse
Set-Alias -Name oc -Value Open-Commands
Set-Alias -Name pgadmin -Value Start-Pgadmin
Set-Alias -Name obsidian -Value Start-Obsidian
Set-Alias -Name sld -Value Open-Shank-Lang-Def
Set-Alias -Name lsw -Value List-Sort-Write
Set-Alias -Name cdd -Value Change-Dir-Downloads
Set-Alias -Name cdo -Value Change-Dir-OneDrive
Set-Alias -Name cdp -Value Change-Dir-OneDriveProjects
Set-Alias -Name cdcs -Value Change-Dir-CsharpProjects
Set-Alias -Name cdn -Value Change-Dir-Notes
Set-Alias -Name cds -Value Change-Dir-Scripts
Set-Alias -Name cdsh -Value Change-Dir-Shank
Set-Alias -Name cdk -Value Change-Dir-Kaleidoscope
Set-Alias -Name cdl -Value Change-Dir-LlvmSharp
Set-Alias -Name vrc -Value Open-Vimrc
Set-Alias -Name gls -Value Git-Log-Stat

Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1
Import-Module posh-git

Set-PSReadlineOption -EditMode vi
Set-PSReadlineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

$env:path = $env:path + ';C:\Users\tgudl\AppData\Local\Packages\PythonSoftwareFoundation.Python.3.12_qbz5n2kfra8p0\LocalCache\local-packages\Python312\Scripts;C:\Program Files (x86)\llvm\bin;C:\Program Files\dotnet\packs\Microsoft.NET.Runtime.Emscripten.3.1.34.Python.win-x64\8.0.5\tools'

$env:ANDROID_HOME = 'C:\Users\tgudl\AppData\Local\Android\Sdk'

. ConvertPPTXtoPDF.ps1
. ConvertDOCXtoPDF.ps1
. NotesScript.ps1
. 'C:\Users\tgudl\OneDrive\projects\c-sharp\ShankCompiler\ShankTestScript.ps1'
. CollectNotesForWeek.ps1
