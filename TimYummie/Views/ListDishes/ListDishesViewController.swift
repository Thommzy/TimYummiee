//
//  ListDishesViewController.swift
//  TimYummie
//
//  Created by Tim on 29/04/2021.
//

import UIKit

class ListDishesViewController: UIViewController {
    
    @IBOutlet weak var listDishesTableView: UITableView!
    
    var category: DishCategory?
    
    var dishes: [Dish] = [
        .init(id: "id1", name: "Garri", description: "This is the best i have ever tasted This is the best i have ever tasted This is the best i have ever tasted This is the best i have ever tasted This is the best i have ever tasted This is the best i have ever tasted This is the best i have ever tasted This is the best i have ever tasted This is the best i have ever tasted This is the best i have ever tasted This is the best i have ever tasted This is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 14),
        .init(id: "id2", name: "Indomie", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", calories:345),
        .init(id: "id3", name: "Moin Moin", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 782)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = category?.name
        registeCells()
    }
    
    private func registeCells() {
        listDishesTableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
}

extension ListDishesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier, for: indexPath) as! DishListTableViewCell
        cell.setup(dish: dishes[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
}
