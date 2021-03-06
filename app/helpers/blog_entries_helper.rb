module BlogEntriesHelper
  def entry_permalink(e)
    d = e.created_at
    entry_permalink_path :year => d.year, :month => d.month, :day => d.day, :slug => e.permalink
  end

  def disqus_title(title)
    unless Spree::BloggingSpree::Config[:disqus_title_sitename].present?
      title
    else
      "#{Spree::BloggingSpree::Config[:disqus_title_sitename]} - #{title}"
    end
  end

end
