@articles.map do |article|
  {
    id: article.id,
    title: article.title,
    created_at: article.created_at,
    updated_at: article.created_at
  }
end.to_json
