class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @you = params[:answer]
    @coach = if @you == 'I am going to work'
               'Great!'
             elsif @you.last == '?'
               'Silly question, get dressed and go to work!'
             else
               "I don't care, get dressed and go to work!"
             end
  end
end
