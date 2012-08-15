module ApplicationHelper
  def pipe char="|"
    content_tag :span, " #{char} ", :class => "pipe"
  end
  
  def facebook_like url=nil, opts={}
    opts.reverse_merge! :class => "fb-like", :data => {}
    opts[:data].reverse_merge! :send => true, :href => url, :width => 450, :show_faces => false
    opts[:data] = Hash[ opts[:data].map{|k,v| [ k.to_s.gsub('_','-'), v ] if v }.compact ]
    content_tag :div, nil, opts
  end

  def facebook_share url = request.location, opts={}
    # https://www.facebook.com/sharer/sharer.php?s=100&p%5Btitle%5D=LINK_TITLE&p%5Bsummary%5D=LINK_DESCRIPTION&p%5Burl%5D=URL_TO_LANDING_PAGE&p%5Bimages%5D%5B0%5D=URL_TO_IMAGE&
    opts.reverse_merge! :title => "Appreciate Now"
    link_to "Share on Facebook", "http://www.facebook.com/sharer.php?u=#{url}&p[title]=title", :'data-popup' => true, :class => opts[:class]
  end

  def opengraph_tags_for appreciation
    output = [""]
    # output << opengraph_meta( :'fb:app_id', FB_APP_ID )
    output << opengraph_meta( :site_name, "AppreciateNow.org" )
    output << opengraph_meta( :type, :website )
    output << opengraph_meta( :url, appreciation_url(appreciation) )
    output << opengraph_meta( :image, root_url + "favicon.ico" )
    output << opengraph_meta( :title, "I appreciate you!")
    output << opengraph_meta( :description, "Create and share appreciation cards" )
    output.join("\n").html_safe
  end

  def opengraph_meta property, content=""
    prop = "og:#{property}" unless property =~ /:/
    tag(:meta, :property => prop, :content => content)
  end


end
