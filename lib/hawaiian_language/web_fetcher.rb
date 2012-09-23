module HawaiianLanguage
  class WebFetcher
    DOMAIN = "http://wehewehe.olelo.hawaii.edu"

    def get_results_for_term(english_term)
      get_results_for_relative_path("/cgi-bin/hdict?a=q&r=1&hs=1&e=q-0hdict--00-0-0--010---4----den--0-000lpm--1en-Zz-1---Zz-1-home---00031-0000escapewin-00&q=#{english_term}&j=pm&hdid=0&hdds=0")
    end

    def get_results_for_relative_path(path)
      Nokogiri::HTML(open("#{DOMAIN}#{path}"))
    end
  end
end