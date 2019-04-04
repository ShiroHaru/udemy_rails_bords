# == Schema Information
#
# Table name: tags
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tag < ApplicationRecord
  has_many :board_tag_relations, dependent: :delete_all
  #中間テーブルをスルーしてboardsテーブルに関連付ける設定
  has_many :boards, through: :board_tag_relations
end
