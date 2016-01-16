class IssuesController < ApplicationController
  def new
    @issue = Issue.new
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def create
    @issue = Issue.new(issue_params)
    if @issue.save
      render 'show'
    else
      render 'new'
    end
  end

  def issue_params
    params.require(:issue).permit(:description, :location_description, :latitude, :longitude)
  end
end
