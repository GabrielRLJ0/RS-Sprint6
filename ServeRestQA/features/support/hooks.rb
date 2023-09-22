Before do |scenario|
    puts '================================================='
end

After do 
    screenshot = Capybara.page.save_screenshot("reports/screenshots/sc.png")
    attach(screenshot, 'image/png')
    puts '================================================='
end