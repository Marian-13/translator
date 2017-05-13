// detect language
$(document).ready(function() {
  $("#language-detector").click(function() {
    $.ajax({
      method: "GET",
      url: "language_detections.js",
      data: { text_string: $("#input-text").val() }
    });
  });
})

// translate text
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

// swap language
$(document).ready(function() {
  $("#swap-language").click(function() {
    let inputLanguageName  = $("#input-text-language").val();
    let outputLanguageName = $("#output-text-language").val();

    $("#input-text-language").val(outputLanguageName);
    $("#output-text-language").val(inputLanguageName);
  })
})

// speak input text
$(document).ready(function() {
  $("#speak-input-text").click(function() {
    let inputText         = $("#input-text").val();
    let inputLanguageName = $("#input-text-language").val();

    let langugeCode =
      convertLanguageNameToArtyomLanguageCode(inputLanguageName);

    if (inputText && langugeCode) {
      artyom.say(inputText, {
        lang: langugeCode
      });
    }
  })
})

// copy output text
$(document).ready(function() {
  let copyOutputText = $("#copy-output-text");
  copyOutputText.tooltip({
    trigger: 'manual',
    title: 'Copied!',
    placement: 'bottom'
  });

  let clipboard = new Clipboard("#copy-output-text");

  clipboard.on('success', function(e) {
    copyOutputText.tooltip("show");
    setTimeout(function() {
      copyOutputText.tooltip("hide");
    }, 2000)
  });
})
