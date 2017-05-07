class ConvertLanguageNameToLanguageCode
  attr_reader :language_name

  def initialize(language_name:)
    @language_name = language_name
  end

  def call
    if language_name.valid?
      LanguageCode.new(
        code_string: ISO_639.find_by_english_name(language_name.to_s)[2]
      )
    end
  end
end
