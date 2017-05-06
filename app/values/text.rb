class Text
  VALIDITY_REGEX = /(?u)\w+/i # NOTE (?u) matches unicode # TODO Improve regex

  attr_reader :text_string

  def initialize(text_string:)
    @text_string = text_string
  end

  def valid?
    text_string =~ VALIDITY_REGEX
  end

  private
    def initialize_text_string(text_string)
      text_string.downcase
    end
end
