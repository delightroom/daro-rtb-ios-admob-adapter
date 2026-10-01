// swift-tools-version:5.9
import PackageDescription
let package = Package(
    name: "DaroBidAdMobAdapter",
    platforms: [.iOS(.v13)],
    products: [.library(name: "DaroBidAdMobAdapter", targets: ["DaroBidAdMobAdapter", "DaroBidAdMobDependencies"])],
    dependencies: [
        .package(url: "https://github.com/delightroom/daro-rtb-ios-sdk.git", exact: "26.10.100"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.0.0")
    ],
    targets: [
        .binaryTarget(name: "DaroBidAdMobAdapter", url: "https://github.com/delightroom/daro-rtb-ios-admob-adapter/releases/download/2.0.3/DaroBidAdMobAdapter-2.0.3.zip", checksum: "4da6d7260d3775a4504ef5db7955586704e5d0da21e7ae0ca4db0036d37f077b"),
        .target(name: "DaroBidAdMobDependencies", dependencies: [
            "DaroBidAdMobAdapter",
            .product(name: "DaroBid", package: "daro-rtb-ios-sdk"),
            .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
        ])
    ]
)
