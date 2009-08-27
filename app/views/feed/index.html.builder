atom_feed do |feed|
  feed.title("ストリートコンピューティング")
  feed.updated((@photos.first.created_at))

  for entry in @photos
    feed.entry(entry) do |item|
      item.title('streetcomputing')
      item.content('<img src="'+entry.url+'"></img>')
      item.author do |author|
        author.name("RSSAuthor")
      end
    end
  end
end

