// Redirect on select_tag change
$("#author").change(function () {
  if (window.location.href.includes("?")) {
    window.location = window.location.href + "&author=" + $(this).val();
  } else {
    window.location = window.location.href + "?author=" + $(this).val();
  }
});

$("#order").change(function () {
  if (window.location.href.includes("?")) {
    window.location = window.location.href + "&order=" + $(this).val();
  } else {
    window.location = window.location.href + "?order=" + $(this).val();
  }
});
