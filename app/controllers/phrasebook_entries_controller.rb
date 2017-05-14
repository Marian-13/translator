class PhrasebookEntriesController < ApplicationController
  before_action :authorize_user

  def index
    @phrasebook_entries = FetchUserPhrasebookEntries.new(
      user:         current_user,
      search_query: SearchQuery.new(query_string: params[:search_query]),
      limit:        params[:limit],
      offset:       params[:offset]
    ).call

    respond_to :js
  end

  def create
    @phrasebook_entry = current_user.phrasebook.phrasebook_entries.create(
      phrase:                    params[:input_text],
      phrase_language_name:      params[:input_text_language],
      translation:               params[:output_text],
      translation_language_name: params[:output_text_language]
    )

    respond_to :js
  end

  def destroy
    current_user.phrasebook.phrasebook_entries.destroy(params[:id])

    respond_to do |format|
      format.js { head :ok }
    end
  end
end
