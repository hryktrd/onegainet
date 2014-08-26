json.array!(@helpers) do |helper|
  json.extract! helper, :id, :category_id, :skill, :tel, :email, :facebook, :comment
  json.url helper_url(helper, format: :json)
end
