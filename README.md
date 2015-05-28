== README for buck-ios-sample ==

This is a small iOS app which builds and runs tests with Buck.

Prerequisites:

1) Buck (https://github.com/facebook/buck/)
2) Xcode with command-line tools installed

== Instructions ==

  % buck test //:AppTest

This should build the sample iOS Simulator app, its application-hosted unit test, and use
the (included) `xctool` binary to install and launch the test inside the app in the iOS
simulator.
