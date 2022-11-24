//
//  MovieDetailViewController.swift
//  Exercise_01
//
//  Created by Jil Patel on 2022-11-23.
//

import UIKit

class ProductDetailViewController: UIViewController {
// outlets
    
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var labelDevice: UILabel!
    @IBOutlet weak var imageProduct: UIImageView!
   
    // local variable
    
    var productName:String!  // holds the product name
    var productPrice:String!  // holds the price
    var productImage:UIImage! // holds the product image
    
    override func viewDidLoad() {
        super.viewDidLoad()
   // assign values to the outlets
        labelDevice.text = productName
        labelPrice.text = productPrice
        imageProduct.image = productImage
        
        // Do any additional setup after loading the view.
    }
}
