class KMeansController < ApplicationController
  def ChallengeMe
    answer = KMeans.new.calculate(params[:data])
    render json: answer
  end
end