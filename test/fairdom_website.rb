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
    #homepage
    browser.get "http://fair-dom.org"
    assert_equal('FAIRDOM',browser.title)

    #about
    browser.get "http://fair-dom.org/about"
    assert_equal('About | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/partners"
    assert_equal('Partners | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/people"
    assert_equal('People | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/funders"
    assert_equal('Funders | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/biblio"
    assert_equal('Publications | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/contact"
    assert_equal('Contact us | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/website-credits"
    assert_equal('Credits | FAIRDOM',browser.title)

    #FAIRDOM software
    browser.get "http://fair-dom.org/FAIRDOMsoftware"
    assert_equal('FAIRDOM Software | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/seek"
    assert_equal('SEEK | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/openbis"
    assert_equal('openBIS | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/rightfield"
    assert_equal('Rightfield | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/jws-online"
    assert_equal('JWS Online | FAIRDOM',browser.title)

    #Community
    browser.get "http://fair-dom.org/community"
    assert_equal('Community | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/blogs"
    assert_equal('The FAIRDOM blog | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/blog-kicking-off-with-the-pals"
    assert_equal('Kicking-off with the PALs | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/samples"
    assert_equal('Samples Working Group | FAIRDOM',browser.title)

    #Events
    browser.get "http://fair-dom.org/events"
    assert_equal('Events | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/event-weblab-2015"
    assert_equal('2015 Workshop on the Cardiac Electrophysiology Web Lab | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/past-events"
    assert_equal('Past Events | FAIRDOM',browser.title)

    #Friends
    browser.get "http://fair-dom.org/friends"
    assert_equal('Friends | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/erasysapp"
    assert_equal('ERASysAPP | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/SYNBIOCHEM"
    assert_equal('SYNBIOCHEM | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/synthsys"
    assert_equal('SynthSys | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/EMSL"
    assert_equal('EMSL | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/SysMo"
    assert_equal('SysMO | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/VLN"
    assert_equal('Virtual Liver Network (VLN) | FAIRDOM',browser.title)

    #Help
    browser.get "http://fair-dom.org/help"
    assert_equal('Help | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/whatisdataandmodelmanagement"
    assert_equal('What is data and model management? | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/managementchecklist"
    assert_equal('Data and Model Management Checklist | FAIRDOM',browser.title)

    #News
    browser.get "http://fair-dom.org/news"
    assert_equal('Recent news | FAIRDOM',browser.title)

    browser.get "http://fair-dom.org/news-talk-demo-ismb-2015"
    assert_equal('FAIRDOM at ISMB 2015 | FAIRDOM',browser.title)

    #Imprint
    browser.get "http://fair-dom.org/imprint"
    assert_equal('Imprint | FAIRDOM',browser.title)


    #external links
    browser.get "http://www.systemsx.ch/"
    assert_equal('SystemsX.ch - The Swiss Initiative in Systems Biology: systemsx.ch',browser.title)

    browser.get "http://www.bbsrc.ac.uk/"
    assert_equal('Biotechnology and Biological Sciences Research Council (BBSRC) - BBSRC',browser.title)

    browser.get "http://www.bmbf.de/en/"
    assert_equal('Homepage - BMBF',browser.title)

    browser.get "http://www.nwo.nl/en"
    assert_equal('Welcome to NWO',browser.title)

    browser.get "https://twitter.com/fairdom_eu"
    assert_equal('FAIRDOM (@FAIRDOM_eu) | Twitter',browser.title)

    browser.get "http://fair-dom.org/rss.xml"
    if browser.browser==:firefox
      assert_equal('FAIRDOM feed',browser.title)
    elsif browser.browser==:chrome
      assert_equal('http://fair-dom.org/rss.xml',browser.title)
    end


    #non-existing page
    browser.get "http://fair-dom.org/blabla"
    assert_equal('Page not found | FAIRDOM',browser.title)
    browser.quit
  end

end
