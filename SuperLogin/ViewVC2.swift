//
//  ViewVC2.swift
//  SuperLogin
//
//  Created by abdullah on 14/10/1441 AH.
//  Copyright © 1441 abdullah. All rights reserved.
//

import UIKit

class ViewVC2: UIViewController {

    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtFirstNameCenterConstraint: NSLayoutConstraint!
    @IBOutlet weak var txtLastNameCenterConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var btnRegisterTrailingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnLoginLeadingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var containerViewTopConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var imgLogoBottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func ButtonAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        txtFirstNameCenterConstraint.constant -= view.bounds.width
        txtLastNameCenterConstraint.constant -= view.bounds.width
        btnLoginLeadingConstraint.constant -= view.bounds.width
        btnRegisterTrailingConstraint.constant -= view.bounds.width
        containerViewTopConstraint.constant = 60
        imgLogoBottomConstraint.constant = 260
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        txtFirstNameCenterConstraint.constant = 0
        self.view.animation(duration: 0.5, delay: 0.3)

        txtLastNameCenterConstraint.constant = 0
        self.view.animation(duration: 0.5, delay: 0.4)
        
        btnLoginLeadingConstraint.constant = 25
        self.view.animation(duration: 0.5, delay: 0.6)
        
        btnRegisterTrailingConstraint.constant = 25
        self.view.animation(duration: 0.5, delay: 0.6)
        
        containerViewTopConstraint.constant = self.view.center.y - 30
        UIView.animate(withDuration: 0.6,
                       delay: 0.9,
                       options: [.curveEaseOut],
                       animations: { [weak self] in
                        self!.btnLogin.layer.cornerRadius = self!.btnLogin.frame.height / 2
                        self!.btnRegister.layer.cornerRadius = self!.btnRegister.frame.height / 2
                        self?.containerView.backgroundColor = .systemTeal
                        self!.containerView.layer.cornerRadius = 10
                        self?.view.backgroundColor = UIColor.systemBlue
                        self?.view.layoutIfNeeded()
        }, completion: nil)
        
        imgLogoBottomConstraint.constant = self.view.center.x - (self.view.frame.height - 125)
        self.view.animation(duration: 0.6, delay: 0.9)
    }
}

extension ViewVC2{
   
    func animation(duration: Double, delay: Double){
        UIView.animate(withDuration: duration, delay: delay, options: [.curveEaseOut], animations: {
            [weak self] in
            self?.view.layoutIfNeeded()
        }, completion: nil)
    }
}


