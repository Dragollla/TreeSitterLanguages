// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TreeSitterLanguages",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "TreeSitterLanguagesCommon", targets: ["TreeSitterLanguagesCommon"]),
        .library(name: "TreeSitterGQL", targets: ["TreeSitterGQL"]),
        .library(name: "TreeSitterGQLQueries", targets: ["TreeSitterGQLQueries"]),
        .library(name: "TreeSitterGQLRunestone", targets: ["TreeSitterGQLRunestone"]),
        .library(name: "TreeSitterCSS", targets: ["TreeSitterCSS"]),
        .library(name: "TreeSitterCSSQueries", targets: ["TreeSitterCSSQueries"]),
        .library(name: "TreeSitterCSSRunestone", targets: ["TreeSitterCSSRunestone"]),
        .library(name: "TreeSitterHTML", targets: ["TreeSitterHTML"]),
        .library(name: "TreeSitterHTMLQueries", targets: ["TreeSitterHTMLQueries"]),
        .library(name: "TreeSitterHTMLRunestone", targets: ["TreeSitterHTMLRunestone"]),
        .library(name: "TreeSitterJavaScript", targets: ["TreeSitterJavaScript"]),
        .library(name: "TreeSitterJavaScriptQueries", targets: ["TreeSitterJavaScriptQueries"]),
        .library(name: "TreeSitterJavaScriptRunestone", targets: ["TreeSitterJavaScriptRunestone"]),
        .library(name: "TreeSitterJSDoc", targets: ["TreeSitterJSDoc"]),
        .library(name: "TreeSitterJSDocQueries", targets: ["TreeSitterJSDocQueries"]),
        .library(name: "TreeSitterJSDocRunestone", targets: ["TreeSitterJSDocRunestone"]),
        .library(name: "TreeSitterJSON", targets: ["TreeSitterJSON"]),
        .library(name: "TreeSitterJSONQueries", targets: ["TreeSitterJSONQueries"]),
        .library(name: "TreeSitterJSONRunestone", targets: ["TreeSitterJSONRunestone"]),
        .library(name: "TreeSitterJSON5", targets: ["TreeSitterJSON5"]),
        .library(name: "TreeSitterJSON5Queries", targets: ["TreeSitterJSON5Queries"]),
        .library(name: "TreeSitterJSON5Runestone", targets: ["TreeSitterJSON5Runestone"]),
        .library(name: "TreeSitterMarkdown", targets: ["TreeSitterMarkdown"]),
        .library(name: "TreeSitterMarkdownQueries", targets: ["TreeSitterMarkdownQueries"]),
        .library(name: "TreeSitterMarkdownRunestone", targets: ["TreeSitterMarkdownRunestone"]),
        .library(name: "TreeSitterRegex", targets: ["TreeSitterRegex"]),
        .library(name: "TreeSitterRegexQueries", targets: ["TreeSitterRegexQueries"]),
        .library(name: "TreeSitterRegexRunestone", targets: ["TreeSitterRegexRunestone"]),
        .library(name: "TreeSitterSCSS", targets: ["TreeSitterSCSS"]),
        .library(name: "TreeSitterSCSSQueries", targets: ["TreeSitterSCSSQueries"]),
        .library(name: "TreeSitterSCSSRunestone", targets: ["TreeSitterSCSSRunestone"]),
        .library(name: "TreeSitterYAML", targets: ["TreeSitterYAML"]),
        .library(name: "TreeSitterYAMLQueries", targets: ["TreeSitterYAMLQueries"]),
        .library(name: "TreeSitterYAMLRunestone", targets: ["TreeSitterYAMLRunestone"]),
    ],
    dependencies: [
        .package(url: "https://github.com/simonbs/Runestone", .upToNextMajor(from: "0.2.0"))
    ],
    targets: [
        .target(name: "TreeSitterLanguagesCommon"),
        .target(name: "TreeSitterGQL", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterGQLQueries", resources: [.copy("queries")]),
        .target(name: "TreeSitterGQLRunestone", dependencies: ["Runestone", "TreeSitterGQL", "TreeSitterGQLQueries"]),
        .target(name: "TreeSitterCSS", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterCSSQueries", resources: [.copy("queries")]),
        .target(name: "TreeSitterCSSRunestone", dependencies: ["Runestone", "TreeSitterCSS", "TreeSitterCSSQueries"]),
        .target(name: "TreeSitterHTML", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterHTMLQueries", resources: [.copy("queries")]),
        .target(name: "TreeSitterHTMLRunestone", dependencies: ["Runestone", "TreeSitterHTML", "TreeSitterHTMLQueries"]),
        .target(name: "TreeSitterJavaScript", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterJavaScriptQueries", resources: [.copy("queries")]),
        .target(name: "TreeSitterJavaScriptRunestone", dependencies: ["Runestone", "TreeSitterJavaScript", "TreeSitterJavaScriptQueries"]),
        .target(name: "TreeSitterJSDoc", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterJSDocQueries", resources: [.copy("queries")]),
        .target(name: "TreeSitterJSDocRunestone", dependencies: ["Runestone", "TreeSitterJSDoc", "TreeSitterJSDocQueries"]),
        .target(name: "TreeSitterJSON", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterJSONQueries", resources: [.copy("queries")]),
        .target(name: "TreeSitterJSONRunestone", dependencies: ["Runestone", "TreeSitterJSON", "TreeSitterJSONQueries"]),
        .target(name: "TreeSitterJSON5", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterJSON5Queries", resources: [.copy("queries")]),
        .target(name: "TreeSitterJSON5Runestone", dependencies: ["Runestone", "TreeSitterJSON5", "TreeSitterJSON5Queries"]),
        .target(name: "TreeSitterMarkdown", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterMarkdownQueries", resources: [.copy("queries")]),
        .target(name: "TreeSitterMarkdownRunestone", dependencies: ["Runestone", "TreeSitterMarkdown", "TreeSitterMarkdownQueries"]),
        .target(name: "TreeSitterRegex", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterRegexQueries", resources: [.copy("queries")]),
        .target(name: "TreeSitterRegexRunestone", dependencies: ["Runestone", "TreeSitterRegex", "TreeSitterRegexQueries"]),
        .target(name: "TreeSitterSCSS", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterSCSSQueries", resources: [.copy("queries")]),
        .target(name: "TreeSitterSCSSRunestone", dependencies: ["Runestone", "TreeSitterSCSS", "TreeSitterSCSSQueries"]),
        .target(name: "TreeSitterYAML", exclude: ["src/schema.generated.cc"], cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterYAMLQueries", resources: [.copy("queries")]),
        .target(name: "TreeSitterYAMLRunestone", dependencies: ["Runestone", "TreeSitterYAML", "TreeSitterYAMLQueries"])
    ]
)
