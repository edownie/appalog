module WatirCukeHelpers
  def find_button(type)
    if @browser.button(:id, type).exists? then
       @browser.button(:id, type).click
    elsif
       @browser.button(:name, type).exists? then
       @browser.button(:name, type).click
    elsif
       @browser.button(:value, type).exists? then
       @browser.button(:value, type).click
    elsif
       @browser.button(:text, type).exists? then
       @browser.button(:text, type).click
    elsif
      @browser.button(:index, type).exists? then
      @browser.button(:index, type).click
    elsif
      @browser.button(:class, type).exists? then
      @browser.button(:class, type).click
    else
      fail("Sorry, I wasn't able to find the " + "'#{type}'" + " element ")
    end
  end
  def find_checkbox(type)
    if @browser.checkbox(:id, /#{type}/).exists? then
       @browser.checkbox(:id, /#{type}/).click
    elsif
       @browser.checkbox(:name, type).exists? then
       @browser.checkbox(:name, type).click
    elsif
       @browser.checkbox(:value, type).exists? then
       @browser.checkbox(:value, type).click
    elsif
       @browser.checkbox(:text, type).exists? then
       @browser.checkbox(:text, type).click
    elsif
      @browser.checkbox(:index, type).exists? then
      @browser.checkbox(:index, type).click
    elsif
      @browser.checkbox(:class, type).exists? then
      @browser.checkbox(:class, type).click
    else
      fail("Sorry, I wasn't able to find the " + "'#{type}'" + " element ")
    end
  end

  def find_image(type)
    if @browser.image(:src, type).exists? then
       @browser.image(:src, type).click
    elsif 
      @browser.image(:id, type).exists? then
      @browser.image(:id, type).click
    elsif 
      @browser.image(:name, type).exists? then
      @browser.image(:name, type).click
    elsif 
      @browser.image(:text, type).exists? then
      @browser.image(:text, type).click
    elsif 
      @browser.image(:index, type).exists? then
      @browser.image(:index, type).click
    elsif 
      @browser.image(:class, type).exists? then
      @browser.image(:class, type).click
    else
      fail("Sorry, I wasn't able to find the " + "'#{type}'" + " element ")
    end
  end

  def find_link(type)
    if @browser.link(:id, type).exists? then
       @browser.link(:id, type).click
     elsif 
       @browser.link(:text, type).exists? then
       @browser.link(:text, type).click
    elsif 
      @browser.link(:class, type).exists? then
      @browser.link(:class, type).click
    else
      fail("Sorry, I wasn't able to find the " + "'#{type}'" + " element ")
    end
  end

  def find_radio_button(type)
    if @browser.radio(:id, type).exists? then
       @browser.radio(:id, type).click
    elsif 
      @browser.radio(:name, type).exists? then
      @browser.radio(:name, type).click
    elsif 
      @browser.radio(:value, type).exists? then
      @browser.radio(:value, type).click
    elsif 
      @browser.radio(:text, type).exists? then
      @browser.radio(:text, type).click
    elsif 
      @browser.radio(:index, type).exists? then
      @browser.radio(:index, type).click
    elsif 
      @browser.radio(:class, type).exists? then
      @browser.radio(:class, type).click
    else
      fail("Sorry, I wasn't able to find the " + "'#{type}'" + " element ")
    end
  end

  def find_select_list(text, type)
    if @browser.select_list(:id, type).exists? then
       @browser.select_list(:id, type).select(text)

    elsif @browser.select_list(:name, type).exists? then
          @browser.select_list(:name, type).select(text)

    elsif @browser.select_list(:value, type).exists? then
          @browser.select_list(:value, type).select(text)

    elsif @browser.select_list(:text, type).exists? then
          @browser.select_list(:text, type).select(text)

    elsif @browser.select_list(:index, type).exists? then
          @browser.select_list(:index, type).select(text)

    elsif @browser.select_list(:class, /(^|\s)#{type}(\s|$)/).exists? then
          @browser.select_list(:class, /(^|\s)#{type}(\s|$)/).set(text)
    else
      fail("Sorry, I wasn't able to find the " + "'#{type}'" + " element ")
    end
  end

  def find_text_field(type, text)
    if @browser.text_field(:id, type).exists? then
       @browser.text_field(:id, type).set(text)     
    elsif 
      @browser.text_field(:name, type).exists? then
      @browser.text_field(:name, type).set(text)
    elsif 
      @browser.text_field(:value, type).exists? then
      @browser.text_field(:value, type).set(text)
    elsif 
      @browser.text_field(:index, type).exists? then
      @browser.text_field(:index, type).set(text)     
    elsif 
      @browser.text_field(:class, /(^|\s)#{type}(\s|$)/).exists? then
      @browser.text_field(:class, /(^|\s)#{type}(\s|$)/).set(text)    
    else
      fail("Sorry, I wasn't able to find the " + "'#{type}'" + " element ")
    end
  end
  
  def find_text_field_with_random(type, text)
    if @browser.text_field(:id, type).exists? then
       @browser.text_field(:id, type).set(@random + text)
     
    elsif @browser.text_field(:name, type).exists? then
          @browser.text_field(:name, type).set(@random + text)
     
    elsif @browser.text_field(:value, type).exists? then
          @browser.text_field(:value, type).set(@random + text)
     
    elsif @browser.text_field(:index, type).exists? then
          @browser.text_field(:index, type).set(@random + text)
     
    elsif @browser.text_field(:class, /(^|\s)#{type}(\s|$)/).exists? then
          @browser.text_field(:class, /(^|\s)#{type}(\s|$)/).set(@random + text)
    else
      fail("Sorry, I wasn't able to find the " + "'#{type}'" + " element ")
    end
  end
  
  def find_div(type)
    if @browser.div(:id, type).exists? then
       @browser.div(:id, type).click
    elsif
       @browser.div(:name, type).exists? then
       @browser.div(:name, type).click
    elsif
       @browser.div(:value, type).exists? then
       @browser.div(:value, type).click
    elsif
       @browser.div(:text, type).exists? then
       @browser.div(:text, type).click
    elsif
      @browser.div(:index, type).exists? then
      @browser.div(:index, type).click
    elsif
      @browser.div(:class, type).exists? then
      @browser.div(:class, type).click
    else
      fail("could not find what you asked for")
    end
  end
  
  def find_table(row, type)
    row = row.to_i
    if @browser.table(:id, type).exists? then
       @browser.table(:id, type)[row][1].click
    elsif
       @browser.table(:name, type).exists? then
       @browser.table(:name, type)[row][1].click
    elsif
       @browser.table(:index, type).exists? then
       @browser.table(:index, type)[row][1].click
    elsif
      @browser.table(:class, /(^|\s)#{type}(\s|$)/).exists? then
      @browser.table(:class, /(^|\s)#{type}(\s|$)/)[row][1].click
    else
      fail("could not find what you asked for")
    end
  end
  
  def find_form(form_name)
    if @browser.form(:id, form_name).exists? then
      @browser.form(:id, form_name).submit
    else
      fail("could not find what you asked for")
    end
  end
  
  def find_file_field(file, type)
    sleep 2
    file_path = File.expand_path(File.dirname(__FILE__)) + File::SEPARATOR + File.join("..", "files", "imports", File::SEPARATOR)
    sleep 2
    file_path.gsub!(File::SEPARATOR, File::ALT_SEPARATOR) if File::ALT_SEPARATOR
    sleep 2
    #file_path = File.expand_path(File.dirname(__FILE__) + "/../files/imports/")
    if @browser.file_field(:id, type).exists? then
      sleep 2
      @browser.file_field(:id, type).set(file_path + file)
    else
      fail("could not find what you asked for")
    end
  end
  
  def find_page(page_name)
    @browser.goto(path_to(page_name))
  end
end

World(WatirCukeHelpers)