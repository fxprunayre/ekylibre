# == Schema Information
# Schema version: 20080819191919
#
# Table name: establishments
#
#  id           :integer       not null, primary key
#  name         :string(255)   not null
#  nic          :string(5)     not null
#  siret        :string(255)   not null
#  note         :text          
#  company_id   :integer       not null
#  created_at   :datetime      not null
#  updated_at   :datetime      not null
#  created_by   :integer       
#  updated_by   :integer       
#  lock_version :integer       default(0), not null
#

class Establishment < ActiveRecord::Base
end
