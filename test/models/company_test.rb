require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  test ".all returns the correct companies" do
    companies = Company.all

    assert_equal(companies[:AIA][:name], "As I Am")
  end
end
