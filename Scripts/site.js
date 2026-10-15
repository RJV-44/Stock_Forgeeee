$(function () {
    // Sidebar toggle and off-canvas mobile behavior
    function openSidebar() {
        $(".sidebar").addClass("open");
        $("#sidebarBackdrop").addClass("show");
        $("body").addClass("sidebar-open-locked");
    }

    function closeSidebar() {
        $(".sidebar").removeClass("open");
        $("#sidebarBackdrop").removeClass("show");
        $("body").removeClass("sidebar-open-locked");
    }

    $(document).on("click", "#btnSidebarToggle, .sidebar-toggle, .sidebar-toggle-btn", function (e) {
        e.preventDefault();
        e.stopPropagation();
        if ($(".sidebar").hasClass("open")) {
            closeSidebar();
        } else {
            openSidebar();
        }
    });

    $(document).on("click", "#btnCloseSidebar, .sidebar-close-btn, #sidebarBackdrop", function (e) {
        e.preventDefault();
        closeSidebar();
    });

    // Auto-close sidebar on mobile when a nav link is clicked
    $(document).on("click", ".sidebar-nav a.nav-item", function () {
        if ($(window).width() <= 992) {
            closeSidebar();
        }
    });

    // Close on Escape key press
    $(document).on("keydown", function (e) {
        if (e.key === "Escape" || e.keyCode === 27) {
            closeSidebar();
            if ($("#notificationPanel").hasClass("open")) {
                $("#notificationOverlay").fadeOut(150);
                $("#notificationPanel").removeClass("open");
            }
        }
    });

    // Clean up mobile sidebar state when resizing back to desktop
    $(window).on("resize", function () {
        if ($(window).width() > 992 && $(".sidebar").hasClass("open")) {
            closeSidebar();
        }
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
