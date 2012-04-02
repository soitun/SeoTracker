class Seotracker::Google < Seotracker
  SEARCH_URL = 'http://www.google.ru/search?ix=seb&sourceid=chrome&ie=UTF-8'

  # получаем позицию сайта для слова
  def get_position(site, word)
    super(site) do
      page = @agent.get(SEARCH_URL, q: word)
      page.root.xpath('/html/body/div[5]/div/div/div[4]/div[2]/div[2]/div/div[2]/div/ol/li/div/h3/a')
    end
  end
end