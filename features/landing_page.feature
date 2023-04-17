Feature: ADHA FHIR IG landing page

  Background:
    Given the web endpoint "https://fhir.digitalhealth.gov.au" resolves

  Scenario: Header information is correct
    Then the first line has "Australian Digital Health Agency" as h1 style
    And the header includes the registered trademark symbol after FHIR

  Scenario: Item #1 au.digitalhealth.r4#1.0.0
    Given the web endpoint "https://fhir.digitalhealth.gov.au" resolves

  Scenario: Footer information is correct
    Then the footer contains a link to the ADHA privacy policy
    And the footer contains a link to the ADHA Terms of Use
