// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TPNMediationApplovinAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNMediationApplovinAdapter",
            targets: ["TPNMediationApplovinAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/toponteam-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.4")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkApplovinAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkApplovinAdapter/13.6.4.2.9/AnyThinkApplovinAdapter-13.6.4.2.9.zip",
            checksum: "5831b31e175c7c64d7daaa524c1c9051cd469c7c704612b628116cf928d8779c"
        ),
        .target(
            name: "TPNMediationApplovinAdapterTarget",
            dependencies: [
                "AnyThinkApplovinAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            path: "Sources/TPNMediationApplovinAdapterTarget"
        )
    ]
)
