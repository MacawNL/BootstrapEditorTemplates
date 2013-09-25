@using $rootnamespace$.Utility
@model Boolean?

@{
    var htmlAttributes = new RouteValueDictionary();
    if (ViewBag.@class != null)
    {
        htmlAttributes.Add("class", ViewBag.@class);
    }
}


<div class="form-group@(Html.ValidationErrorFor(m => m, " has-error"))">
    @Html.LabelFor(m => m, new { @class = "" })
    <div class="controls">
        @Html.CheckBox(
            "",
            Model.HasValue && Model.Value,
            htmlAttributes)
        @Html.ValidationMessageFor(m => m, null, new { @class = "help-block" })
    </div>
</div>
