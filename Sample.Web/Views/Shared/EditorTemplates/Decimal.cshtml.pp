@using $rootnamespace$.Utility
@model decimal?

<div class="form-group@(Html.ValidationErrorFor(m => m, " has-error"))">
    @Html.LabelFor(m => m, new { @class = "control-label" })
    <div class="input-group">
        <span class="input-group-addon">&euro;</span>@Html.TextBox(
        "",
        Model == null ? "" : String.Format(System.Globalization.CultureInfo.CurrentCulture, "{0:F2}", ViewData.ModelMetadata.Model),
        ViewBag.ClearTextField == true ? new { @class = "form-control clear-text-field input-block-level" } : new { @class = "form-control input-block-level" })</span>
    </div>
    @Html.ValidationMessageFor(m => m, null, new { @class = "help-block" })
</div>
