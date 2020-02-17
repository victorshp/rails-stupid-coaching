class QuestionsController < ApplicationController
  def ask
    @answer_value = params[:question]
  end

  def answer
    @answer_value = params[:question]
    if @answer_value == 'I am going to work'
      @coach_answer = 'Great!'
    elsif /[?]/.match(@answer_value).present?
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
