//
//  ViewController.swift
//  MVC
//
//  Created by 유정주 on 2022/07/20.
//

import UIKit

class Controller: UIViewController {
    
    //MARK: - Views
    private var customView: View!
    
    //MARK: - Properties
    private var count: Int = 0
    private let userGroup: UserGroup = UserGroup()
    
    //MARK: - Life Cycles
    override func loadView() {
        super.loadView()
        
        customView = View(frame: self.view.frame)
        self.view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.changeName(name: userGroup.users[count].name)
        customView.nextButton.addTarget(self, action: #selector(clickedNextButton(sender:)), for: .touchUpInside)
    }

    //MARK: - Actions
    @objc func clickedNextButton(sender: UIButton) {
        count += 1
        count = count >= userGroup.users.count ? 0 : count
        
        customView.changeName(name: userGroup.users[count].name)
    }
}

