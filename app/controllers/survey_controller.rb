class SurveyController < ApplicationController
  def index
  end

  def create
    session[:survey] = params[:survey]
    unless session[:times]
      session[:times] = 0
      end
    session[:times] += 1
    return redirect_to "/result", notice: "Thanks for submitting this form! You have submitted this form #{session[:times]} times now."
  end
  def result
  end
end
