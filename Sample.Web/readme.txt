Bootstrap 3 EditorTemplates
Maarten Sikkema, Macaw

Initialize this package by adding the following line in your App_Start in global.asax:

	BootstrapEditorTemplatesConfig.RegisterBundles();

If you installed the Sample package:
- Browse to /BootstrapEditorTemplates in the browser to see a sample page showing all controls
If you just installed the EditorTemplates:
- Use the controls on any View, using Html helpers such as @Html.EditorFor(m => m.DateValue). Make sure to include the required javascript files in your view:
    @Scripts.Render("~/bundles/jquery")
    @Scripts.Render("~/Scripts/bootstrap")
    @Scripts.Render("~/Scripts/val") // when you need clientside validation
    @Scripts.Render("~/Scripts/md")  // when the page has markdown editing


What is in this package?

App_Start\
- BootstrapEditorTemplatesConfig.cs
Initialization code. Registers javascript and css Bundles. You'll probably merge this code in your existing BundleConfig class.

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
This file contains the modified bootstrap files as .less sourcecode. They reference the unmodified files that are in \Content\bootstrap. 
You need the Web Essentials Add In for Visual Studio if you want to modify the .less files and generate an updated bootstrap.css stylesheets from them.
You can copy this directory to add other themes, i.e. by downloading from bootswatch.com. Make sure to get the .less sources and not the compiled .css.

The Sample:
- Models\Inputs.cs
- Controllers\BootstrapEditorTemplatesController.cs
- Vieuws\BootstrapEditorTemplates\Index.cshtml
- Views\Shared\_Layout.BootstrapEditorTemplates.cshtml
-             \_NavBar.BootstrapEditorTemplates.cshtml
These files make up the Bootstrap 3 sample page showing all the templates. You'll probably merge the code into your "real" _Layout.cshtml and _NavBar.cshtml
