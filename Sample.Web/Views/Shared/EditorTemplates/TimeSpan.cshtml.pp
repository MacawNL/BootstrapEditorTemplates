@using $rootnamespace$.Utility
@model TimeSpan?

@{
    TimeSpan ts;
    
    if (Model == null)
    {
        ts = TimeSpan.FromMinutes(10);
    }
    else
    {
        ts = Model.Value;
    }
     
}
<div class="form-group@(Html.ValidationErrorFor(m => m, " has-error"))">
    @Html.LabelFor(m => m, new { @class = "control-label" })
    <div class="controls">
        @Html.TextBoxFor(m => m, "hh\\:mm", new { @Value = ts.ToString("hh\\:mm"), @class="form-control timepicker", data_provide="timepicker", data_minute_step="5", data_show_meridian="false", data_disable_focus="true", data_template = "dropdown", data_default_time="value"  })
        @Html.ValidationMessageFor(m => m, null, new { @class="help-block" })
    </div>
</div>
