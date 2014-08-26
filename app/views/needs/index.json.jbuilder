json.array!(@needs) do |need|
  json.extract! need, :id, :category_id, :title, :description, :tel, :facebook, :email, :comment
  json.url need_url(need, format: :json)
end
