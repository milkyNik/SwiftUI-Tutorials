//
//  PageViewController.swift
//  Landmarks
//
//  Created by dev on 19.02.2025.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    
    var pages: [Page]
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let pageViewController = UIPageViewController(transitionStyle: .scroll,
                                                      navigationOrientation: .horizontal)
        return pageViewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        (uiViewController as? UIPageViewController)?.setViewControllers([UIHostingController(rootView: pages[0])],
                                                                        direction: .forward,
                                                                        animated: true)
    }
}
