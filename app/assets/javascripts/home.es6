// detect language
$(document).ready(function() {
  $("#detect-language").click(function() {
    $.ajax({
      method: "GET",
      url: "language_detections.js",
      data: { text_string: $("#input-text").val() }
    });
  });
})

// translate text
$(document).ready(function() {
  $("#translate-text").click(function() {
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
    if (inputLanguageName) {
      $("#output-text-language").val(inputLanguageName);
    }
  })
})

// speak input text
$(document).ready(function() {
  $("#speak-input-text").click(function() {
    let inputText         = $("#input-text").val(); // input-text -> input
    let inputLanguageName = $("#input-text-language").val();
    speakText(inputText, inputLanguageName);
  })
})

// speak output text
$(document).ready(function() {
  $("#speak-output-text").click(function() {
    let outputText         = $("#output-text").text(); // output-text -> div
    let outputLanguageName = $("#output-text-language").val();
    speakText(outputText, outputLanguageName);
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

// toggle phrasebook container
$(document).ready(function() {
  $("#toogle-phrasebook-container").click(function() {
    let inputTextContainer  = $("#input-text-container");
    let outputTextContainer = $("#output-text-container");
    let phrasebookContainer = $("#phrasebook-container");

    if (phrasebookContainer.is(":visible")) {
      inputTextContainer.removeClass("col-md-4").addClass("col-md-5");
      outputTextContainer.removeClass("col-md-4").addClass("col-md-5");
      phrasebookContainer.hide();
    } else {
      inputTextContainer.removeClass("col-md-5").addClass("col-md-4");
      outputTextContainer.removeClass("col-md-5").addClass("col-md-4");
      phrasebookContainer.show();
    }
  })
})

// add entry to phrasebook entries
$(document).ready(function() {
  $("#add-entry-to-phrasebook-entries").click(function() {
    let inputText  = $("#input-text").val();
    let outputText = $("#output-text").text();

    if (inputText && outputText) {
      $.ajax({
        method: "POST",
        url: "phrasebook_entries.js",
        data: {
          input_text: inputText,
          output_text: outputText
        }
      });
    }
  })
})

// remove entry from phrasebook entries
$(document).ready(function() {
  $("#phrasebook-entries")
    .on("click", ".remove-entry-from-phrasebook-entries", function() {
      $(this).parent().parent().remove();
    })
})

// load phrasebook entries
$(document).ready(function() {
  $("#load-phrasebook-entries").click(function() {
    let phrasebookEntries = $("#phrasebook-entries");
    let limit  = phrasebookEntries.data("limit");
    let offset = phrasebookEntries.data("offset");

    console.log(limit);
    console.log(limit === 0);

    if (limit === 0) { // TODO Refactor
      limit = 3;
      offset = 0;
      phrasebookEntries.data("limit", limit);
      phrasebookEntries.data("offset", offset);
      phrasebookEntries.empty();
    }

    $.ajax({
      method: "GET",
      url: "phrasebook_entries.js",
      data: {
        limit: limit,
        offset: offset
      }
    });
  })
})

// search phrasebook entries
$(document).ready(function() {
  $("#search-phrasebook-entries").click(function() {
    let phrasebookEntries = $("#phrasebook-entries");
    phrasebookEntries.data("limit", 0);
    phrasebookEntries.empty();

    $.ajax({
      method: "GET",
      url: "phrasebook_entries.js",
      data: {
        search_query: $("#search-query").val(),
      }
    });
  })
})

// recognize input text // TODO change language
$(document).ready(function() {
  $("#recognize-input-text").click(function() {
    let settings = {
      continuous: true,
      onResult: function(text){
        $("#input-text").val(text);
        console.log("Recognized text: ", text);
      },
      onStart:function(){
        console.log("Recognition started.");
      },
      onEnd:function(){
        alert("Recognition stopped.");
      }
    };

    let userDictation = artyom.newDictation(settings);
    userDictation.start();

    setTimeout(function() {
      userDictation.stop();
    }, 2000);
  });
})
