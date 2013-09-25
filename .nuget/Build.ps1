function ReplaceStringsInString([string]$text, [Hashtable]$replacements)
{
    foreach ($replacement in $replacements.GetEnumerator())
    {
        $text = $text.Replace($replacement.Name, $replacement.Value);
    }
    $text
}

function CreateTemplateFile([string]$filePath, [Hashtable]$replacements)
{
    Write-Host $filePath
    $content = [System.IO.File]::ReadAllText($filePath)
    $content = ReplaceStringsInString -text $content -replacements $replacements
    [System.IO.File]::WriteAllText($($filePath + ".pp"), $content, [System.Text.Encoding]::UTF8)
}

function Build()
{
    $contentReplacements = @{
        "BootstrapEditorTemplatesNameSpace" = '$rootnamespace$'
    }

	$files = @(
		"..\Sample.Web\App_Start\BootstrapEditorTemplatesConfig.cs",
		"..\Sample.Web\Controllers\BootstrapEditorTemplatesController.cs",
		"..\Sample.Web\Utility\DateTimeExtensions.cs",
		"..\Sample.Web\Utility\EnumDropDownList.cs",
		"..\Sample.Web\Utility\LocalizationHelper.cs",
		"..\Sample.Web\Utility\MarkdownHelper.cs",
		"..\Sample.Web\Utility\Validation.cs",

		#Sample
		"..\Sample.Web\Controllers\BootstrapEditorTemplatesController.cs",
		"..\Sample.Web\Models\Inputs.cs",
		"..\Sample.Web\Views\BootstrapEditorTemplates\Index.cshtml",
		"..\Sample.Web\Views\Shared\_Layout.BootstrapEditorTemplates.cshtml",
		"..\Sample.Web\Views\Shared\_NavBar.BootstrapEditorTemplates.cshtml"
	)
	
    $files += Get-ChildItem "..\Sample.Web\Views\Shared\EditorTemplates\*.cshtml" -File


    foreach ($file in $files)
	{
		CreateTemplateFile -filePath $file -replacements $contentReplacements
	}
}

Build

$dir = (Split-Path $MyInvocation.MyCommand.Path)
& (Join-Path $dir NuGet.exe) Pack Bootstrap.MVC.EditorTemplates.nuspec
& (Join-Path $dir NuGet.exe) Pack Bootstrap.MVC.EditorTemplates.Sample.nuspec