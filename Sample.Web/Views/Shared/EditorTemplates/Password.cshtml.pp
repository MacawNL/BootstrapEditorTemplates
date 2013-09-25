@using $rootnamespace$.Utility
@model object

@{
    var htmlAttributes = new RouteValueDictionary();
    if (ViewBag.@class != null)
    {
        htmlAttributes.Add("class", "form-control " + ViewBag.@class);
    }
    else
    {
        htmlAttributes.Add("class", "form-control");
    }
}


<div class="form-group@(Html.ValidationErrorFor(m => m, " has-error"))">
    @Html.LabelFor(m => m, new { @class = "control-label" })
    <div class="controls">
        @Html.Password(
            "",
            ViewData.TemplateInfo.FormattedModelValue,
            htmlAttributes)
        @Html.ValidationMessageFor(m => m, null, new { @class = "help-block" })
    </div>
</div>