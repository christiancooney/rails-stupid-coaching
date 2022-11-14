class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    if @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question.end_with?('work')
      @answer = 'Great!'
    elsif @question.blank?
      redirect_to ask_path
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
