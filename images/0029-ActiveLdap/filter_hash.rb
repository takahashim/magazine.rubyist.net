# "(|(uid=ruby_taro)(uid=ruby_hanako))" が利用される
User.find :all, :filter => [:or, [:uid, ['ruby_taro', 'ruby_hanako']]]     

# これも同じ
User.find :all, :filter => [:or, {:uid => ['ruby_taro', 'ruby_hanako']}]
