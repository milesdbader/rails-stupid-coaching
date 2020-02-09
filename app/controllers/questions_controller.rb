class QuestionsController < ApplicationController # frozen_string_literal: true
  def ask

  end

  def answer
    @question = params[:question]
    @answer = "I don't care, get dressed and go to work!"

    if @question.downcase == 'i am going to work'
      @answer = 'Great!'
    elsif @question[-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    end
  end
end
