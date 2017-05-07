class ConvertLanguageCodeToLanguageName
  attr_reader :language_code

  def initialize(language_code:)
    @language_code = language_code
  end

  def call
    LanguageName.new(name_string: ISO_639.find_by_code(language_code.to_s)[3])
  end
end
