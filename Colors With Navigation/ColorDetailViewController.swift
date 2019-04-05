//
//  ColorDetailViewController.swift
//  Colors With Navigation
//
//  Created by Jonathan Yee on 4/5/19.
//  Copyright © 2019 Jonathan Yee. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    var color: Color?
    @IBOutlet weak var colorName: UILabel!
    override func viewDidLoad() {
        colorName.text = color?.name
        self.view.backgroundColor = color?.UIColor
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
