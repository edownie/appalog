Given /^I visit all links$/ do
  100.times do
    @browser.link(:index, 2).click
    @browser.goto(@arch)
    @browser.link(:index, 3).click
    @browser.goto(@arch)
    @browser.link(:index, 4).click
    @browser.goto(@arch)
    @browser.link(:index, 5).click
    @browser.goto(@arch)
    @browser.link(:index, 6).click
    @browser.goto(@arch)
    @browser.link(:index, 7).click
    @browser.goto(@arch)
    @browser.link(:index, 9).click
    @browser.goto(@arch)
    @browser.link(:index, 10).click
    @browser.goto(@arch)
    @browser.link(:index, 11).click
    @browser.goto(@arch)
    @browser.link(:index, 12).click
    @browser.goto(@arch)
    @browser.link(:index, 13).click
    @browser.goto(@arch)
    @browser.link(:index, 14).click
    @browser.goto(@arch)
    @browser.link(:index, 15).click
    @browser.goto(@arch)
    @browser.link(:index, 16).click
    @browser.goto(@arch)
    @browser.link(:index, 17).click
    @browser.goto(@arch)
  end
end