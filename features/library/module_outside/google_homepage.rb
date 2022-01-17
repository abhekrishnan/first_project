module Google_Homepage

  def gmail_link
    $browser.link(text: "Gmail")
  end

  def image_link
    $browser.link(text: "Images")
  end

  def search_text
    $browser.text_field(class: "gLFyf gsfi")

  end
  def search_button
    $browser.input(value: "Google Search")
  end
end