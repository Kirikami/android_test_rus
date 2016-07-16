Currently there already one report in repo which you can check. Go to step 19 for it.

Installation:

    1. Checkout repository

    2. Install rvm https://rvm.io/rvm/install `\curl -sSL https://get.rvm.io | bash -s stable --ruby`

    3. Check that rvm using latest stable ruby `rvm list`, `ruby -v`

    4. Go to project directory and run `bundle install` command.

    5. Download and install node.js

    6. Download and install Android SDK with emulator https://developer.android.com/studio/install.html

    7. Set in your shell Android SDK folder path to $ANDROID_HOME, JAVA_HOME and add to path android tools (export ANDROID_HOME=$HOME/Library/Android/sdk/ export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/Contents/Home/ export PATH=$HOME/Library/Android/sdk/platform-tools:$PATH export PATH=$HOME/Library/Android/sdk/tools:$PATH)

    8. Download and install `brew install node` if you’re using Mac

    9. Download and install Appium `npm install -g appium`

    11. Compile project apk in Android sdk and copy it to $HOME/Library/Android/sdk/platform-tools

    12. Download and install for sdk “platform-tools” “tools” and packages for Android 6

    13. Create emulator with `android avd` with such parameters:

        a. AVD Name: Android (if you changed name you have to update name in 'cucumber.yml' file)

        b. Device: Nexus 5

        c. Target: Android 6.0

        d. CPU/ABI: Google Api Intel Atom x86

        e. Skin: No Skin

        f. Internal Storage: 500

        g. SD Card: 500

        h. Use host GPU: True

    14. Run emulator from `cd $ANDROID_HOME` `tools/emulator -avd Android`

    15. Install apk `platform-tools/adb install tools/calc.apk`

    16. Run appium `appium`

    17. Go to test project.

    18. Run tests inside project `cucumber`

    19. For opening report install allure http://wiki.qatools.ru/display/AL/Allure+Commandline

    20. Run in project folder `allure generate gen/allure-results`

    21. Run `allure report open`

Optional:

    22. Or install docker and docker-compose

    23. Run docker service

    24. In project folder run `docker-compose build`, `docker-compose up -d` and copy <container_name>

    25. Run command `docker exec -it <container_name> generate_report

    26. Open in browser localhost:5000

Important: emulator could not work with docker at the same time.

	In feature folder there are cucumber features with tests, in root folder rspec template without implementation (could be look like this or could be improved using shared examples and shared context).

	Cucumber features doesn't cover cases with big numbers and with empty fields which crashing application.

	Also there as example Scenario Outline which could be run instead of all tests in same feature file.

	In allure report you could find all necessary information about tests including screenshot.


