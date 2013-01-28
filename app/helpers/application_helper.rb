module ApplicationHelper
  
  def display_base_errors resource
    return '' if (resource.errors.empty?) or (resource.errors[:base].empty?)
    messages = resource.errors[:base].map { |msg| content_tag(:p, msg) }.join
    html = <<-HTML
    <div class="alert alert-error alert-block">
      <button type="button" class="close" data-dismiss="alert">&#215;</button>
      #{messages}
    </div>
    HTML
    html.html_safe
  end

  def category_image_link(params)
    category_id = params[:category_id]
    category_name = params[:category_name].tr(' ', '-').downcase
    link_to image_tag("client-cat-" + category_name + ".png"), entries_category_path(category_id)
  end
end