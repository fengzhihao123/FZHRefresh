//
//  ViewController.swift
//  FZHRefresh
//
//  Created by 冯志浩 on 16/10/24.
//  Copyright © 2016年 FZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let SCREEN_WIDTH = UIScreen.main.bounds.size.width
    let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
    var data = ["1","23","3","4","5"]
    let refresh = UIRefreshControl()
    
    let tableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        tableView.fzhHeader.headerViewRefresh { 
            print("xxxxx")
        }
    }
    
    func setupTableView() -> Void {
        tableView.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        
    }
    //    MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "UITableViewCell")
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func delay(_ timeInterval: TimeInterval, _ block: @escaping ()->Void) {
        let after = DispatchTime.now() + timeInterval
        DispatchQueue.main.asyncAfter(deadline: after, execute: block)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("sssss")
    }
}

