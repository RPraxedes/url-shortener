require "rails_helper"

RSpec.describe Url, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of :link }
  end

  describe "before_validation" do
    it "generate_shortlink" do
      url = described_class.new(link: "https://en.wikipedia.org/wiki/Special:Random")

      url.save

      expect(url.shortlink).not_to be_nil
    end
  end
end
