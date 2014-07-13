module ApplicationHelper
  def markdown(content)
    Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true).render(content)
  end
end
