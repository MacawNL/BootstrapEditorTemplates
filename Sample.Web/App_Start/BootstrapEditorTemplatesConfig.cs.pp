using System;
using System.Web;
using System.Web.Optimization;
using System.Web.WebPages;

namespace $rootnamespace$
{
    public class BootstrapEditorTemplatesConfig
    {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkId=254725
        public static void RegisterBundles()
        {
            BundleCollection bundles = BundleTable.Bundles;

            bundles.Add(new ScriptBundle("~/Scripts/val").Include(
                        "~/Scripts/jquery.unobtrusive*",
                        "~/Scripts/jquery.validate*",
                        "~/Scripts/validation.js"
                        ));

            bundles.Add(new ScriptBundle("~/Scripts/bootstrap").Include(
                        "~/Scripts/globalize/globalize.js",
                        "~/Scripts/globalize/cultures/globalize.culture." + System.Globalization.CultureInfo.CurrentCulture.ToString() + ".js",
                        "~/Scripts/bootstrap*",
                        "~/Scripts/filebutton.js",
                        "~/Scripts/globalize-datepicker.js"
                        ));

            bundles.Add(new ScriptBundle("~/Scripts/md").Include(
                "~/Scripts/MarkdownDeepLib.min.js",
                "~/Scripts/markdown.js"
                ));

            bundles.Add(new StyleBundle("~/Content/site").Include(
                 "~/Content/themes/bootstrap/bootstrap.css"));

            // By default it will exclude the MarkdownDeepLib.min.js file because of its .min.js extension.
            bundles.IgnoreList.Clear();
            // BundleTable.EnableOptimizations = true;
        }
    }
}