Download and install node.js
Download and install Android SDK with emulator https://developer.android.com/studio/install.html
Set in your shell Android SDK folder path to $ANDROID_HOME, JAVA_HOME and add to path android tools (export ANDROID_HOME=$HOME/Library/Android/sdk/ export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/Contents/Home/ export PATH=$HOME/Library/Android/sdk/platform-tools:$PATH export PATH=$HOME/Library/Android/sdk/tools:$PATH) 
Download and install `brew install node` if you’re using Mac
Download and install Appium `npm install -g appium`
Compile project apk in Android sdk and copy it to $HOME/Library/Android/sdk/platform-tools 
Download and install for sdk “platform-tools” “tools” and packages for Android 6
Create emulator with `android avd` with such parameters:
AVD Name: Android
Device: Nexus 5
Target: Android 6.0
CPU/ABI: Google Api Intel Atom x86
Skin: No Skin
Internal Storage: 500
SD Card: 500
Use host GPU: True
Run emulator from `cd $ANDROID_HOME` `tools/emulator -avd Android`
Install apk `platform-tools/adb install tools/calc.apk`
Run appium `appium`
Go to test project.
Run tests inside project `cucumber`
For opening report install allure http://wiki.qatools.ru/display/AL/Allure+Commandline 
Run in project folder `allure generate gen/allure-results`
Run `allure report open`
Or install docker and docker-compose
Run docker service
In project folder run `docker-compose build`, `docker-compose up -d` and copy <container_name>
Run command `docker exec -it <container_name> generate_report
Open in browser localhost:5000

Important: emulator could will not work with runned docker 


	In feature folder there are cucumber features with tests, in root folder rspec template without implementation (could be look like this or could be improved using shared examples and shared context). Cucumber features doesnt cover cases with big numbers and with empty fields which crashing application. Also there as example Scenario Outline which could be run instead of all tests in same feature file.
	In allure report you could find all necessary information about tests including screenshot.

