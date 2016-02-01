require 'rubygems'
require 'test/unit'
require 'selenium-webdriver'

class FairdomWebsite < Test::Unit::TestCase

  def test_for_firefox
    browser = Selenium::WebDriver.for :firefox
    browser.manage().window.maximize()
    test_title(browser)
  end

  def test_for_chrome
    driver_path = File.dirname(__FILE__) + "/../lib/drivers/chromedriver"
    Selenium::WebDriver::Chrome.driver_path = driver_path
    browser = Selenium::WebDriver.for :chrome
    browser.manage().window.maximize()
    test_title(browser)
  end

  private

  def test_title(browser)
    @base_url = "http://fair-dom.org"

    #homepage
    browser.get  @base_url
    assert_equal('FAIRDOM', browser.title)  
  
    #about
    browser.get  @base_url +  "/about-fairdom/"
    assert_equal('About FAIRDOM | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/about-fairdom/people/"
    assert_equal('People | FAIRDOM', browser.title)  
  
    browser.get  @base_url +  "/about-fairdom/funders/"
    assert_equal('Funders | FAIRDOM', browser.title)  
  
    browser.get  @base_url +  "/publications/"
    assert_equal('Publications | FAIRDOM', browser.title)  
  
    browser.get  @base_url +  "/about-fairdom/contact-us/"
    assert_equal('Contact Us | FAIRDOM', browser.title)
  
    #browser.get  @base_url +  "http://fair-dom.org/website-credits"
    #assert_equal('Credits | FAIRDOM', browser.title)  
  
    #FAIRDOM software
    browser.get  @base_url +  "/platform/"
    assert_equal('FAIRDOM Platform | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/platform/seek/"
    assert_equal('SEEK | FAIRDOM', browser.title)  
  
    browser.get  @base_url +  "/platform/openbis/"
    assert_equal('openBis | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/platform/rightfield/"
    assert_equal('Rightfield | FAIRDOM', browser.title)  
  
    browser.get  @base_url +  "/jws-online/"
    assert_equal('JWS Online | FAIRDOM', browser.title)  
  
    #Community
    browser.get  @base_url +  "/communities/"
    assert_equal('Communities | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/communities/pals"
    assert_equal('PALs | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/communities/pals/pals-gallery/"
    assert_equal('PALS Gallery | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/communities/samples-club/"
    assert_equal('Samples Club | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/communities/data-management-foundry/"
    assert_equal('Data Management Foundry | FAIRDOM', browser.title)
  
    # Knowledge Hub

    browser.get  @base_url +  "/knowledgehub/"
    assert_equal('Knowledge Hub | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/knowledgehub/data-and-model-management/"
    assert_equal('Data and Model Management | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/knowledgehub/data-management-checklist/"
    assert_equal('Data Management Checklist | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/knowledgehub/community-standards/"
    assert_equal('Community Standards | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/knowledgehub/data-and-model-repositories-and-commons/"
    assert_equal('Data and Model Repositories and Commons | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/knowledgehub/specialised-software/"
    assert_equal('Specialised Software | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/knowledgehub/webinars-2/"
    assert_equal('Webinars | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/knowledgehub/reports/"
    assert_equal('Reports | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/knowledgehub/presentations/"
    assert_equal('Presentations | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/knowledgehub/tutorials/"
    assert_equal('Tutorials | FAIRDOM', browser.title)
  
    # Partners

    browser.get  @base_url +  "/partners/"
    assert_equal('Partners | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/partners/erasysapp/"
    assert_equal('ERASysAPP | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/partners/sysmo/"
    assert_equal('SysMO | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/partners/virtual-liver-network-vln/"
    assert_equal('Virtual Liver Network (VLN) | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/partners/emsl/"
    assert_equal('EMSL | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/partners/synbiochem/"
    assert_equal('SYNBIOCHEM | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/partners/synthsys/"
    assert_equal('SynthSys | FAIRDOM', browser.title)
  
    #blog

    browser.get  @base_url +  "/blog/"
    assert_equal('Blog | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/2015/09/22/reproducible-and-citable-data-and-models-workshop/"
    assert_equal('Reproducible and Citable Data and Models Workshop | FAIRDOM', browser.title)
  
    #Events
    browser.get  @base_url +  "/events"
    assert_equal('Events | FAIRDOM', browser.title)  
  
    browser.get  @base_url +  "/events/fundamentals-of-modelling-metabolism-and-signalling-in-biology-2/"
    assert_equal('Fundamentals of modelling metabolism and signalling in biology | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/past-events"
    assert_equal('Past Events | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/upcoming-events/"
    assert_equal('Upcoming Events | FAIRDOM', browser.title)
  
    #News
    browser.get  @base_url +  "/news"
    assert_equal('News | FAIRDOM', browser.title)
  
    browser.get  @base_url +  "/2016/01/26/save-the-date-15th-september-2016-fairdom-user-meeting-as-a-satellite-of-icsb-2016/"
    assert_equal('Save the date (15th September 2016): FAIRDOM User Meeting as a Satellite of ICSB 2016 | FAIRDOM', browser.title)
  
    #Imprint
    #browser.get  @base_url +  "http://fair-dom.org/imprint"
    #assert_equal('Imprint | FAIRDOM', browser.title)  
  

    #external links
    browser.get "http://www.systemsx.ch/"
    assert_equal('SystemsX.ch - The Swiss Initiative in Systems Biology: systemsx.ch', browser.title)  
  
    browser.get "http://www.bbsrc.ac.uk/"
    assert_equal('Biotechnology and Biological Sciences Research Council (BBSRC) - BBSRC', browser.title)  
  
    browser.get "http://www.bmbf.de/en/"
    assert_equal('Homepage - BMBF', browser.title)  
  
    browser.get "http://www.nwo.nl/en"
    assert_equal('Welcome to NWO', browser.title)  
  
    browser.get "https://twitter.com/fairdom_eu"
    assert_equal('FAIRDOM (@FAIRDOM_eu) | Twitter', browser.title)  
  
    browser.get @base_url + "/feed/"
    if browser.browser==:firefox
      assert_equal('FAIRDOM', browser.title)
      elsif browser.browser==:chrome
      assert_equal('http://fair-dom.org/feed/', browser.title)
      end


    #non-existing page
    browser.get  @base_url +  "/blabla"
    assert_equal('Page not found | FAIRDOM', browser.title)  
      browser.quit
  end

end
