class LanguageCode
  VALIDITY_REGEX = /\w{2}/i # TODO Improve regex

  attr_reader :code_string

  def initialize(code_string:)
    @code_string = code_string
  end

  def valid?
    code_string =~ VALIDITY_REGEX
  end

  def to_s
    code_string
  end
end
