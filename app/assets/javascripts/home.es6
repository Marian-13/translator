$(document).ready(function() {
  $("#language-detector").click(function() {
    $.ajax({
      method: "GET",
      url: "language_detections.js",
      data: { text_string: $("#input-text").val() }
    });
  });
})

$(document).ready(function() {
  $("#text-translator").click(function() {
    $.ajax({
      method: "GET",
      url: "text_translations.js",
      data: {
        from_language_name_string: $("#input-text-language").val(),
        to_language_name_string: $("#output-text-language").val(),
        text_string: $("#input-text").val()
      }
    });
  });
})

$(document).ready(function() {
  $("#swap-language").click(function() {
    let inputLanguageName  = $("#input-text-language").val();
    let outputLanguageName = $("#output-text-language").val();

    $("#input-text-language").val(outputLanguageName);
    $("#output-text-language").val(inputLanguageName);
  })
})
