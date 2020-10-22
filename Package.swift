// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "LocationManager",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "LocationManager",
            targets: ["LocationManager"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "LocationManager",
            dependencies: ["LocationManagerOBJC"],
            path: "Source/LocationManager"
        ),
        .target(
            name: "LocationManagerOBJC",
            dependencies: [],
            path: "LocationManager/INTULocationManager",
            cSettings: [
                .headerSearchPath("Internal"),
        ])
    ]
)
