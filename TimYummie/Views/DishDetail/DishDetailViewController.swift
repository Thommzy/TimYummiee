//
//  DishDetailViewController.swift
//  TimYummie
//
//  Created by Tim on 28/04/2021.
//

import UIKit
import ProgressHUD

class DishDetailViewController: UIViewController {
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var orderButton: UIButton!
    
    var dish: Dish?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        populateView()
    }
    
    private func populateView() {
        dishImageView.kf.setImage(with: dish?.image?.asUrl)
        titleLbl.text = dish?.name
        descriptionLbl.text = dish?.description
        caloriesLbl.text = dish?.formattedCalories
    }
    @IBAction func placeOrderButtonClicked(_ sender: UIButton) {
        guard let name = nameField.text?.trimmingCharacters(in: .whitespaces), !name.isEmpty else {
            ProgressHUD.showError("please enter your name")
            return
        }
        
        ProgressHUD.show("Placing Order. . .")
        NetworkService.shared.placeOrder(dishId: dish?.id ?? String(), name: name) { [weak self] (result) in
            switch result {
            case .success(_):
                ProgressHUD.showSuccess("Your Order has been Received 👨🏽‍🍳")
            case .failure(let error):
                ProgressHUD.showError(error.localizedDescription)
            }
        }
        print("Hello \(name)")
    }
}
