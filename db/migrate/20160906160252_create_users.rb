class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.remove :provider :uid
      t.rename :password :password_digest

    end
  end
end
