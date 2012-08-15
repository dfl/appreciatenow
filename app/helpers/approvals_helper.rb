module ApprovalsHelper
  def link_to_approve a
    # toggle
    if a.approved?
      link_to "Unapprove", approval_path(a), :method => :delete
    else
      link_to "Approve", approval_path(a), :method => :put
    end      
  end
  
end
