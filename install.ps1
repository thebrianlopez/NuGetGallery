#powershell -exec Unrestricted -nopro -c "iex (new-object net.webclient).downloadstring('https://raw.githubusercontent.com/thebrianlopez/NuGetGallery/master/install.ps1')"
# install nuget
set-alias -name wr -value write-verbose

wr "Installing nuget"
(new-object net.webclient).downloadfile("https://nuget.org/nuget.exe","$env:userprofile\nuget.exe")

wr "add relevent sources"

wr "install packages"
set-alias -name nuget -value "$env:userprofile\nuget.exe"

wr "nuget list sources"

wr "nuget disable sources"

wr "nuget add custom sources"
iex "nuget sources add -name myget -source https://www.myget.org/F/thebrianlopez/api/v2"

wr "nuget install packages to default path"

wr "nuget config"
iex "nuget config -set repositoryPath=Programs"

wr "Complete"
iex "nuget install axsadministration -o $env:userprofile\downloads -excludeversion"
