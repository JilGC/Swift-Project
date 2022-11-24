//
//  ViewController.swift
//  Exercise_01
//
//  Created by Jil Patel on 2022-11-23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // define an array of values ..which you want to be displayed
    let productList = ["Endgame", "Ender's Game", "Zathura", "Ra-One"]
    let priceList = ["1997", "2000", "2004", "2010"]
    let images = ["EndGame", "Ender's_Game", "Zathura", "Ra.One"]
    
    let detail_01 = ["Kevin Feige", "Gigi Pritzker", "William Teitler", "Gauri Khan"]
    let detail_02 = ["Action/Sci-fi", "Sci-fi/Action", "Adventure/Sci-fi", "Sci-fi/Action "]
    // outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // returns how many rows in the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return productList.count
   } // end func tableview
    // return the cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {

       let tempCell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
       tempCell.labelDevice.text = productList[indexPath.row]
       tempCell.labelPrice.text = priceList[indexPath.row]
       tempCell.imageDevice.image = UIImage(named: images[indexPath.row] + ".jpg" )
       
       return tempCell
   } // end func tableView

   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let detailVC:ProductDetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "ProductDetailViewController") as! ProductDetailViewController
      // assign the values to the local variable declared in ProductDetailViewController Class
       detailVC.productName = detail_01[indexPath.row]
       detailVC.productPrice = detail_02[indexPath.row]
       detailVC.productImage = UIImage(named: images[indexPath.row] + ".jpg" )!
       // make it navigate to ProductDetailViewController
       self.navigationController?.pushViewController(detailVC, animated: true)
   }
}

