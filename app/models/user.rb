# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  login_name      :string           not null
#  password_digest :string           not null
#
class User < ApplicationRecord
end
