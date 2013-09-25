@using $rootnamespace$.Utility
@model object


<div class="form-group@(Html.ValidationErrorFor(m => m, " has-error"))">
    @Html.LabelFor(m => m, new { @class = "control-label" })
    @Html.EnumDropDownListFor(m => m, new { @class = "form-control" })
    @Html.ValidationMessageFor(m => m, null, new { @class = "help-block" })
</div>
