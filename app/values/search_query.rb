class SearchQuery
  VALIDITY_REGEX = /(?u)\w+/i

  attr_reader :query_string

  def initialize(query_string:)
    @query_string = query_string
  end

  def valid?
    query_string =~ VALIDITY_REGEX
  end

  def to_s
    query_string
  end
end
