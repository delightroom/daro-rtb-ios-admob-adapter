// swift-tools-version:5.9
import PackageDescription
let package = Package(
    name: "DaroBidAdMobAdapter",
    platforms: [.iOS(.v13)],
    products: [.library(name: "DaroBidAdMobAdapter", targets: ["DaroBidAdMobAdapter", "DaroBidAdMobDependencies"])],
    dependencies: [
        .package(url: "https://github.com/delightroom/daro-rtb-ios-sdk.git", exact: "26.9.1800"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.0.0")
    ],
    targets: [
        .binaryTarget(name: "DaroBidAdMobAdapter", url: "https://github.com/delightroom/daro-rtb-ios-admob-adapter/releases/download/2.0.2/DaroBidAdMobAdapter-2.0.2.zip", checksum: "36c358aa16f56ddfcee98118442978780ac7ced69bd91cf630513458ef27b1db"),
        .target(name: "DaroBidAdMobDependencies", dependencies: [
            "DaroBidAdMobAdapter",
            .product(name: "DaroBid", package: "daro-rtb-ios-sdk"),
            .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
        ])
    ]
)
