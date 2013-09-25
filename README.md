EditorTemplates for Bootstrap 3
========================

This project contains MVC EditorTemplates for Bootstrap 3. EditorTemplates are partial views that are rendered very easily, based on the type.
EditorTemplates are installed in \Views\Shared\EditorTemplates, they are instantiated from a View like this (using Razor syntax):

	@Html.EditorFor(m => m.BoolValue)
	@Html.EditorFor(m => m.DateValue)
	@Html.EditorFor(m => m.DecimalValue)
	@Html.EditorFor(m => m.EnumValue)
	@Html.EditorFor(m => m.FileValue)
	@Html.EditorFor(m => m.FloatValue)
	@Html.EditorFor(m => m.IntValue)
	@Html.EditorFor(m => m.LongTextValue, "Multiline")
	@Html.EditorFor(m => m.MarkdownValue, "Markdown")
	@Html.EditorFor(m => m.PasswordValue, "Password")
	@Html.EditorFor(m => m.StringValue)
    @Html.EditorFor(m => m.TimeSpanValue)

These templates offer basic controls like String and Decimal, and also some advanced controls that are not part of the standard bootstrap distribution. These are:

+ Markdown rich text editor (based on MarkDownDeep.NET)
+ Date control (based on http://www.eyecon.ro/bootstrap-datepicker)
+ Time control (based on http://www.github.com/jdewit/bootstrap-timepicker)

Because the controls templates are delivered as Razor views, they can be easily modified and adapted to your needs. By default, they render a complete control group, including label and inline error text.
These EditorTemplates are aware of your globalization settings and support unobtrusive validation.
Two web.config setting are added to specify the server-side culture and timezone. 
These settings are also used client-side from javascript, using the jQuery.Globalize dependency and some custom javascript.
