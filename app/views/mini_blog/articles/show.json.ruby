{
  body: Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true, underline: true, highlight: true).render(@article.body)
}.to_json
