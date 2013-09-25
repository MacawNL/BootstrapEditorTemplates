@using $rootnamespace$.Utility
@model object
<link rel="stylesheet" type="text/css" href="/Scripts/mdd_styles.css" />
<div class="form-group@(Html.ValidationErrorFor(m => m, " has-error"))">
    @Html.LabelFor(m => m, new { @class = "control-label" })
        <div class="mdd_toolbar"></div>
        @Html.TextAreaFor(
            m => m,
            8, 15,
            ViewBag.ClearTextField == true ? new { @class = "form-control mdd_editor clear-text-field" } : new { @class = "form-control mdd_editor" } )
        @Html.ValidationMessageFor(m => m, null,  new { @class = "help-block" })
    <br />
    <label>Preview</label>
    <hr />
    <div class="mdd_preview"></div>
    <hr />
</div>
