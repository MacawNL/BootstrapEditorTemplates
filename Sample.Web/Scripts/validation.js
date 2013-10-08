/// <reference path="../jquery-1.9.1.js" />
/// <reference path="../jquery.globalize/globalize.js" />
/// <reference path="../moment.js" />


$.validator.setDefaults({
    highlight: function (element) {
        $(element).closest(".form-group").addClass("has-error");
    },
    unhighlight: function (element) {
        $(element).closest(".form-group").removeClass("has-error");
    }
});

$(function () {
    /* initialize globalization, for parsing dates and decimals */
    var data = $("html").attr("lang") || $("meta[http-equiv='content-language']").attr("content") || "en-US";
    Globalize.culture(data);

    $.validator.methods.number = function (value, element) {
        return this.optional(element) || !isNaN(Globalize.parseFloat(value));
    }

    $.validator.methods.date = function (value, element) {
        return this.optional(element) || !isNaN(Globalize.parseDate(value));
    }
    //moment.lang(data, {
    //    days: Globalize.culture().calendar.days.names,
    //    daysShort: Globalize.culture().calendar.days.namesAbbr,
    //    daysMin: Globalize.culture().calendar.days.namesShort,
    //    months: Globalize.culture().calendar.months.names,
    //    monthsShort: Globalize.culture().calendar.months.namesAbbr
    //});
});

