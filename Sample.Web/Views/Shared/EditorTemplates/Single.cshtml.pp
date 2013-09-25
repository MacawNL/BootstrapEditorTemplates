@using $rootnamespace$.Utility
@model float?

@{
    float f;
    if (!Model.HasValue)
    {
        f = 0.0f;
    }
    else
    {
        f = Model.Value;
    }
}

<div class="form-group@(Html.ValidationErrorFor(m => m, " has-error"))">
    @Html.LabelFor(m => m, new { @class = "control-label" })
    <div class="input-group">
        @Html.TextBox(
        "", f,
        ViewBag.ClearTextField == true ? new { @class = "form-control clear-text-field input-block-level" } : new { @class = "form-control input-block-level" })<span class="input-group-addon">0,00</span>
    </div>
    @Html.ValidationMessageFor(m => m, null, new { @class = "help-block" })
</div>
