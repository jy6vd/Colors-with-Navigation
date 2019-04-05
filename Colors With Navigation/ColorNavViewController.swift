//
//  ColorNavViewController.swift
//  Colors With Navigation
//
//  Created by Jonathan Yee on 4/5/19.
//  Copyright © 2019 Jonathan Yee. All rights reserved.
//

import UIKit

class ColorNavViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //var colors = ["red","orange","yellow","green","blue","purple","brown"]
    var colors = [Color(name: "red", UIColor: UIColor.red),
                  Color(name: "orange", UIColor: UIColor.orange),
                  Color(name: "yellow", UIColor: UIColor.yellow),
                  Color(name: "green", UIColor: UIColor.green),
                  Color(name: "blue", UIColor: UIColor.blue),
                  Color(name: "purple", UIColor: UIColor.purple),
                  Color(name: "brown", UIColor: UIColor.brown)
    ]
    @IBOutlet weak var tableview: UITableView!
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        let color = colors[indexPath.row]
        
        cell.textLabel?.text = color.name
        cell.backgroundColor = color.UIColor
        cell.selectionStyle = .none
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
            let row = tableview.indexPathForSelectedRow?.row {
                destination.color = colors[row]
            
        }
        
        
    }

    override func viewDidLoad() {
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
