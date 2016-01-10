# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  password_digest :string
#  name            :string
#  created_at      :datetime
#  updated_at      :datetime
#  is_admin        :boolean          default(FALSE)
#  is_super        :boolean          default(FALSE)
#

class User < ActiveRecord::Base
   has_secure_password
   validates_uniqueness_of :email
end
