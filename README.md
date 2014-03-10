# Integrating Sauce OnDemand with RobotFramework

The following is an example of how to integrate Robot Framework with SauceLabs OnDemand

### Supported Browsers

1. ff
2. firefox
3. ie
4. internetexplorer
5. googlechrome
6. gc
7. chrome
8. opera
9. phantomjs
10. htmlunit
11. htmlunitwithjs
12. android
13. iphone
14. safari

### Host Name

The hostname is comprised of several parts e.g.

```
http://{user_name}:{access_key}@ondemand.saucelabs.com:80/wd/hub
```

The Acess-Key can be found in the bottom left corner of the [https://saucelabs.com/account][1] page as shown below :

![][image-1]


The username can be found in the top right corner of the [https://saucelabs.com/account][2] page as shown below :


![][image-2]

### Disired Capabilities

Key-Value pair CSV.

```
${DESIRED_CAPABILITIES}    name:Testing RobotFramework Selenium2Library,platform:iphone
```

Full list of available [DESIRED_CAPABILITIES][3]

[1]:	https://saucelabs.com/account
[2]:	https://saucelabs.com/account
[3]:	https://code.google.com/p/selenium/wiki/DesiredCapabilities

[image-1]:docs/img/screenshot_27.png "access_key"
[image-2]:docs/img/screenshot_28.png "user_name"
