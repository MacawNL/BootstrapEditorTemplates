Bootstrap 3 EditorTemplates
Maarten Sikkema, Macaw

Initialize this package by adding the following line in your App_Start in global.asax:

	BootstrapEditorTemplatesConfig.RegisterBundles();

Then browse to /BootstrapEditorTemplates in the browser to see a sample page showing all controls 


What is in this package?

The EditorTemplates: 
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

Scripts\
- bootstrap-datepicker.js
- bootstrap-timepicker.js
- filebutton.js
- globalize-datepicker.js
- markdown.js
- validation.js
Initialization and glue code for the bootstrap controls and validation


Content\themes\bootstrap\
- *.less
- *.css
This file contains the modified bootstrap files as .less sourcecode. They reference the unmodified files, that are in \Content\bootstrap. 
You need the Web Essentials Add In for Visual Studio if you want to modify the .less files and generate an updated bootstrap.css stylesheets from them.
You can copy this directory to add other themes, i.e. by downloading from bootswatch.com. Make sure to get the .less sources and not the compiled .css.

The Sample:
- Content\themes\bootstrap\*
- Controllers\BootstrapEditorTemplatesController.cs
- Models\Inputs.cs
- Vieuws\BootstrapEditorTemplates\Index.cshtml
- Views\Shared\_Layout.BootstrapEditorTemplates.cshtml
-             \_NavBar.BootstrapEditorTemplates.cshtml

These files make up the Bootstrap 3 sample page showing all the templates.
