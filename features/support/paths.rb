module Paths
  def path_to(page_name)
    case page_name
      
    when /the main page/i
      "http://architecturenergy.com"
    end
  end
end
World(Paths)