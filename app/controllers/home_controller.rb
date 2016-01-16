class HomeController < ApplicationController
  respond_to :js, :html

  def index
    @all_issues = Issue.all

    @json  = Gmaps4rails.build_markers(@all_issues) do |issue, marker|
      marker.lat issue.latitude
      marker.lng issue.longitude
      marker.infowindow issue.description
      marker.picture({
                         :url    => "http://maps.gpsvisualizer.com/google_maps/icons/google/red.png",
                         :width  => 32,
                         :height => 32
                     })
      marker.title "i'm the title"
      marker.json({ :id => issue.id })
    end
  end
end
