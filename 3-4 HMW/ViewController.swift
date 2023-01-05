//
//  ViewController.swift
//  3-4 HMW
//
//  Created by 지구9 on 5/1/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var foodsTableView: UITableView!
    var menu: [Menu] = [Menu(image: "pizza", foodsName: "Salad Afina", price: 300),Menu(image: "pep", foodsName: "Pizza Pepperoni ", price: 500),Menu(image: "ham", foodsName: "Beef Hamburger", price: 200),Menu(image: "pizza", foodsName: "Salad Afina", price: 300),Menu(image: "pep", foodsName: "Pizza Pepperoni ", price: 500),Menu(image: "ham", foodsName: "Beef Hamburger", price: 200),Menu(image: "pizza", foodsName: "Salad Afina", price: 300),Menu(image: "pep", foodsName: "Pizza Pepperoni ", price: 500),Menu(image: "ham", foodsName: "Beef Hamburger", price: 200),Menu(image: "pizza", foodsName: "Salad Afina", price: 300),Menu(image: "pep", foodsName: "Pizza Pepperoni ", price: 500),Menu(image: "ham", foodsName: "Beef Hamburger", price: 200),Menu(image: "pizza", foodsName: "Salad Afina", price: 300),Menu(image: "pep", foodsName: "Pizza Pepperoni ", price: 500),Menu(image: "ham", foodsName: "Beef Hamburger", price: 200),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "foods_cell", for:  indexPath)as! FoodCell
        cell.foodImageView.image = UIImage(named: menu[indexPath.row].image)
        cell.secondFoodImageView.image = UIImage(named: menu[indexPath.row].image)
        cell.therdsFoodImageView.image = UIImage(named: menu[indexPath.row].image)
        cell.foodsTitleLabel.text = menu[indexPath.row].foodsName
        cell.secondFoodsTitleLabel.text = menu[indexPath.row].foodsName
        cell.therdsFoodsTitleLabel.text = menu[indexPath.row].foodsName
        cell.priceOneTitleLabel.text = "\(menu[indexPath.row].price) - $"
        cell.priceTwoTitleLabel.text = "\(menu[indexPath.row].price) - $"
        cell.priceThreeTitleLabel.text = "\(menu[indexPath.row].price) - $"
        return cell
//
    }
}
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 400
    }


}

