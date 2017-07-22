// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "DayOneExecutable",
    dependencies: [
    .Package(url: "https://github.com/jafhar/AdventOfCode-Library-Day1", Version(1,0,0)),
    ]
)
