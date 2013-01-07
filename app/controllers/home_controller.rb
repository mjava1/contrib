class HomeController < ApplicationController
  def index
    @entries = Entry.all
    @entries_by_category = Entry.all.group_by{ |entry| entry.category_id}
  end
end
