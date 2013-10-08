/* create markdowneditor for textarea class="mdd_editor" */
(function ($) {

    /* initialize markdown editor */
    $("textarea.mdd_editor").MarkdownDeep({ help_location: "/Scripts/mdd_help.htm", ExtraMode: true });

    /* initialize dropdown menus */
    $(".dropdown-toggle").dropdown();
})(jQuery);
