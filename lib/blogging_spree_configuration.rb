class BloggingSpreeConfiguration < Configuration
  preference :use_blog_stylesheet,  :boolean, :default => true
  preference :use_disqus,           :boolean, :default => false
  preference :disqus_shortname,     :string,  :default => ''
  preference :disqus_title_sitename,:string,  :default => ''
end
