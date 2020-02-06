  Given("That user access the form is require your cars informations") do
    visit 'app.php'
    end
                                                                                     
  And("input data in field Make {string}") do |make|
         select(make, from: 'make')
    end

  And("input data in field Model {string}") do |model|
      select(model, from: 'model')
  end

  And("input data in field cylindercapacity {string}") do |cylindercapacity|

    fill_in 'cylindercapacity', with: cylindercapacity
  end
                                                                                     
  And("input data in field Engine Performer {string}") do |enginePerformer|
        fill_in 'engineperformance', with: enginePerformer
  end
                                                                                     
  And("input data in field Date of Manufacture {string}") do |manufacture|               
    click_button 'opendateofmanufacturecalender'
    fill_in 'dateofmanufacture', with: manufacture
  end
                                                                                     
  And("input data in field Number of seats {string}") do |numberOfSeats|                   
    select(numberOfSeats, from: 'numberofseats')
  end

   And("input data in field Righ Hand Drive") do
   pending 'ainda não consegui checkar esse campo'#  input(type=radio, name='Right Hand Drive', value='Yes').checked
    end
                                                                                     
    And("input data in field Fuel Type {string}") do |fuelType|                         
    select('3', from: 'numberofseatsmotorcycle')
    select(fuelType, from: 'fuel')
    end
                                                                                     
    And("input data in field List Price {string}") do |listPrice|                        
    fill_in 'payload', with: '999'
    
    fill_in 'totalweight', with: '100'

    def scroll_down_page
        page.execute_script('window.scrollTo(0,document.body.scrollHeight);')
    end
    fill_in 'listprice', with: listPrice
    
  end
  
  And("input data in field Annual Mileage {string}") do |annualMileage|
    fill_in 'annualmileage', with: annualMileage
  end

  And("Press button Next for continue") do
    click_button 'nextenterinsurantdata'
  end

  
  And("that User input data in first name {string}") do |firstname|
    fill_in 'firstname', with: firstname
  end
  
  And("input data in field last name {string}") do |lasttname|
    fill_in 'lastname', with: lasttname
  end
  
  And("input data in field date of b-day {string}") do |birthday|
    click_button 'opendateofbirthcalender'
    fill_in 'birthdate', with: birthday
  end
  
  And("input data in field Engine Street Adress {string}") do |streetadress|
    fill_in 'streetaddress', with: streetadress
  end
  
  And("input data in field Country {string}") do |country|
    select(country, from: 'country')
  end
  
  And("input data in field Zip Code {string}") do |zipcode|
    fill_in 'zipcode', with: zipcode
  end

  And("input data in field Occupation {string}") do |occupation|
    select(occupation, from: 'occupation')

    def scroll_down_page
      page.execute_script('window.scrollTo(0,document.body.scrollHeight);')
    end
  end

  And("input data in field Hobbies that you have") do
    click_link('speeding')
    choose('speeding')
  end
  
  And("Press button NextEID for continue") do
    click_button 'nextenterproductdata'
    sleep 3
  end
# a partir daqui
  And("input data in field Start Date {string}") do |startdate|
    fill_in 'startdate', with: startdate
  end

  And("input data in field Insurance Sum {string}") do |insurancesum|
    select(insurancesum, from: 'insurancesum')
  end

  And("input data in field Merit Rating {string}") do |meritrating|
    select(meritrating, from: 'meritrating')
  end
  

  And("input data in field Damage Insurance {string}") do |damageinsurance|
    select(damageinsurance, from: 'damageinsurance') 
  end

  And("check data in checkboxes Optional Products") do
    #Checkbox dos infernos"!"!"!"!"!"!"!"!"!
  end

  And("input data in field Courtesy Car {string}") do |courtesycar|
    select(courtesycar, from: 'courtesycar')
  end

  And("Press button NextSPO for continue") do
    click_button 'nextselectpriceoption'
  end
  
  And("Select the radio-button with the Ultimate value") do
    choose('selectultimate')
  end

  And("Press button NextQuote for continue") do
    click_button 'nextsendquote'
  end

  When("input data in field Email {string}") do |email|                         
    pending # Write code here that turns the phrase above into concrete actions  
  end                                                                            
                                                                                 
  When("input data in field Username {string}") do |username|                      
    pending # Write code here that turns the phrase above into concrete actions  
  end                                                                            
                                                                                 
  When("input data in field Password {string}") do |password|                      
    pending # Write code here that turns the phrase above into concrete actions  
  end                                                                            
                                                                                 
  When("input data in field Confirm Password {string}") do |confirmpassword|              
    pending # Write code here that turns the phrase above into concrete actions  
  end                                                                            
                                                                                 
  When("Press button Send") do                                                   
    pending # Write code here that turns the phrase above into concrete actions  
  end                                                                            
                                                                                 
  Then("Verify the message has been showing {string}") do |message|              
    pending # Write code here that turns the phrase above into concrete actions  
  end                                                                            
                                                                                 

