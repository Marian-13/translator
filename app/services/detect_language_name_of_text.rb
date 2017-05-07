# NOTE DetectLanguage already exists (for LanguageDetection API)
class DetectLanguageNameOfText
  attr_reader :text

  def initialize(text:)
    @text = text
  end

  def call
    if text.valid?
      ConvertLanguageCodeToLanguageName.new(
        language_code: LanguageCode.new(
          code_string: DetectLanguage.simple_detect(text.text_string)
        )
      ).call
    end
  end
end
