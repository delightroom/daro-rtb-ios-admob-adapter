// swift-tools-version:5.9
import PackageDescription
let package = Package(
    name: "DaroBidAdMobAdapter",
    platforms: [.iOS(.v13)],
    products: [.library(name: "DaroBidAdMobAdapter", targets: ["DaroBidAdMobAdapter", "DaroBidAdMobDependencies"])],
    dependencies: [
        .package(url: "https://github.com/delightroom/daro-rtb-ios-sdk.git", exact: "26.10.2400-rc.4"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.0.0")
    ],
    targets: [
        .binaryTarget(name: "DaroBidAdMobAdapter", url: "https://github.com/delightroom/daro-rtb-ios-admob-adapter/releases/download/2.0.6-rc.4/DaroBidAdMobAdapter-2.0.6-rc.4.zip", checksum: "cd6486ddc2f9fc6083060e6656409bdf534f6461206d3bdb02a9867277e48854"),
        .target(name: "DaroBidAdMobDependencies", dependencies: [
            "DaroBidAdMobAdapter",
            .product(name: "DaroBid", package: "daro-rtb-ios-sdk"),
            .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
        ])
    ]
)
