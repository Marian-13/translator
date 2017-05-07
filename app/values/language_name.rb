class LanguageName
  VALIDITY_REGEX = /\w+/i # TODO Improve regex

  attr_reader :name_string

  def initialize(name_string:)
    @name_string = name_string
  end

  def valid?
    name_string =~ VALIDITY_REGEX
  end

  def to_s
    name_string
  end
end
