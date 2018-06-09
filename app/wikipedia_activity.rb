class WikipediaActivity < Android::App::Activity
  SelectedMovie = 'com.yourcompany.movies.selected_movie'

  def onCreate(savedInstanceState)
    super

    movie = self.intent.getStringExtra(SelectedMovie)
    wiki_link = "https://en.wikipedia.org/wiki/#{movie}"
    webview = Android::Webkit::WebView.new(self)
    webview.webViewClient = Android::Webkit::WebViewClient.new
    webview.loadUrl wiki_link
    self.contentView = webview
  end
end
