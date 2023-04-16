Feature: RSS feed file

  Scenario: the RSS feed file resolves
    Given the FHIR IG landing page has a RSS feed file

  Scenario: Channel information is correct
    Given the FHIR IG landing page has a RSS feed file
    * "/rss/channel/title" value is "Australian Digital Health Agency FHIR Packages"
    * "/rss/channel/description" value is "FHIR NPM packages published by the Australian Digital Health Agency"
    * "/rss/channel/link" value is "https://fhir.digitalhealth.gov.au/package-feed.xml"
    * "/rss/channel/generator" value is "ADHA"

  Scenario: Item #1 au.digitalhealth.r4#1.0.0
    Given the FHIR IG landing page has a RSS feed file
    And item "1" has "title" value "au.digitalhealth.r4#1.0.0"
    And item "1" has "description" value "Australian Digital Health Agency HL7™ FHIR®  NPM package contains FHIR Release 4 (R4) artefacts to support the electronic exchange of Medicare records between individuals, healthcare providers, and the My Health Record system infrastructure in Australia."
    And item "1" has "link" value "https://fhir.digitalhealth.gov.au/R4/dh/1.0.0/package.tgz"
    And item "1" has "guid" value "https://fhir.digitalhealth.gov.au/R4/dh/1.0.0/package.tgz"
    And item "1" has "dc:creator" value "Australian Digital Health Agency"

  Scenario: Item #2 au.digitalhealth.stu3.medicare-records#2.1.0
    Given the FHIR IG landing page has a RSS feed file
    And item "2" has "title" value "au.digitalhealth.stu3.medicare-records#2.1.0"
    And item "2" has "description" value "The Australian Digital Health Agency Medicare Records HL7™ FHIR® NPM package contains HL7™ FHIR Release 3 (STU3) artefacts extended for the  Enhanced Use of Immunisation Records project."
    And item "2" has "link" value "https://fhir.digitalhealth.gov.au/STU3/medicare-records/2.1.0/package.tgz"
    And item "2" has "guid" value "https://fhir.digitalhealth.gov.au/STU3/medicare-records/2.1.0/package.tgz"

  Scenario: Item #3 au.digitalhealth.stu3.medicare-records#2.2.0
    Given the FHIR IG landing page has a RSS feed file
    And item "3" has "title" value "au.digitalhealth.stu3.medicare-records#2.2.0"
    And item "3" has "description" value "The Australian Digital Health Agency Medicare Records HL7™ FHIR® NPM package contains HL7 FHIR Release 3 (STU3) artefacts amended to align scope to live feed for the HDR Upgrade project."
    And item "3" has "link" value "https://fhir.digitalhealth.gov.au/STU3/medicare-records/2.2.0/package.tgz"
    And item "3" has "guid" value "https://fhir.digitalhealth.gov.au/STU3/medicare-records/2.2.0/package.tgz"

  Scenario: Only 3 items
    Given the FHIR IG landing page has a RSS feed file
    Then there are a total of exactly 3 item nodes
