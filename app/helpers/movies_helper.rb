module MoviesHelper
  def sortable_column(column, title = nil)
    title ||= column.titleize
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    symbol = column == sort_column ? (sort_direction == "asc" ? "▲" : "▼") : ""
    link_to "#{title} #{symbol}".html_safe, { sort: column, direction: direction }
  end

  def header_class(column)
    return "" unless column == sort_column
    "sorted-header #{sort_direction}"
  end

  def cell_class(column)
    return "" unless column == sort_column
    "sorted-cell #{sort_direction}"
  end
end
