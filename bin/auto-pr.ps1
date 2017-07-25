param(
    # overwrite upstream param
    [String]$upstream = "hermanjustnu/scoop-emulators:master"
)

$bin = split-path (scoop which scoop)
$autopr = "$bin\auto-pr.ps1"
$dir = "$psscriptroot\.." # checks the parent dir
iex -command "$autopr -dir $dir -upstream $upstream $($args |% { "$_ " })"
