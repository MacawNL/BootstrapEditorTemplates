@using $rootnamespace$.Utility
<!DOCTYPE html>
<html lang="@LocalizationHelper.Lang">
    <head>
        <meta charset="utf-8">
        <title>@ViewBag.Title - My ASP.NET MVC Application</title>
        @RenderSection("meta", required: false)
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="~/Content/site" rel="stylesheet">

        @Html.Partial("_html5shiv")

        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="~/Content/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="~/Content/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="~/Content/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="~/Content/ico/apple-touch-icon-57-precomposed.png">
        <link href="~/Content/ico/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    </head>
    <body>
        @Html.Partial("/Views/Shared/_NavBar.BootstrapEditorTemplates.cshtml")

        @RenderSection("featured", required: false)

        <div class="container">
            @RenderBody()
            <hr />
            <div class="footer">
                <p>&copy; Company 2013</p>
            </div>
        </div>

        @Scripts.Render("~/bundles/jquery")
        @Scripts.Render("~/Scripts/bootstrap")
        @RenderSection("scripts", required: false)
    </body>
</html>
