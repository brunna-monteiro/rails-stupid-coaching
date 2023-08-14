class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:ask]
    case @question
    when /\?/
      @answer = 'Silly question, get dressed and go to work!'
    when /work/i
      @answer = ''
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
