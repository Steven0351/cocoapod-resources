import IonicPortals
import SwiftUI
import UIKit
import Foundation

public struct NativeView: View {
    public init(key: String) {
        PortalsRegistrationManager.shared.register(key: key)
    }
    
    public var body: some View {
        PortalView(portal: .greatApp)
    }
}

public class NativeUIView: UIView {
    init(key: String) {
        PortalsRegistrationManager.shared.register(key: key)
        super.init(frame: .zero)
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) not implemented")
    }
}

extension Portal {
    static let greatApp = Portal(
        name: "build",
        bundle: .framework
    )
}

extension Bundle {
    private class Finder: NSObject {}
    static let framework = Bundle(for: Finder.self)
}
