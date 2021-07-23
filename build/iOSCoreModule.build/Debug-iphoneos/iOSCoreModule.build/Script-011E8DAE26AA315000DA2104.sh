#!/bin/sh
# Type a script or drag a script file from your workspace to insert its path.
#UNIVERSAL_OUTPUTFOLDER=${BUILD_DIR}/${CONFIGURATION}-Universal
# Make sure the output directory exists
#mkdir -p "${UNIVERSAL_OUTPUTFOLDER}"

# Next, work out if we're in SIMULATOR or REAL DEVICE
#xcodebuild -target "iOSCoreModule" -configuration ${CONFIGURATION} -sdk iphonesimulator ONLY_ACTIVE_ARCH=NO BUILD_DIR="${BUILD_DIR}" BUILD_ROOT="${BUILD_ROOT}" build
#xcodebuild -target "iOSCoreModule" ONLY_ACTIVE_ARCH=NO -configuration ${CONFIGURATION} -sdk iphoneos  BUILD_DIR="${BUILD_DIR}" BUILD_ROOT="${BUILD_ROOT}"



