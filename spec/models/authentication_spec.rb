require 'rails_helper'

describe Authentication, :type => :model do
  let(:authentication) {FactoryGirl.build(:authentication)}
  skip "add some examples to (or delete) #{__FILE__}"
  # todo: check loading of oath_data and default_scope
end
