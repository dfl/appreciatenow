module AppreciationsHelper
  def appreciation_url appreciation
    appreciation = appreciation.id if appreciation.is_a?(Appreciation)
    root_url + appreciation.to_s
  end
  
end
