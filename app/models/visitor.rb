class Visitor < ApplicationRecord
  belongs_to :url

  validates :ip_address, presence: true
end
