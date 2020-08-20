//
//  ViewController.swift
//  BaseDemo
//
//  Created by BASEBS on 8/5/20.
//  Copyright © 2020 BASEBS. All rights reserved.
//

import UIKit
import WebexSDK
import NVActivityIndicatorView
import SkyFloatingLabelTextField

class LoginViewController : UIViewController {

    @IBOutlet weak var tfUserName: SkyFloatingLabelTextField!
    
    @IBOutlet weak var tfPassword: SkyFloatingLabelTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupView()
    }
    
    func setupView() {
        tfUserName.placeholder = "Username"
        tfUserName.title = "Username"
        
        tfPassword.placeholder = "Password"
        tfPassword.title = "Password"
    }

    @IBAction func loginAction(_ sender : AnyObject) {

        let nvActivity = NVActivityIndicatorView(frame: CGRect(origin: CGPoint(x: (view.frame.width - 50)/2, y: (view.frame.height - 50)/2), size: CGSize(width: 50, height: 50)), type: .circleStrokeSpin, color: .red, padding: 0)
        
        view.addSubview(nvActivity)
        
        nvActivity.startAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0) {
            nvActivity.stopAnimating()
            
            let vc = PreviewWelcomeViewController()
            
            self.present(vc, animated: false, completion: {
                print("completed")
            })
        }

    }

}

