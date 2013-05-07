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
  
#TODO: setup a changeable scene index in stories
#TODO: Add Sub-loccation relationship on locations

#TODO: convert the app.css to scss
#TODO: pick one font for app
#TODO: add valadation
#TODO: Main menu 'active selection' is not working
#TODO: Add CSS buttons for'new' links - link fails if it is a html button
#TODO: add scope limit for the sidebar so that it only displays 5 (or so) of the most recently editied
#TODO: add pjax after html is done

end
