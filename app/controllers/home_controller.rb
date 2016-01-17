class HomeController < ApplicationController
  respond_to :js, :html

  def index
    @paginated_issues = Issue.all.paginate(:page => params[:page], per_page: 12)

    @paginated_issues_sorted = Issue.order('issues.created_at DESC').paginate(:page => params[:page], per_page: 12)

    @issues_with_coords = Issue.all.where('latitude IS NOT NULL')

    @json  = Gmaps4rails.build_markers(@issues_with_coords) do |issue, marker|
      if !issue.latitude.nil? && !issue.longitude.nil?
        marker.lat issue.latitude
        marker.lng issue.longitude
        marker.infowindow issue.description
        marker.picture({
                           :url    => 'http://maps.gpsvisualizer.com/google_maps/icons/google/red.png',
                           :width  => 32,
                           :height => 32
                       })
        marker.title 'i\'m the title'
        marker.json({ :id => issue.id })
      end
    end
  end
end
