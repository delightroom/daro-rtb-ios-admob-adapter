// swift-tools-version:5.9
import PackageDescription
let package = Package(
    name: "DaroBidAdMobAdapter",
    platforms: [.iOS(.v13)],
    products: [.library(name: "DaroBidAdMobAdapter", targets: ["DaroBidAdMobAdapter", "DaroBidAdMobDependencies"])],
    dependencies: [
        .package(url: "https://github.com/delightroom/daro-rtb-ios-sdk.git", exact: "26.10.2400-rc.1"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.0.0")
    ],
    targets: [
        .binaryTarget(name: "DaroBidAdMobAdapter", url: "https://github.com/delightroom/daro-rtb-ios-admob-adapter/releases/download/2.0.6-rc.1/DaroBidAdMobAdapter-2.0.6-rc.1.zip", checksum: "98ea85289a474b133a3f897d316b36c3976cbde17b199bbe4c05ce1b20c68800"),
        .target(name: "DaroBidAdMobDependencies", dependencies: [
            "DaroBidAdMobAdapter",
            .product(name: "DaroBid", package: "daro-rtb-ios-sdk"),
            .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
        ])
    ]
)
