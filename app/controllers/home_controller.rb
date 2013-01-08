class HomeController < ApplicationController
  def index
    @entries = Entry.all
    @entries_by_category = Entry.all(:include =>:category).group_by{ |entry| entry.category.name}
  end
end
