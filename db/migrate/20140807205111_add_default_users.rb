class AddDefaultUsers < ActiveRecord::Migration
  def up
    User.create!(email: 'timothys@mysteriouspackage.com', username: 'architect', password: 'fhgdsajkl', password_confirmation: 'fhgdsajkl')
    User.create!(email: 'chronologist@mysteriouspackage.com', username: 'chronologist', password: 'fhgdsajkl', password_confirmation: 'fhgdsajkl')
    User.create!(email: 'artisan@mysteriouspackage.com', username: 'artisan', password: 'fhgdsajkl', password_confirmation: 'fhgdsajkl')
    User.create!(email: 'professor@mysteriouspackage.com', username: 'professor', password: 'fhgdsajkl', password_confirmation: 'fhgdsajkl')
    User.create!(email: 'navigator@mysteriouspackage.com', username: 'navigator', password: 'fhgdsajkl', password_confirmation: 'fhgdsajkl')
    User.create!(email: 'limner@mysteriouspackage.com', username: 'limner', password: 'fhgdsajkl', password_confirmation: 'fhgdsajkl')
    User.create!(email: 'megs@mysteriouspackage.com', username: 'megs', password: 'fhgdsajkl', password_confirmation: 'fhgdsajkl')
    User.create!(email: 'kkjems@mysteriouspackage.com', username: 'kkjems', password: 'fhgdsajkl', password_confirmation: 'fhgdsajkl')
    User.create!(email: 'scrivener@mysteriouspackage.com', username: 'scrivener', password: 'fhgdsajkl', password_confirmation: 'fhgdsajkl')
  end

  def down
    
  end
end
