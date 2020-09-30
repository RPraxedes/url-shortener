class Visitor < ApplicationRecord
  has_many :urls, dependent: :destroy

  validates :ip_address, presence: true
end
