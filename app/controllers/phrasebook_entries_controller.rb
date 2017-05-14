class PhrasebookEntriesController < ApplicationController
  before_action :authorize_user

  def index
    p params[:limit]
    p params[:offset]

    @phrasebook_entries =
      current_user.phrasebook.phrasebook_entries.limit(params[:limit]).offset(params[:offset])

    @phrasebook_entries.each { |phrasebook_entry| puts phrasebook_entry.phrase }
    respond_to :js
  end

  def create
    current_user.phrasebook.phrasebook_entries.create(
      phrase: params[:input_text],
      phrase_language_name: params[:input_text_language],
      translation: params[:output_text],
      translation_language_name: params[:output_text_language]
    )

    respond_to do |format|
      format.js { head :ok }
    end
  end

  def destroy
    current_user.phrasebook.phrasebook_entries.destroy(params[:id])

    respond_to do |format|
      format.js { head :ok }
    end
  end
end
