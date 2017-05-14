const ARTYOM_LANGUAGE_CODES = new Map([
  ["English",            "en-US"],
  ["German",             "de-DE"],
  ["French",	           "fr-FR"],
  ["Italian",            "it-IT"],
  ["Polish",             "pl-PL"],
  ["Russian",	           "ru-RU"],
  ["Spanish; Castilian", "es-ES"]
])

const convertLanguageNameToArtyomLanguageCode =
  function convertLanguageNameToArtyomLanguageCode(languageName) {
    return ARTYOM_LANGUAGE_CODES.get(languageName);
  }
