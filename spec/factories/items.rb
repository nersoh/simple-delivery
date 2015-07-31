FactoryGirl.define do
  factory :item do
    descricao { Faker::Lorem.word }
    tipo "carne"
  end

end
