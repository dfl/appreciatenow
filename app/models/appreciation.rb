class Appreciation < ActiveRecord::Base
  # attr_protected :id
  validates_presence_of :what
  validates_uniqueness_of :what
  
  def to_s
    "I appreciate #{what}".strip.html_safe
  end

  before_create :cleanup

  def cleanup
    what << "." unless what =~ /[!\.]$/   # add period if needed
  end

  def self.fast_create what
    what = what.dup
    if what[0] == "="
      what = what[1..-1]
    else
      what = "#{'your ' unless what =~ /^(the|how|what|when|you)\s/}#{what}"
    end
    p what
    find_or_create_by_what_and_approved what, true
  end
  
  def self.approved val=true
    where(:approved => val)
  end

end
