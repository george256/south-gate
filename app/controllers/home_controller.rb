class HomeController < ApplicationController
  respond_to :js, :html

  def index
    @paginated_issues = Issue.all.paginate(:page => params[:page], per_page: 12)

    @paginated_issues_sorted = Issue.order('issues.created_at DESC').paginate(:page => params[:page], per_page: 12)
  end
end
