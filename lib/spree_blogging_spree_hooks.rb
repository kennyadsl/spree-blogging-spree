class SpreeBloggingSpreeHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_tabs do
    %(<%= tab(:blog_entries, :label => :blog) %>)
  end

  insert_after :inside_head do
    %(<%= javascript_include_tag 'news_archive_widget' %>
      <%= stylesheet_link_tag 'blog' %>)
  end
end