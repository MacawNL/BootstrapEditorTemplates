using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.Mvc;

namespace $rootnamespace$.Utility
{
    public static class Validation
    {
        /// <summary>
        /// Checks the ModelState for an error, and returns the given error string if there is one, or null if there is no error
        /// Used to set class="error" on elements to present the error to the user
        /// </summary>
        /// <typeparam name="TModel"></typeparam>
        /// <typeparam name="TProperty"></typeparam>
        /// <param name="htmlHelper"></param>
        /// <param name="expression"></param>
        /// <param name="error"></param>
        /// <returns></returns>
        public static MvcHtmlString ValidationErrorFor<TModel, TProperty>(this HtmlHelper<TModel> htmlHelper, Expression<Func<TModel, TProperty>> expression, string error)
        {
            if (HasError(htmlHelper, ModelMetadata.FromLambdaExpression(expression, htmlHelper.ViewData),ExpressionHelper.GetExpressionText(expression)))
                return new MvcHtmlString(error);
            else
                return null;
        }


        private static bool HasError(this HtmlHelper htmlHelper, ModelMetadata modelMetadata, string expression)
        {
            string modelName = htmlHelper.ViewContext.ViewData.TemplateInfo.GetFullHtmlFieldName(expression);
            FormContext formContext = htmlHelper.ViewContext.FormContext;
            if (formContext == null)
                return false;

            if (!htmlHelper.ViewData.ModelState.ContainsKey(modelName))
                return false;

            ModelState modelState = htmlHelper.ViewData.ModelState[modelName];
            if (modelState == null)
                return false;

            ModelErrorCollection modelErrors = modelState.Errors;
            if (modelErrors == null)
                return false;

            return (modelErrors.Count > 0);
        }
    }
}
