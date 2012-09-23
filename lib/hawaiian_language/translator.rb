require 'nokogiri'
require 'open-uri'

module HawaiianLanguage
  class Translator
    def initialize(results_fetcher)
      @results_fetcher = results_fetcher
    end

    def translate(english_term)
      doc = @results_fetcher.get_results_for_term(english_term)

      if no_results_found?(doc)
        "No entries found for #{english_term}."
      elsif single_result?(doc)
        content_for_single_result(doc)
      else
        doc = @results_fetcher.get_results_for_relative_path(first_href_in_multiple_results(doc))
        content_for_single_result(doc)
      end
    end

    private
    def no_results_found?(doc)
      doc.css("table.results td").first.content.match("No entries found for")
    end

    def single_result?(doc)
      doc.css("table.results p").length > 0
    end

    def content_for_single_result(doc)
      doc.css("table.results p").first.content
    end

    def first_href_in_multiple_results(doc)
      doc.css("table.results a").first.attributes["href"].value
    end
  end
end