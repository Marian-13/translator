const ARTYOM_LANGUAGE_CODES = new Map([
  ["English",    "en-US"],
  ["Spanish",	   "es-ES"],
  ["German",     "de-DE"],
  ["Italian",    "it-IT"],
  ["French",	   "fr-FR"],
  ["Japanese",   "ja-JP"],
  ["Russian",	   "ru-RU"],
  ["Portuguese", "pt-PT"],
  ["Polish",     "pl-PL"]
])

const convertLanguageNameToArtyomLanguageCode =
  function convertLanguageNameToArtyomLanguageCode(languageName) {
    return ARTYOM_LANGUAGE_CODES.get(languageName);
  }
