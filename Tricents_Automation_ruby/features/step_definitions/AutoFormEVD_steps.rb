  Given("That user access the form is require your cars informations") do
    visit 'app.php'
    sleep 1
    end
                                                                                     
  And("input data in field Make {string}") do |make|
         select(make, from: 'make')
         sleep 1
    end
    
  And("input data in field Model {string}") do |model|
      select(model, from: 'model')
      sleep 1
  end

  And("input data in field cylindercapacity {string}") do |cylindercapacity|
    fill_in 'cylindercapacity', with: cylindercapacity
    sleep 1
  end
                                                                                     
  And("input data in field Engine Performer {string}") do |enginePerformer|
        fill_in 'engineperformance', with: enginePerformer
        sleep 1
  end
                                                                                     
  And("input data in field Date of Manufacture {string}") do |manufacture|               
    click_button 'opendateofmanufacturecalender'
    fill_in 'dateofmanufacture', with: manufacture
    sleep 1
  end
                                                                                     
  And("input data in field Number of seats {string}") do |numberOfSeats|                   
    select(numberOfSeats, from: 'numberofseats')
    sleep 1
  end

   And("input data in field Righ and Drive") do
      find('#insurance-form > div > section:nth-child(1) > div:nth-child(7) > p > label:nth-child(1)', exact_text: 'Yes').click
      sleep 1
    end
                                                                                     
    And("input data in field Fuel Type {string}") do |fuelType|                         
    select('3', from: 'numberofseatsmotorcycle')
    select(fuelType, from: 'fuel')
    sleep 1
    end
                                                                                     
    And("input data in field List Price {string}") do |listPrice|                        
    fill_in 'payload', with: '999'
    fill_in 'totalweight', with: '100'
    
    def scroll_down_page
        page.execute_script('window.scrollTo(0,document.body.scrollHeight);')
    end
    sleep 1
    fill_in 'listprice', with: listPrice
  end
  
  And("input data in field Annual Mileage {string}") do |annualMileage|
    fill_in 'annualmileage', with: annualMileage
    sleep 1
  end

  And("Press button Next for continue") do
    click_button 'nextenterinsurantdata'
    sleep 1
  end

  
  And("that User input data in first name {string}") do |firstname|
    fill_in 'firstname', with: firstname
    sleep 1
  end
  
  And("input data in field last name {string}") do |lasttname|
    fill_in 'lastname', with: lasttname
    sleep 1
  end
  
  And("input data in field date of b-day {string}") do |birthday|
    click_button 'opendateofbirthcalender'
    fill_in 'birthdate', with: birthday
    # Aboce this row is the Gender field, that i fill_in because he was a challenge!
    find('#insurance-form > div > section:nth-child(2) > div:nth-child(4) > p > label:nth-child(1)', exact_text: 'Male').click
    sleep 1
  end
  
  And("input data in field Engine Street Adress {string}") do |streetadress|
    fill_in 'streetaddress', with: streetadress
    sleep 1
  end
  
  And("input data in field Country {string}") do |country|
    select(country, from: 'country')
    sleep 1
  end
  
  And("input data in field Zip Code {string}") do |zipcode|
    fill_in 'zipcode', with: zipcode
    sleep 1
  end

  And("input data in field Occupation {string}") do |occupation|
    select(occupation, from: 'occupation')

    def scroll_down_page
      page.execute_script('window.scrollTo(0,document.body.scrollHeight);')
    end
    sleep 1
  end
  And("input data in field Hobbies that you have") do
    find('#insurance-form > div > section:nth-child(2) > div.field.idealforms-field.idealforms-field-checkbox > p > label:nth-child(1) > span', :visible => false).click
    sleep 1
    # esse trecho acima é outra forma de setar um radio
    end
  
  And("Press button NextEID for continue") do
    click_button 'nextenterproductdata'
    sleep 3
  end

  And("input data in field Start Date {string}") do |startdate|
    fill_in 'startdate', with: startdate
    sleep 1
  end

  And("input data in field Insurance Sum {string}") do |insurancesum|
    select(insurancesum, from: 'insurancesum')
    sleep 1
  end

  And("input data in field Merit Rating {string}") do |meritrating|
    select(meritrating, from: 'meritrating')
    sleep 1
  end
  

  And("input data in field Damage Insurance {string}") do |damageinsurance|
    select(damageinsurance, from: 'damageinsurance') 
    sleep 1
  end

  And("check data in checkboxes Optional Products") do
    find('#insurance-form > div > section:nth-child(3) > div.field.idealforms-field.idealforms-field-checkbox > p > label:nth-child(2)',exact_text:'Legal Defense Insurance').click
    sleep 1
  end

  And("input data in field Courtesy Car {string}") do |courtesycar|
    select(courtesycar, from: 'courtesycar')
    sleep 1
  end

  And("Press button NextSPO for continue") do
    click_button 'nextselectpriceoption'
    sleep 1
  end
  
  And("Select the radio-button with the Ultimate value") do
    find('#priceTable > tfoot > tr > th.group > label:nth-child(4)', :visible => false).click
    sleep 1
  end

  And("Press button NextQuote for continue") do
    click_button 'nextsendquote'
    sleep 1
  end

  When("input data in field Email {string}") do |email|                         
    fill_in 'email', with: email
    sleep 1
  end                                                                            
                                                                                 
  When("input data in field Username {string}") do |username|                      
    fill_in 'username', with: username
    sleep 1
  end                                                                            
                                                                                 
  When("input data in field Password {string}") do |password|                      
    fill_in 'password', with: password
    sleep 1
  end                                                                            
                                                                                 
  When("input data in field Confirm Password {string}") do |confirmpassword|              
    fill_in 'confirmpassword', with: confirmpassword
    sleep 1
  end                                                                            
                                                                                 
  When("Press button Send") do                                                   
    click_button 'sendemail'  
    sleep 1
  end                                                                            
                                                                                 
  Then("Verify the message has been showing {string}") do |message|              
    expect(find('body > div.sweet-alert.showSweetAlert.visible > h2').text).to include 'Sending e-mail failed!'
    #expect('body > div.sweet-alert.showSweetAlert.visible > h2', exact_text: 'Sending e-mail failed!')  
    sleep 1
  end                                                                            
                                                                                 

