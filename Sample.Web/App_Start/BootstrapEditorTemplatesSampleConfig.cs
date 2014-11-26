using System;
using System.Web;
using System.Web.Optimization;
using System.Web.WebPages;

[assembly: WebActivatorEx.PostApplicationStartMethod(
    typeof(BootstrapEditorTemplatesNameSpace.BootstrapEditorTemplatesSampleConfig), "PostStart")]

namespace BootstrapEditorTemplatesNameSpace
{
    public class BootstrapEditorTemplatesSampleConfig
    {
        // This lets the /BootstrapEditorTemplates View use its own Layout
        public static void PostStart()
        {
            // BootstrapEditorTemplates Sample Initialization
            DisplayModeProvider.Instance.Modes.Insert(0, new DefaultDisplayMode("BootstrapEditorTemplates")
            {
                // Register a DisplayMode of "Facebook" for views that are rendered from this area
                ContextCondition = c => c.Request.Url.Segments.Length >= 2 && c.Request.Url.Segments[1].TrimEnd('/').Equals("BootstrapEditorTemplates", StringComparison.OrdinalIgnoreCase)
            });
            // BundleTable.EnableOptimizations = true;
        }
    }
}