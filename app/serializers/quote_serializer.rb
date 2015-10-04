class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :saying, :author, :saying_with_author

  def saying_with_author
    object.author + ": " + object.saying
  end
end
