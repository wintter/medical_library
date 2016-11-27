describe ClinicianSpeciality, type: :model do

  context 'associations' do
    it { is_expected.to have_many(:clinicians) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
  end
end
