<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucJS.ascx.cs" Inherits="ucControls_ucJS" %>


<script src="assets/vendor/jquery/jquery.min.js"></script>
<script src="assets/vendor/jquery.plugin/jquery.plugin.min.js"></script>
<script src="assets/js/jquery-ui.js"></script>
<script src="assets/js/jquery-search.js"></script>
<script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
<script src="assets/vendor/owl-carousel/owl.carousel.min.js"></script>
<script src="assets/vendor/zoom/jquery.zoom.min.js"></script>
<script src="assets/vendor/jquery.countdown/jquery.countdown.min.js"></script>
<script src="assets/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="assets/vendor/skrollr/skrollr.min.js"></script>

<!-- Main JS -->
<script src="assets/js/main.min.js"></script>
<script>
    $(function ($) {
        InitAutoSearch(".search-query", "/ServiceUtility.asmx/SearchProduct", "/ProductGrid.aspx?keyword={0}");
    });
</script>
