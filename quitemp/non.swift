import SwiftUI

struct Font {
    enum TextStyle: String, CaseIterable {
        case title
        case body
        case caption
        // Add other text styles as needed

        public static var allCases: [Font.TextStyle] {
            return [.title, .body, .caption]
        }
    }
}
