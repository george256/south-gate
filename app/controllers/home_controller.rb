class HomeController < ApplicationController
  def index
    @all_issues = Issue.all
  end
end
