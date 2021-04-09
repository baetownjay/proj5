class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :image, :default => 'https://lh3.googleusercontent.com/proxy/5T_v4ICErxi5C362lU20zJneO1mrEi-jK_QKQFMQduWCdPqWenn1sy4Y-wWpzkU-7DTsy0CAreQo2lWkUj-d0QWYyzmpUMo'

      t.timestamps
    end
  end
end
