module ApplicationHelper
  def pipe char="|"
    content_tag :span, " #{char} ", :class => "pipe"
  end
end
