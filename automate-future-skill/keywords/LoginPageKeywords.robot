*** Settings ***
Library         SeleniumLibrary
Library    String
Resource        CommonKeywords.robot


*** Keywords ***

user login to future skill platform with ${username} and ${password}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[text()="เข้าสู่ระบบ"]
    CommonKeywords.Wait until element is ready then input text        name=email            ${username}
    CommonKeywords.Wait until element is ready then input text        name=password         ${password}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[@type="submit" and text()="เข้าสู่ระบบ"]

user subscribe to future skill platform with ${username} and ${firstname} and ${lastname} and ${phoneNumber} and ${password} and ${password} and ${otpCode}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text        name=email            ${username}
    CommonKeywords.Wait until element is ready then input text        name=firstName        ${firstname}
    CommonKeywords.Wait until element is ready then input text        name=lastName         ${lastname}
    CommonKeywords.Wait until element is ready then input text        name=phoneNumber      ${phoneNumber}
    CommonKeywords.Wait until element is ready then input text        name=newPassword      ${password}
    CommonKeywords.Wait until element is ready then input text        name=confirmPassword  ${password}
    CommonKeywords.Wait until element is ready then click element     xpath=//input[@type="checkbox" and @name="consent"]
    CommonKeywords.Wait until element is ready then click element     xpath=//button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then click element     xpath=//button[text()="กลับ"]
    
future skill should display display validate login fail message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text        ${expected_message}