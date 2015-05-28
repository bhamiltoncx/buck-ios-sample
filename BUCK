apple_resource(
    name = 'AppResources',
    dirs = [],
    files = glob(['App/*.png']),
)

apple_binary(
    name = 'AppBinary',
    srcs = ['App/App.m'],
    headers = ['App/App.h'],
    frameworks = [
        '$SDKROOT/System/Library/Frameworks/Foundation.framework',
        '$SDKROOT/System/Library/Frameworks/UIKit.framework',
    ],
)

apple_bundle(
    name = 'App',
    binary = ':AppBinary',
    deps = [':AppResources'],
    tests = [':AppTest'],
    extension = 'app',
    info_plist = 'App/App.plist',
)

apple_test(
    name = 'AppTest',
    test_host_app = ':App',
    extension = 'xctest',
    srcs = ['test/AppTest.m'],
    info_plist = 'Test/AppTest.plist',
    frameworks = [
        '$SDKROOT/System/Library/Frameworks/Foundation.framework',
        '$PLATFORM_DIR/Developer/Library/Frameworks/XCTest.framework',
        '$SDKROOT/System/Library/Frameworks/UIKit.framework',
    ],
)
