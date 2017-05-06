# NOTE DetectLanguage already exists (for LanguageDetection API)
class DetectLanguageOfText
  attr_reader :text

  def initialize(text:)
    @text = text
  end

  def call
    DetectLanguage.simple_detect(text.text_string) if text.valid?
  end
end
