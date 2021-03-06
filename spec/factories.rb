Factory.sequence :email do |n|
  "person#{n}@example.com"
end

Factory.sequence :username do |n|
  "person#{n}"
end

Factory.sequence :phone_number do |n|
  last_three_digits = format('%03d', n)
  "02079460#{last_three_digits}"
end

Factory.define(:account) do |f|
  f.email { Factory.create(:email) }
  f.username { Factory.create(:username) }
  f.password "letmein"
  f.password_confirmation "letmein"
end

Factory.define(:endpoint) do |f|
  f.address "sip:user@example.com"
end

Factory.define(:call) do |f|
end