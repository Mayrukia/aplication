class AddInitialUsers < ActiveRecord::Migration[5.2]
  def up
    User.create( encrypted_password: "root", email: "rocked_26@hotmail.com")
  end
end

