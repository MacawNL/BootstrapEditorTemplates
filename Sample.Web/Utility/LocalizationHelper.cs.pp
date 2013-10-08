using System;
using System.Threading;
using System.Web;
using System.Web.Mvc;

namespace $rootnamespace$.Utility
{
    public static class LocalizationHelper
    {
        [Obsolete("specifying the language through <meta http-equiv=\"content-language\" content= > is obsolete. Use <html lang=> instead")]
        public static IHtmlString MetaContentLanguage(this HtmlHelper html)
        {
            var acceptLang = HttpUtility.HtmlAttributeEncode(Thread.CurrentThread.CurrentUICulture.ToString());
            return new HtmlString(string.Format("<meta http-equiv=\"content-language\" content=\"{0}\"/>", acceptLang));
        }

        public static string Lang
        {
            get
            {
                return HttpUtility.HtmlAttributeEncode(Thread.CurrentThread.CurrentUICulture.ToString());
            }
        }
    }
}