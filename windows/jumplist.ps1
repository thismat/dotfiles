# Basic Jumplist helper script for Powershell
$locations = @{}

function at {
        param (
                [string]$key,
                [string]$dest
        )

        if ($dest.StartsWith(".")) {
                $dest = (Get-Location)
        }

        $locations[$key] = $dest
}

function gt {
        param (
                [string]$dest
        )

        & cd $locations[$dest]
}

function et {
        param (
                [string]$dest
        )

        & explorer $locations[$dest]
}
