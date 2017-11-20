class QuestionsController < ApplicationController
  def answer
    @question = params[:query]

    if @question.capitalize == "I am going to work right now!"
      @answer = "Good"
    elsif @question.end_with?("?") == true
      if @question == @question.upcase
        @answer = "I can feel your motivation! Silly question, get dressed and go to work!"
      else
        @answer = "Silly question, get dressed and go to work!"
      end
    else
      if @question == @question.upcase
        @answer = "I can feel your motivation! I don't care, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end

  def ask
  end
end
