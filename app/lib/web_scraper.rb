class WebScraper
  def self.get_title(url)
    agent = Mechanize.new
    page = agent.get(url)
    page.title
  end

  def self.get_article_text
    agent = Mechanize.new
    page = agent.get('https://qiita.com')
    texts =  []
    page.search('article','h2','a').each do |element|
      texts << element.inner_text
    end
    5.times do |i|
      puts texts[i]
    end
    # puts texts.each_with_ index do |text,i| 
  end
end