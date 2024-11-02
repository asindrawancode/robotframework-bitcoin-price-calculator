*** Settings ***
Resource        ../resources/keywrods/home_keywords.robot
Resource        ../resources/pages/home_page.robot

*** Test Cases ***
Verify Page Title and Content
    Open Home Page
    Title Should Be            ${HOME_PAGE_TITLE}
    Page Should Contain    Simple, traffic-based pricing
    Page Should Contain    PageViews
    Page Should Contain    / month
    Page Should Contain    25%
    Page Should Contain    discount
    Page Should Contain    Monthly Billing
    Page Should Contain    Yearly Billing

Verify Trial Signup Information
    Page Should Contain    Sign-up for our 30-day trial. No credit card required.

Verify Features List
    Page Should Contain    Unlimited websites
    Page Should Contain    100% data ownership
    Page Should Contain    Email reports

Verify Monthly and Yearly Billing Toggle
    Wait Until Element Is Visible    ${HOME_CHECKBOX}    ${WAITING_TIME}

Check that the slider is present and visually styled
    Wait Until Element Is Visible    ${HOME_SLIDDER}

Verify Start Trial Button
    Wait Until Element Is Visible    ${HOME_TRIAL_BUTTON}
    [Teardown]    Close Browser

Verify Monthly Pricing Slider
    [Template]    Adjust the slider and ensure that monthly price updates accordingly
    0        $16.00    0.00023034176960064497    100K
    100      $24.00    0.00034626038781163435    500K
    200      $36.00    0.0005193905817174516     1M
    -100     $12.00    0.00017313019390581717    50K
    -200     $8.00     0.00011542012927054478    10K

Verify Yearly Pricing Slider
    [Template]    Adjust the slider and ensure that yearly price updates accordingly
    0        $12.00    0.00017323766764353464    100K
    100      $18.00    0.00025985650146530194    500K
    200      $27.00    0.0003897847521979529     1M
    -100     $9.00     0.00012992825073265097    50K
    # -200     $6.00     0.00008661883382176732    10K