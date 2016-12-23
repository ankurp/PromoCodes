$(function() {
    $(".promocode-link").on("click", function(event) {
        event.preventDefault();
        var code = $("#promocode").val();
        var redirecUrl = window.location.protocol + "//" + window.location.hostname + ":" + window.location.port + window.location.pathname + "?promocode=" + code;
        window.location = redirecUrl;
    });
});
