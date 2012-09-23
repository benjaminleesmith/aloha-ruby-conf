require "spec_helper"

describe HawaiianLanguage::Translator do
  describe "#translate" do
    class MockWebFetcher
      def get_results_for_term(english_term)
        Nokogiri::XML(open(File.join(File.dirname(__FILE__), "../fixtures/translation_results/by_term/#{english_term}.html")))
      end

      def get_results_for_relative_path(path)
        Nokogiri::XML(open(File.join(File.dirname(__FILE__), "../fixtures/translation_results/by_url/#{path}.html")))
      end
    end

    let(:translator) { HawaiianLanguage::Translator.new(MockWebFetcher.new) }

    it "translates terms" do
      translator.translate("hello").should == "Aloha! See halloo."
    end

    it "uses the first result when there are multiple results returned" do
      translator.translate("surf").should match("Nalu, nanu. See surfboard, surfer, wave, and sayings")
    end

    it "handles unknown terms" do
      translator.translate("foobar").should == "No entries found for foobar."
    end
  end
end