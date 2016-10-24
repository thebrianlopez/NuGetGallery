#powershell -exec Unrestricted -nopro -c "iex (new-object net.webclient).downloadstring('https://raw.githubusercontent.com/thebrianlopez/NuGetGallery/master/install.ps1')"
# install nuget
set-alias -name wr -value write-verbose

wr "Installing nuget"
(new-object net.webclient).downloadfile("https://nuget.org/nuget.exe","$env:userprofile\nuget.exe")

wr "Set the alias"
set-alias -name nuget -value "$env:userprofile\nuget.exe"

wr "Nuget Update Self
nuget update -self

wr "add relevent sources"
nuget sources add -name "myget" -source "https://www.myget.org/F/thebrianlopez/api/v2" -verbosity detailed

wr "Configure default path for packages"
nuget config -set repositoryPath=Programs

wr "nuget list sources"
nuget sources list

wr "nuget disable sources"
nuget install axsadministration -o $env:userprofile\downloads -excludeversion

wr "Complete"
