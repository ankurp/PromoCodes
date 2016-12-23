$(function() {
    $(".promocode-link").on("click", function(event) {
        event.preventDefault();
        var code = $("#promocode").val();
        window.location = window.location + "?promocode=" + code;
    });
});
