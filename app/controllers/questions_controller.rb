class QuestionsController < ApplicationController
  def ask
    # test
  end

  def answer
    @question = params[:question]
    @answer = if @question == 'I am going to work'
                'Great!'
              elsif @question.end_with?('?')
                'get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
