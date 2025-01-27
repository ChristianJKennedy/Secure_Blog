# == Schema Information
#
# Table name: blog_posts
#
#  id         :bigint           not null, primary key
#  body       :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_blog_posts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class BlogPost < ApplicationRecord

  belongs_to(
	:creator,
	class_name:  'User',
	foreign_key: 'user_id',
	inverse_of:  :blog_posts
)

  validates :title, presence: true
  validates :body, presence: true
end
