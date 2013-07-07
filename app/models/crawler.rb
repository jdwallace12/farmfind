require 'cgi'
require 'nokogiri'
require 'open-uri'

class Crawler
  def initialize(search_phrase)
    @search_phrase = search_phrase
  end

  def search
    doc = Nokogiri::HTML(open("http://www.google.com/search?q=#{CGI.escape(@search_phrase)}"))
    doc.css('li.g').map do |result|
      SearchResult.new(result)
    end
  end

  def output(result_num)
    SearchOutputter.new(search[0..(result_num - 1)]).output
  end
end

class SearchResult
  attr_reader :title, :url, :description

  def initialize(html_node)
    @title = html_node.css('h3').first.try(:content)
    @url = html_node.css('cite').first.try(:content)
    @description = html_node.css('span.st').first.try(:content)
  end
end

class SearchOutputter
  def initialize(search_results)
    @search_results = search_results
  end

  def output
    @search_results.inject('') do |str, result|
      str += "***\r\n" +
      "#{result.title}\r\n" +
      "URL: #{result.url}\r\n\r\n" +
      "#{result.description}\r\n"
    end
  end
end
