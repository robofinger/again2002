Factory.define :user do |user|
   user.name                  "Michael Hartl"
   user.email                 "mhartl@example.com"
   user.password              "foobar"
   user.password_confirmation "foobar"
end

Factory.sequence :email do |n|
   "person-#{n}@example.com"
end

Factory.define :ad do |ad|
   ad.description "Foo bar"
   ad.association :user
end
