require 'rails_helper'

RSpec.describe Location, type: :model do
  it { should  validate_uniqueness_of(:zip).case_insensitive}
end
