<#
.Synopsis
   Short description
.DESCRIPTION
   Long description
.EXAMPLE
   Example of how to use this cmdlet
.EXAMPLE
   Another example of how to use this cmdlet
#>
function Encode-AudioForWebsite
{
    [CmdletBinding()]
    [Alias()]
    [OutputType([int])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        $SourcePath,

        # Param2 help description
        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName=$true,Position=1)]
        $OutputFile
    )

    & ffmpeg -i "$SourcePath" -write_xing 0 -id3v2_version 0 -ar 48000 -ac 1 -b:a 64k "D:\work\radiocompanions.co.uk\assets\audio\$OutputFile"
}