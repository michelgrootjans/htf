class PalindromeController < ApplicationController
  def show
    question = params[:value]
    # question = 0
    answer = Palindrome.new.next(question.to_i)
    ap "Question: #{question} - Answer: #{answer}"
    render json: answer
  end
end