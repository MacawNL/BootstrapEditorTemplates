@using $rootnamespace$.Utility
@model int?

@{
    int i;
    if (!Model.HasValue)
    {
        i = 0;
    }
    else
    {
        i = Model.Value;
    }
    
    var htmlAttributes = new RouteValueDictionary();
    if (ViewBag.@class != null)
    {
        htmlAttributes.Add("class", "form-control " + ViewBag.@class);
    }
    else
    {
        htmlAttributes.Add("class", "form-control");
    }
       
    if (ViewBag.placeholder != null)
    {
        htmlAttributes.Add("placeholder", ViewBag.placeholder);
    }
}

<div class="form-group@(Html.ValidationErrorFor(m => m, " has-error"))">
    @Html.LabelFor(m => m, new { @class = "control-label" })
    <div class="controls">
        @Html.TextBox(
            "",
            ViewData.TemplateInfo.FormattedModelValue,
            htmlAttributes)
        @Html.ValidationMessageFor(m => m, null, new { @class = "help-block" })
    </div>
</div>
