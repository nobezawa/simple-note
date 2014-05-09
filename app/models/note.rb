class Note < ActiveRecord::Base
  def render_markdown
    markdown_processor.render(raw_body)
  end

  private
  def update_body_by_render_markdown
    self.body = render_markdown
  end

  def markdown_processor
    @markdown_processor ||= Redcarpet::Markdown.new(
      Redcarpet::Render::HTML.new(
        filder_html: true,
        hard_wrap: true,
      ),
      autolink: true,
      tables: true,
      underline: true,
      highlight: true,
      fenced_code_blocks: true,
    )
  end
end
