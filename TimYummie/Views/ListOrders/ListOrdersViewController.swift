//
//  ListOrdersViewController.swift
//  TimYummie
//
//  Created by Tim on 29/04/2021.
//

import UIKit

class ListOrdersViewController: UIViewController {
    
    @IBOutlet weak var listOrdersTableView: UITableView!
    
    var orders: [Order] = [
        .init(id: "id1", name: "Obeisun Timothy", dish:
                .init(id: "id3", name: "Beans and Garri", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 782)),
        .init(id: "id1", name: "UgoChukwu Val", dish:
                .init(id: "id3", name: "Rice and Stew", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 782)),
        .init(id: "id1", name: "Folahanmi Kolawole", dish:
                .init(id: "id3", name: "Moin Moin", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 782))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Orders"
        registerCells()
    }
    
    private func registerCells() {
        listOrdersTableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
}

extension ListOrdersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier, for: indexPath) as! DishListTableViewCell
        cell.setup(order: orders[indexPath.row])
        return cell
    }
     
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = orders[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
}
