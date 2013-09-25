Bootstrap 3 EditorTemplates
Maarten Sikkema, Macaw

TODO
Initialize this package by adding the following line in your App_Start in global.asax:

	BootstrapEditorTemplatesConfig.RegisterBundles();

This will initialize several script bundles that are used by the controls. 

Samples
The easiest way to see this NuGet package in action quick, is by adding the Bootstrap.MVC.EditorTemplates.Sample package to your MVC4+ project, and then browse to /BootstrapEditorTemplates in your project. 
You can see all the controls on one page.

What is in this package?
This NuGet package added the following things to your project:

- readme.txt
This file

App_Start\
- BootstrapEditorTemplatesConfig.cs
Initialization code. Registers javascript and css Bundles 

Utility\
- DateTimeExtensions.cs
- EnumDropDownList.cs
- LocalizationHelper.cs
- MarkdownHelper.cs
- Validation.cs
Support functions used by the Bootstrap 3 EditorTemplates.

Views\Shared\EditorTemplates\
- {type}.cshtml
The actual EditorTemplates

Content\themes\bootstrap\
- *.less
- *.css
This file contains the modified bootstrap files as .less sourcecode. They reference the unmodified files, that are in \Content\bootstrap. 
You need the Web Essentials Add In for Visual Studio if you want to modify the .less files and generate an updated bootstrap.css stylesheets from them.
You can copy this directory to add other themes, i.e. by downloading from bootswatch.com. Make sure to get the .less sources and not the compiled .css.


A Bootstrap 3 sample page showing all the templates. These can be removed and replaced with your own code:
- Content\themes\bootstrap\*
- Controllers\BootstrapEditorTemplatesController.cs
- Models\Inputs.cs
- Vieuws\BootstrapEditorTemplates\Index.cshtml
- Views\Shared\_Layout.BootstrapEditorTemplates.cshtml
-             \_NavBar.BootstrapEditorTemplates.cshtml
