$(document).ready(function () {
  $("a[data-confirm]").data({
    "confirm-fade": true,
    "confirm-title": "Call to Buzz"
  });
  $("a[data-method=delete]").data({
    "confirm-title": "Warning",
    "confirm-cancel": "Cancel",
    "confirm-cancel-class": "btn-cancel",
    "confirm-proceed": "Delete",
    "confirm-proceed-class": "btn-danger"
  });
});