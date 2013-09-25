@using $rootnamespace$.Utility

<div class="form-group@(Html.ValidationErrorFor(m => m, " has-error"))">
    @Html.LabelFor(m => m, new { @class = "control-label" })
    <div class="control-group">
        <span class="btn btn-default btn-file">
            Upload<input type="File" name="@Html.IdFor(m => m)" id="@Html.IdFor(m => m)" class="btn-default btn-file" />
        </span>
    </div>
</div>
