class TextTranslationsController < ApplicationController
  def index
    @translated_text = TranslateTextByTransLtr.new(
      from_language_name_string: params[:from_language_name_string],
      to_language_name_string: params[:to_language_name_string],
      text_string: params[:text_string]
    ).call

    respond_to :js
  end
end
