//
//  ViewController.swift
//  mvcChanges
//
//  Created by Mariam Latsabidze on 11.12.21.
//

import UIKit

class ViewController: UIViewController {

    
    let person = Person(firstname: "John", lastname: "Wick", age: 30)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let myview = ExampleView(frame: CGRect(x:0,y:0,width: 250, height: 250))
        myview.center = view.center
        myview.configure(with: "\(person.firstname) \(person.lastname)")
        view.addSubview(myview)
    }

}


struct Person {
    let firstname: String
    let lastname: String
    let age: Int
}


