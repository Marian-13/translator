class FetchUserPhrasebookEntries
  attr_reader :user, :search_query, :limit, :offset

  def initialize(user:, search_query: nil, limit: nil, offset: nil)
    @user         = user
    @search_query = search_query
    @limit        = limit
    @offset       = offset
  end

  def call
    if search_query.valid?
      search_query_string = search_query.to_s

      user.phrasebook.phrasebook_entries.where(
        'phrase=? OR translation=?',
        search_query_string,
        search_query_string
      )
    elsif limit && offset
      user.phrasebook.phrasebook_entries.limit(limit).offset(offset)
    else
      []
    end
  end
end
