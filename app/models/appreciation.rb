class Appreciation < ActiveRecord::Base
  attr_protected :id
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
      what = "#{'your ' unless what =~ /^the/}#{what}"
    end
    p what
    create! what: what
  end
  
  
end
