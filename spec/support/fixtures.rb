class MyModel
  include Mongoid::Document
  include Mongoid::Taggable

  field :attr
  taggable
end

class Article
  include Mongoid::Document
  include Mongoid::Taggable

  taggable :keywords, :default => []
end

class Editorial < Article
  self.tags_separator = ' '
  self.tag_aggregation = true
end

class Template
  include Mongoid::Document
  include Mongoid::Taggable
  include Mongoid::Timestamps

  taggable :aggregation => true 
end

class Post
  include Mongoid::Document
  include Mongoid::Taggable

  field :published, :type => Boolean

  taggable :aggregation_options => {}
end

class Author
  include Mongoid::Document

  field :posts_with_weight, :type => Array
  has_many_related :posts
end
