using System;
using System.Web;
using System.Web.Optimization;
using System.Web.WebPages;

namespace BootstrapEditorTemplatesNameSpace
{
    public class BootstrapEditorTemplatesSampleConfig
    {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkId=254725
        public static void Initialize()
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