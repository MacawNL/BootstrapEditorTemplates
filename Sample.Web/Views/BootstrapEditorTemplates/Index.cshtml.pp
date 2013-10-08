@model $rootnamespace$.Models.Inputs

@{
    ViewBag.Title = "Inputs";
    Layout = "~/Views/Shared/_Layout.BootstrapEditorTemplates.cshtml";
}

<h1>@ViewBag.Title <small>test page for Bootstrap 3 EditorTemplates</small></h1>
@using (Html.BeginForm(null, null, null, FormMethod.Post, new { @class = "form-horizontal well" }))
{
    @Html.AntiForgeryToken()
    @Html.ValidationSummary(true)

    <fieldset>
        <legend>Test all EditorTemplates</legend>
        <div>

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

        </div>
        <input class="btn btn-primary" type="submit" value="Done" />
   
    </fieldset>

}

@section Scripts {
    @Scripts.Render("~/Scripts/val")
    @Scripts.Render("~/Scripts/md")
}
