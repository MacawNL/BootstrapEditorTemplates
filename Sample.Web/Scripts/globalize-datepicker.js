/// <reference path="globalize/globalize.js" />

$(function () {
    // initialize it so it uses calendar data from jquery.globalize.js (initialized earlier)

    $.fn.datepicker.dates['globalize'] = {
        days: Globalize.culture().calendar.days.names,
        daysShort: Globalize.culture().calendar.days.namesAbbr,
        daysMin: Globalize.culture().calendar.days.namesShort,
        months: Globalize.culture().calendar.months.names,
        monthsShort: Globalize.culture().calendar.months.namesAbbr,
        weekStart: Globalize.culture().calendar.firstDay,
        today: "Today",
        clear: "Clear"
    };
});