class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_one :profile, serializer: ProfileSerializer
  has_many :posts, serializer: AuthorPostSerializer
end

# 1. The author's `name`
# 2. The author's `profile`, including only the `username`, `email`, `bio` and
#    `avatar_url`
# 3. A list of the author's posts, including:

# - the `title`
# - the first 40 characters of the post's content as `short_content`, with a
#   trailing ellipsis (`...`) at the end
# - a list of the associated `tags`

# **Note**: You will need to make serializers for the `Profile` and `Post` models
# to get this working.
