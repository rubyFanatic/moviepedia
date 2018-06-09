class MainActivity < Android::App::Activity

  def onCreate(savedInstanceState)
    super
    list = Android::Widget::ListView.new(self)
    list.adapter = Android::Widget::ArrayAdapter.new(self, Android::R::Layout::Simple_list_item_1, Movies.names)
    list.onItemClickListener = self
    self.contentView = list
  end

 def onItemClick(parent, view, position, id)
    selected_movie = Movies.names[position]
    intent = Android::Content::Intent.new(self, WikipediaActivity)
    intent.putExtra(WikipediaActivity::SelectedMovie, selected_movie)
    startActivity(intent)
  end
end
