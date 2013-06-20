describe Farm do
  let(:farm) { FactoryGirl.create(:farm) }

  it "is valid" do
    expect(farm).to be_valid
  end

  it "is not valid without a user" do
    farm.user = nil
    expect(farm).to_not be_valid
  end

  it "is not valid without a name" do
    farm.name = nil
    expect(farm).to_not be_valid
    expect(farm.errors[:name]).to_not be_empty
  end

  it "is not valid without a farm description" do
    farm.farm_description = nil
    expect(farm).to_not be_valid
    expect(farm.errors[:farm_description]).to_not be_empty
  end

  it "is not valid without certification type" do
    farm.certification = nil
    expect(farm).to_not be_valid
    expect(farm.errors[:certification]).to_not be_empty
  end

  it "is not valid without an address" do
    farm.address = nil
    expect(farm).to_not be_valid
    expect(farm.errors[:address]).to_not be_empty
  end

  it "is not valid without a city or town" do
    farm.city = nil
    expect(farm).to_not be_valid
    expect(farm.errors[:city]).to_not be_empty
  end

  it "is not valid without a state" do
    farm.state = nil
    expect(farm).to_not be_valid
    expect(farm.errors[:state]).to_not be_empty
  end

  it "is not valid without a number of shares" do
    farm.number_of_shares = nil
    expect(farm).to_not be_valid
    expect(farm.errors[:number_of_shares]).to_not be_empty
  end

  it "is not valid without a share price" do
    farm.share_price = nil
    expect(farm).to_not be_valid
    expect(farm.errors[:share_price]).to_not be_empty
  end

  it "is not valid without a share description" do
    farm.share_description = nil
    expect(farm).to_not be_valid
    expect(farm.errors[:share_description]).to_not be_empty
  end

end
