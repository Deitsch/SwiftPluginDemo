//
//  main.swift
//  
//
//  Created by Simon Deutsch on 15.02.23.
//

import PackagePlugin
import Foundation

@main
struct TSPlugin: BuildToolPlugin {

    func createBuildCommands(context: PackagePlugin.PluginContext, target: PackagePlugin.Target) async throws -> [PackagePlugin.Command] {
        let tsPath = context.pluginWorkDirectory
                .appending (subpath: target.name)
                .appending (subpath: "Seatmap")
        print(tsPath)
        print("here1")
        let scriptPath = context.package.directory.appending(["..", "TSPlugin", "TEst.sh"])

        print("here2")
//        return [
//            .prebuildCommand(
//                displayName: "Generate seatmap ts files",
//                executable: .init("TEst.sh"),
//                arguments: [],
//                outputFilesDirectory: [])
//        ]
        return [
            .prebuildCommand(
                displayName: "Generating localized strings from source files",
                executable: scriptPath,
                arguments: [],
                outputFilesDirectory: tsPath
            )
        ]
    }
}


