//
//  MainTabBarController.swift
//  Podcasts
//
//  Created by Emir Alkal on 26.01.2023.
//

import UIKit

final class MainTabBarController: UITabBarController {
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemGreen
    setUpAppearance()
    setUpViewControllers()
  }
  
  private func setUpViewControllers() {
    let favoritesVC = FavoritesViewController()
    favoritesVC.tabBarItem.title = "Favorites"
    favoritesVC.tabBarItem.image = #imageLiteral(resourceName: "favorites")
    
    let searchVC = SearchViewController()
    searchVC.title = "Search"
    
    let searchNC = UINavigationController(rootViewController: searchVC)
    searchNC.tabBarItem.title = "Search"
    searchVC.tabBarItem.image = #imageLiteral(resourceName: "search")
    
    let downloadsVC = DownloadsViewController()
    downloadsVC.title = "Downloads"
    
    let downloadsNC = UINavigationController(rootViewController: downloadsVC)
    downloadsNC.tabBarItem.title = "Downloads"
    downloadsVC.tabBarItem.image = #imageLiteral(resourceName: "downloads")
    
    viewControllers = [
      favoritesVC, searchNC, downloadsNC
    ]
  }
  
  private func setUpAppearance() {
    let tabAppearance = UITabBarAppearance()
    tabAppearance.configureWithOpaqueBackground()
    
    UITabBar.appearance().tintColor = .purple
    UITabBar.appearance().standardAppearance = tabAppearance
    UITabBar.appearance().scrollEdgeAppearance = tabAppearance
    
    UINavigationBar.appearance().prefersLargeTitles = true
  }
}
