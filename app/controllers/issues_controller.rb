class IssuesController < ApplicationController
  def new
    @issue = Issue.new
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def edit
    @issue = Issue.find(params[:id])

    @status_options = ['Pending', 'In Progress', 'Completed', 'Declined', 'Paused', 'Awaiting Approval']

    @json  = Gmaps4rails.build_markers(@issue) do |issue, marker|
      if !issue.latitude.nil? && !issue.longitude.nil?
        marker.lat issue.latitude
        marker.lng issue.longitude
        marker.picture({
                           :url    => 'markers/red.png',
                           :width  => 32,
                           :height => 32
                       })
        marker.json({ :id => issue.id })
      end
    end
  end

  def create
    @issue = Issue.new(issue_params)
    @issue.status = 5
    if @issue.save
      redirect_to @issue
    else
      render 'new'
    end
  end

  def update
    @issue = Issue.find(params[:id])

    @issue.update(issue_params)
    redirect_to @issue
  end

  def issue_params
    params.require(:issue).permit(:title, :description, :location_description, :latitude, :longitude, :photo, :status)
  end
end
