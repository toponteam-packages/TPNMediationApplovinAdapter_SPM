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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkApplovinAdapter/13.6.4.2.0/AnyThinkApplovinAdapter-13.6.4.2.0.zip",
            checksum: "18f2472d4e8ef1dcb397a88e70282e8d1f056e3fe5961c724fd1f851e6f62e86"
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
