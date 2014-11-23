class FeedbacksController < ApplicationController

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)

    @feedback.save
    redirect_to root_path
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def index
    @feedbacks = Feedback.all
  end

  private
    def feedback_params
      params.require(:feedback).permit(:name, :email, :content)
    end

end
