class HomeController < ApplicationController
  def index

    @entries_by_category = Entry.all(:include =>:category, :order =>"created_at DESC").group_by{ |entry| [entry.category.id, entry.category.name.tr(' ', '-').downcase]}
  end
end
