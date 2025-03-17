param (
    [string]$SourceDirectory,
    [string]$ArchivePath
)

function Create-ZipArchive {
    param (
        [string]$source,
        [string]$destination
    )

    Add-Type -AssemblyName 'System.IO.Compression.FileSystem'
    [System.IO.Compression.ZipFile]::CreateFromDirectory($source, $destination)
}

Create-ZipArchive -source $SourceDirectory -destination $ArchivePath