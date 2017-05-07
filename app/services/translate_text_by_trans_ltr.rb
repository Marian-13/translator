class TranslateTextByTransLtr
  TRANS_LTR_ROOT_URL = 'http://www.transltr.org'

  attr_reader :from_language_name_string, :to_language_name_string, :text_string

  def initialize(from_language_name_string:,
                 to_language_name_string:,
                 text_string:)
    @from_language_name_string = from_language_name_string
    @to_language_name_string   = to_language_name_string
    @text_string               = text_string
  end

  def call
    from_language_code = create_language_code(from_language_name_string)
    to_language_code   = create_language_code(to_language_name_string)
    text               = create_text(text_string)

    if from_language_code.valid? && to_language_code.valid? && text.valid?
      text_query = text.to_query(:text)

      responce = HTTP.get(
        "#{TRANS_LTR_ROOT_URL}" \
        "/api/translate" \
        "?#{text_query}&to=#{to_language_code}&from=#{from_language_code}"
      )

      object = JSON.parse(responce.to_s)
      object['translationText']
    end
  end

  private
    def create_language_code(language_code_string)
      ConvertLanguageNameToLanguageCode.new(
        language_name: LanguageName.new(
          name_string: language_code_string
        )
      ).call
    end

    def create_text(text_string)
      Text.new(text_string: text_string)
    end
end
