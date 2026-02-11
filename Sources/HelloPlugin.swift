// ============================================================
// HelloPlugin.swift
// ARO Plugin - Swift Hello World Example
// ============================================================

import Foundation

/// A simple Swift plugin that provides greeting functionality
///
/// This plugin demonstrates how to create a Swift plugin for ARO.
/// It provides a "greet" action that generates personalized greetings.
public struct HelloPlugin {

    /// Plugin metadata
    public static let name = "plugin-swift-hello"
    public static let version = "1.0.0"

    /// Available actions provided by this plugin
    public static let actions = ["greet", "farewell"]

    // MARK: - Actions

    /// Greet action - generates a personalized greeting
    /// - Parameter input: Dictionary containing "name" key
    /// - Returns: Greeting message
    public static func greet(input: [String: Any]) -> [String: Any] {
        let name = input["name"] as? String ?? "World"
        let greeting = "Hello, \(name)!"

        return [
            "message": greeting,
            "timestamp": ISO8601DateFormatter().string(from: Date()),
            "plugin": name
        ]
    }

    /// Farewell action - generates a goodbye message
    /// - Parameter input: Dictionary containing "name" key
    /// - Returns: Farewell message
    public static func farewell(input: [String: Any]) -> [String: Any] {
        let name = input["name"] as? String ?? "World"
        let farewell = "Goodbye, \(name)! See you soon!"

        return [
            "message": farewell,
            "timestamp": ISO8601DateFormatter().string(from: Date()),
            "plugin": name
        ]
    }
}
