require 'rails_helper'

RSpec.describe Category, type: :model do

  describe 'Database' do
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:description).of_type(:string) }
  end

  it "class should exist. If not, you haven't defined your model class yet" do
    expect(defined?(Category)).to eq "constant"
  end



end

