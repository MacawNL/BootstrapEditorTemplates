@using $rootnamespace$.Utility
@model object

<div class="form-group@(Html.ValidationErrorFor(m => m, " has-error"))">
    @Html.LabelFor(m => m, new { @class = "control-label" })
    <div class="controls">
        @Html.TextBox(
            "",
            ViewData.TemplateInfo.FormattedModelValue,
            ViewBag.ClearTextField == true ? new { @class = "form-control clear-text-field input-block-level" } : new { @class = "form-control input-block-level" } )
        @Html.ValidationMessageFor(m => m, null, new { @class = "help-block" })
    </div>
</div>
