# == Schema Information
# Schema version: 20080819191919
#
# Table name: companies
#
#  id           :integer       not null, primary key
#  name         :string(255)   not null
#  code         :string(8)     not null
#  siren        :string(9)     default("000000000"), not null
#  locked       :boolean       not null
#  deleted      :boolean       not null
#  created_at   :datetime      not null
#  updated_at   :datetime      not null
#  created_by   :integer       
#  updated_by   :integer       
#  lock_version :integer       default(0), not null
#

class Company < ActiveRecord::Base

end
