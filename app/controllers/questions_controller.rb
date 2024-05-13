class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    stop_talking = "I am going to work"
    if @question == stop_talking || @question == stop_talking.upcase
      @answer = "Great!"
    elsif @question&.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"

    end
  end

end

# TODO: return coach answer to your_message
