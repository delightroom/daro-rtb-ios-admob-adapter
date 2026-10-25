// swift-tools-version:5.9
import PackageDescription
let package = Package(
    name: "DaroBidAdMobAdapter",
    platforms: [.iOS(.v13)],
    products: [.library(name: "DaroBidAdMobAdapter", targets: ["DaroBidAdMobAdapter", "DaroBidAdMobDependencies"])],
    dependencies: [
        .package(url: "https://github.com/delightroom/daro-rtb-ios-sdk.git", exact: "26.10.2500-rc.4"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.0.0")
    ],
    targets: [
        .binaryTarget(name: "DaroBidAdMobAdapter", url: "https://github.com/delightroom/daro-rtb-ios-admob-adapter/releases/download/2.0.6-rc.9/DaroBidAdMobAdapter-2.0.6-rc.9.zip", checksum: "016eed0b7efca314de4f16c1a66d0d3badd71eafe2f8d5c0a2c7e78010a3fe7b"),
        .target(name: "DaroBidAdMobDependencies", dependencies: [
            "DaroBidAdMobAdapter",
            .product(name: "DaroBid", package: "daro-rtb-ios-sdk"),
            .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
        ])
    ]
)
