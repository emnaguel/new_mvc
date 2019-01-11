require 'rails_helper'

RSpec.describe Category, type: :model do


    it "class should exist. If not, you haven't defined your model class yet" do
    expect(defined?(Category)).to eq "constant"
  end



end

