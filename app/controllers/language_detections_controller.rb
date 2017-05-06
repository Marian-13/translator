class LanguageDetectionsController < ApplicationController
  def index
    @language = DetectLanguageOfText.new(
      text: Text.new(text_string: params[:text_string])
    ).call

    respond_to :js
  end
end
