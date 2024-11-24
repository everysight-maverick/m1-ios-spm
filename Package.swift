// swift-tools-version:5.5
import PackageDescription

let releaseName = "v2.6.0"
let checksumEvsKit = "09fe725bf8b990a2ebee025fa082da727ee6471a47f5b248ab63eec0bf76e678"
let checksumNativeEvsKit = "d82ae9aed52ca2f30a8187490621f79cb73aac65571fa9c8a7c6f25932e0e1df"


let package = Package(
   name: "EvsKit",
   platforms: [
     .iOS(.v15),
   ],
   products: [
      .library(name: "EvsKit", targets: ["EvsKit"]),
      .library(name: "NativeEvsKit", targets: ["NativeEvsKit"])
   ],
   targets: [
      .binaryTarget(
         name: "EvsKit",
         url: "https://github.com/everysight-maverick/m1-ios-spm/releases/download/\(releaseName)/EvsKit.xcframework.zip",
         checksum:"\(checksumEvsKit)"),
      .binaryTarget(
         name: "NativeEvsKit",
         url: "https://github.com/everysight-maverick/m1-ios-spm/releases/download/\(releaseName)/NativeEvsKit.xcframework.zip",
         checksum:"\(checksumNativeEvsKit)")
   ]
)
