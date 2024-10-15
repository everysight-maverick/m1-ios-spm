// swift-tools-version:5.5
import PackageDescription

let releaseName = "v2.6.0"
let checksumEvsKit = "a1db7fdf6c4ef36efa6a2ba8dc25dec0a858c401063d681a8c560e9653f31cbd"
let checksumNativeEvsKit = "e1fe471a7349a7026ded2be4a239a8f9d77ebb45ecf9e625a4a8af41af062900"


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
