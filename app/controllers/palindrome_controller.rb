class PalindromeController < ApplicationController
  def show
    question = params[:value]
    answer = Palindrome.new.next(question.to_i)
    puts "Question: #{question} - Answer: #{answer}"
    render json: answer
  end
end