json.array!(@comments) do |comment|
  json.extract! comment, :post_id, :name, :email, :content
  json.url comment_url(comment, format: :json)
end
