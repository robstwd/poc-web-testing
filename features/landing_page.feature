Feature: ADHA FHIR IG landing page

  Background:
    Given the web endpoint "https://fhir.digitalhealth.gov.au" resolves

  Scenario: Header information is correct
    Then the first line has "Australian Digital Health Agency" as h1 style
    And the header includes the registered trademark symbol after FHIR

  Scenario: Body of landing page - header
    Then the body contains "FHIR® Implementation Guides" as h1 style

  Scenario: Body of landing page - link one
    Then body link 1 has text "Australian Digital Health Agency FHIR Implementation Guide 1.0.0"
    And body link 1 has url "https://fhir.digitalhealth.gov.au/dh/1.0.0"
    And the web endpoint "https://fhir.digitalhealth.gov.au/dh/1.0.0" resolves
    And it resolves to an IG page with the title "Australian Digital Health Agency FHIR Implementation Guide 1.0.0"

  Scenario: Body of landing page - link two
    Then body link 2 has text "Australian Digital Health Agency Medicare Records FHIR Implementation Guide 2.2.0"
    And body link 2 has url "https://fhir.digitalhealth.gov.au/medicare-records/2.2.0"
    And the web endpoint "https://fhir.digitalhealth.gov.au/medicare-records/2.2.0" resolves
    And it resolves to an IG page with the title "Australian Digital Health Agency Medicare Records FHIR Implementation Guide 2.2.0"

  Scenario: Body of landing page - link three
    Then body link 3 has text "Australian Digital Health Agency Medicare Records FHIR Implementation Guide 2.1.0"
    And body link 3 has url "https://fhir.digitalhealth.gov.au/medicare-records/2.1.0"
    And the web endpoint "https://fhir.digitalhealth.gov.au/medicare-records/2.1.0" resolves
    And it resolves to an IG page with the title "Australian Digital Health Agency Medicare Records FHIR Implementation Guide 2.1.0"

  Scenario: Footer - link one Privacy Policy
    Then footer link 1 has text "Privacy Policy"
    And footer link 1 has url "https://www.digitalhealth.gov.au/about-us/policies-privacy-and-reporting/privacy-policy"
    And the web endpoint "https://www.digitalhealth.gov.au/about-us/policies-privacy-and-reporting/privacy-policy" resolves

  Scenario: Footer - link two Terms of Use
    Then footer link 2 has text "Terms of Use"
    And footer link 2 has url "https://www.digitalhealth.gov.au/about-us/policies-privacy-and-reporting/terms-of-use"
    And the web endpoint "https://www.digitalhealth.gov.au/about-us/policies-privacy-and-reporting/terms-of-use" resolves

  Scenario: Footer copyright statement
    Then the footer contains "©2023 Australian Digital Health Agency"
