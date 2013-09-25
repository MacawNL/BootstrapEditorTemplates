@using $rootnamespace$.Utility
@model object

<div class="form-group@(Html.ValidationErrorFor(m => m, " has-error"))">
    @Html.LabelFor(m => m, new { @class = "control-label" })
    <div class="controls">
        @Html.TextAreaFor(
            m => m,
            8, 8,
            ViewBag.ClearTextField == true ? new { @class = "form-control input-block-level clear-text-field" } : new { @class = "form-control input-block-level" } )
        @Html.ValidationMessageFor(m => m, null,  new { @class = "help-block" })
    </div>
</div>
