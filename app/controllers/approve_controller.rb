class ApproveController < ApplicationController
  def index
    @paginated_awaiting_issues = Issue.all.where('status = 5').paginate(:page => params[:page], per_page: 12)
  end
end
