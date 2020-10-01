require "rails_helper"

RSpec.describe Visitor, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of :ip_address }
  end
end
