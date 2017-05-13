const speakText = function speakText(text, languageName) {
  let languageCode = convertLanguageNameToArtyomLanguageCode(languageName);

  if (text && languageCode) {
    artyom.say(text, { // TODO Refactor
      lang: languageCode
    });
  }
}
