FactoryGirl.define do
  
  factory :user, aliases: [:player, :opponent] do    
    sequence :email do |n|
      "random#{n}@chesster.com"
    end
    password "omglolhahaha"
    password_confirmation "omglolhahaha"
  end
  
  factory :game do
  	association :user, factory: :player
  	association :opponent, factory: :opponent
  	title "Hello"
  end

  factory :pawn do     
    x_coord     "3"
    y_coord     "4"
    color       "white"
    game
  end

  factory :bishop do     
    x_coord     "2"
    y_coord     "3"
    color       "white"
    game
  end


end
