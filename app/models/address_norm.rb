# == Schema Information
# Schema version: 20080819191919
#
# Table name: address_norms
#
#  id           :integer       not null, primary key
#  name         :string(255)   not null
#  reference    :string(255)   
#  default      :boolean       not null
#  rtl          :boolean       not null
#  align        :string(8)     default("left"), not null
#  company_id   :integer       not null
#  created_at   :datetime      not null
#  updated_at   :datetime      not null
#  created_by   :integer       
#  updated_by   :integer       
#  lock_version :integer       default(0), not null
#

class AddressNorm < ActiveRecord::Base
end
