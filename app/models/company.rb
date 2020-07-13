class Company < ApplicationRecord
  attribute :code, :string
  attribute :name, :string

  has_many :products

  def self.all_companies
    Rails.application.config_for(:company)
  end
end
