//
//  ButtonActionViewController.swift
//  tableData
//
//  Created by Ishan Srivastava on 31/10/17.
//  Copyright © 2017 Ishan Srivastava. All rights reserved.
//

import UIKit

class ButtonActionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
// First button
        let button = UIButton(frame: CGRect(x: 25, y: 25, width: 100, height: 60))
        button.backgroundColor=UIColor.gray
        button.setTitle("Ok", for: .normal)
        button.layer.cornerRadius=7.0
        button.layer.borderColor=UIColor.cyan.cgColor
        button.layer.borderWidth=5.0
        button.layer.shadowColor=UIColor.black.cgColor
        button.layer.shadowRadius=1
        button.layer.shadowOpacity=0.5
        button.layer.shadowOffset=CGSize(width: -5, height: 5)
        button.addTarget(self, action: #selector(ButtonActionViewController.action(_:)), for: .touchUpInside)
        self.view.addSubview(button)
        //
        ///Animations
       
        
        
        
        // Do any additional setup after loading the view.
    }

    func action(_ button:UIButton)
    {
        print("Called")
        
        let endingPoint = CGPoint(x: 25, y: self.view.frame.size.height - 100)
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveEaseIn, animations: {
            button.frame=CGRect(x: endingPoint.x, y: endingPoint.y, width: button.frame.size.width*2, height: button.frame.size.height*2)
            
        }) { (status) in
            let endingpoint2 = CGPoint(x: self.view.frame.size.width - 100, y: self.view.frame.size.height - 100)
            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveEaseIn, animations: {
                button.frame=CGRect(x: endingpoint2.x, y: endingpoint2.y, width: button.frame.size.width/2, height: button.frame.size.height/2)
            }, completion: { (status) in
                let ending3 = CGPoint(x: self.view.frame.size.width - 100, y: 25)
                UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveEaseIn, animations:{
                    button.frame=CGRect(x: ending3.x, y: ending3.y, width: button.frame.size.width, height: button.frame.size.height)
                }, completion: { (status) in
                    let ending4 = CGPoint(x: 25, y: 25)
                    UIView.animate(withDuration: 0.5, delay: 0.1, options:.curveEaseIn, animations: { 
                      button.frame=CGRect(x: ending4.x, y: ending4.y, width: button.frame.size.width, height: button.frame.size.height)
                    }, completion: { (status) in
                    
                    })
                
                
            })
        }
        
        // to end poind 2
           )
    }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}
