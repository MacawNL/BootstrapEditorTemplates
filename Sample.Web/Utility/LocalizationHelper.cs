using System;
using System.Threading;
using System.Web;
using System.Web.Mvc;

namespace BootstrapEditorTemplatesNameSpace.Utility
{
    public static class LocalizationHelper
    {
        public static IHtmlString MetaAcceptLanguage(this HtmlHelper html)
        {
            var acceptLang = HttpUtility.HtmlAttributeEncode(Thread.CurrentThread.CurrentUICulture.ToString());
            return new HtmlString(string.Format("<meta name=\"accept-language\" content=\"{0}\"/>", acceptLang));
        }
    }
}