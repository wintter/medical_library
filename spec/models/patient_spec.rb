describe Patient, type: :model do

  context 'associations' do
    it { is_expected.to belong_to(:profession) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:surname) }
    it { should validate_presence_of(:patronymic) }
    it { should validate_presence_of(:gender) }
    it { should validate_presence_of(:profession) }
    it { should_not validate_presence_of(:speciality) }
  end
end
