$(function () {
    // Sidebar toggle behavior for responsive layout
    $(".sidebar-toggle").on("click", function (e) {
        e.preventDefault();
        $(".sidebar").toggleClass("open");
    });

    // Notification Panel Toggle
    $("#btnNotifications").on("click", function (e) {
        e.preventDefault();
        $("#notificationOverlay").fadeIn(150);
        $("#notificationPanel").addClass("open");
    });

    $("#btnCloseNotification, #notificationOverlay").on("click", function () {
        $("#notificationOverlay").fadeOut(150);
        $("#notificationPanel").removeClass("open");
    });

    // Password visibility toggle
    $(".password-toggle").on("click", function () {
        var input = $(this).closest(".password-wrapper").find("input");
        var icon = $(this).find("i");
        if (input.attr("type") === "password") {
            input.attr("type", "text");
            icon.removeClass("bi-eye").addClass("bi-eye-slash");
        } else {
            input.attr("type", "password");
            icon.removeClass("bi-eye-slash").addClass("bi-eye");
        }
    });
});
