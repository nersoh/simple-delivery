FactoryGirl.define do
  factory :pedido do
  	rua { Faker::Address.street_name }
  	numero { Faker::Address.building_number }
  	after(:build) do |pedido|
  		pedido.items << FactoryGirl.build(:item, tipo: 'carne')
  	end
  end
end
