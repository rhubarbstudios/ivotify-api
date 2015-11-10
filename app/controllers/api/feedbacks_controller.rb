class Api::FeedbacksController < ApplicationController

  def index
    feedbacks = Feedback.all
    render json: {feedbacks: feedbacks }
  end

  def show
    render json: Feedback.find(params[:id])
  end

  def create
    feedback = Feedback.new(feedback_params)
    if feedback.save
      render json: feedback, status: 201
    else
      render json: {errors: feedback.errors}, status: 422
    end
  end

  private
    def feedback_params
      params.require(:feedback).permit(:body)
    end
end
