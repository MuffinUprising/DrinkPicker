//
//  ViewController.swift
//  DrinkPicker
//
//  Created by Casey on 2/21/16.
//  Copyright © 2016 Casey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //tea button variables
    @IBOutlet weak var teaButtonImage: UIButton!
    @IBOutlet weak var tea_size_button: UIButton!
    @IBOutlet weak var tea_type_button: UIButton!
    @IBOutlet weak var tea_size12_button: UIButton!
    @IBOutlet weak var tea_size16_button: UIButton!
    @IBOutlet weak var tea_typeGreen_button: UIButton!
    @IBOutlet weak var tea_typeBlack_button: UIButton!
    @IBOutlet weak var tea_typeHerbal_button: UIButton!
    
    //coffee button variables
    @IBOutlet weak var coffeeButtonImage: UIButton!
    @IBOutlet weak var coffee_brew_button: UIButton!
    @IBOutlet weak var coffee_size_button: UIButton!
    @IBOutlet weak var coffee_size12_button: UIButton!
    @IBOutlet weak var coffee_size16_button: UIButton!
    @IBOutlet weak var coffee_brewLight_button: UIButton!
    @IBOutlet weak var coffee_brewDark_button: UIButton!
    
    //latte button variables
    @IBOutlet weak var latteButtonImage: UIButton!
    @IBOutlet weak var latte_size_button: UIButton!
    @IBOutlet weak var latte_milk_button: UIButton!
    @IBOutlet weak var latte_size12_button: UIButton!
    @IBOutlet weak var latte_size16_button: UIButton!
    @IBOutlet weak var latte_milkWhole_button: UIButton!
    @IBOutlet weak var latte_milkSkim_button: UIButton!
    @IBOutlet weak var latte_milkSoy_button: UIButton!
    
    //tableview
    @IBOutlet weak var tableView: UITableView!
    var drinks = []
    var price = []
    
    //**TEA**
    //main tea button
    @IBAction func teaButton(sender: UIButton) {
        
        if tea_size_button.hidden == false {
            tea_size_button.hidden = true
            tea_type_button.hidden = true
            tea_typeBlack_button.hidden = true
            tea_typeGreen_button.hidden = true
            tea_typeHerbal_button.hidden = true
            tea_size12_button.hidden = true
            tea_size16_button.hidden = true
            teaButtonImage.setImage(UIImage(named: "tea1.jpg"), forState: UIControlState.Normal)
        }
        else {
            tea_size_button.hidden = false
            tea_type_button.hidden = false
            teaButtonImage.setImage(UIImage(named: "tea3.jpg"), forState: UIControlState.Normal)
        }
        checkForTea()
    }
    
    //tea-related buttons
    //size
    @IBAction func teaSizeButton(sender: UIButton) {
        if tea_size12_button.hidden == false {
            tea_size12_button.hidden = true
            tea_size16_button.hidden = true
        }
        else {
            tea_size12_button.hidden = false
            tea_size16_button.hidden = false
        }
    }
    
    @IBAction func teaSize12Button(sender: UIButton) {
        //set the view of teaSizeButton to teaSize12True.jpg
        tea_size_button.setImage(UIImage(named: "tea_size12True.jpg"), forState: UIControlState.Normal)
        tea_size12_button.hidden = true
        tea_size16_button.hidden = true
    }
    
    @IBAction func teaSize16Button(sender: UIButton) {
        //set the view of teaSizeButton to teaSize16True.jpg
        tea_size_button.setImage(UIImage(named: "tea_size16True.jpg"), forState: UIControlState.Normal)
        tea_size12_button.hidden = true
        tea_size16_button.hidden = true
    }
    
    //type
    @IBAction func teaTypeButton(sender: UIButton) {
        if tea_typeBlack_button.hidden == false {
            tea_typeBlack_button.hidden = true
            tea_typeGreen_button.hidden = true
            tea_typeHerbal_button.hidden = true
        }
        else {
            tea_typeBlack_button.hidden = false
            tea_typeGreen_button.hidden = false
            tea_typeHerbal_button.hidden = false
        }
    }
    
    @IBAction func teaTypeHerbalButton(sender: UIButton) {
        //set the view of teaTypeButton to tea_typeHerbalTrue.jpg
        tea_type_button.setImage(UIImage(named: "tea_typeHerbalTrue.jpg"), forState: UIControlState.Normal)
        tea_typeBlack_button.hidden = true
        tea_typeGreen_button.hidden = true
        tea_typeHerbal_button.hidden = true
    }
    
    @IBAction func teaTypeBlackButton(sender: UIButton) {
        //set the view of teaTypeButton to tea_typeBlackTrue.jpg
        tea_type_button.setImage(UIImage(named: "tea_typeBlackTrue.jpg"), forState: UIControlState.Normal)
        tea_typeBlack_button.hidden = true
        tea_typeGreen_button.hidden = true
        tea_typeHerbal_button.hidden = true
    }
    
    @IBAction func teaTypeGreenButton(sender: UIButton) {
        //set the view of teaTypeButton to tea_typeGreenTrue.jpg
        tea_type_button.setImage(UIImage(named: "tea_typeGreenTrue.jpg"), forState: UIControlState.Normal)
        tea_typeBlack_button.hidden = true
        tea_typeGreen_button.hidden = true
        tea_typeHerbal_button.hidden = true
    }
    
    //**COFFEE**
    //main coffee button
    @IBAction func coffeeButton(sender: UIButton) {
        if coffee_size_button.hidden == false {
            coffee_size_button.hidden = true
            coffee_brew_button.hidden = true
            coffee_brewLight_button.hidden = true
            coffee_brewDark_button.hidden = true
            coffee_size12_button.hidden = true
            coffee_size16_button.hidden = true
            coffeeButtonImage.setImage(UIImage(named: "coffee1.jpg"), forState: UIControlState.Normal)
        }
        else {
            coffee_size_button.hidden = false
            coffee_brew_button.hidden = false
            coffeeButtonImage.setImage(UIImage(named: "coffee3.jpg"), forState: UIControlState.Normal)
        }
        checkForCoffee()
    }
    
    //coffee-related buttons
    //size
    @IBAction func coffeeSizeButton(sender: UIButton) {
        if coffee_size12_button.hidden == false {
            coffee_size12_button.hidden = true
            coffee_size16_button.hidden = true
        }
        else {
            coffee_size12_button.hidden = false
            coffee_size16_button.hidden = false
        }
    }
    
    @IBAction func coffeeSize12Button(sender: UIButton) {
        //set view of coffeeSizeButton to coffee_size12True.jpg
        coffee_size_button.setImage(UIImage(named: "coffee_size12True.jpg"), forState: UIControlState.Normal)
        coffee_size12_button.hidden = true
        coffee_size16_button.hidden = true
    }
    
    @IBAction func coffeeSize16Button(sender: UIButton) {
        //set view of coffeeSizeButton to coffee_size16True.jpg
        coffee_size_button.setImage(UIImage(named: "coffee_size16True.jpg"), forState: UIControlState.Normal)
        coffee_size12_button.hidden = true
        coffee_size16_button.hidden = true
    }
    
    //brew
    @IBAction func coffeeBrewButton(sender: UIButton) {
        if coffee_brewLight_button.hidden == false {
            coffee_brewLight_button.hidden = true
            coffee_brewDark_button.hidden = true
        }
        else {
            coffee_brewLight_button.hidden = false
            coffee_brewDark_button.hidden = false
        }
    }
    
    @IBAction func coffeeBrewLightButton(sender: UIButton) {
        //set the view of coffeeBrewButton to coffee_brewLightTrue.jpg
        coffee_brew_button.setImage(UIImage(named: "coffee_brewLightTrue.jpg"), forState: UIControlState.Normal)
        coffee_brewLight_button.hidden = true
        coffee_brewDark_button.hidden = true
    }
    
    @IBAction func coffeeBrewDarkButton(sender: UIButton) {
        //set the view of coffeeBrewButton to coffee_brewDarkTrue.jpg
        coffee_brew_button.setImage(UIImage(named: "coffee_brewDarkTrue.jpg"), forState: UIControlState.Normal)
        coffee_brewLight_button.hidden = true
        coffee_brewDark_button.hidden = true
    }
    
    //**LATTE**
    //main latte button
    @IBAction func latteButton(sender: UIButton) {
        
        if latte_size_button.hidden == false {
            latte_size_button.hidden = true
            latte_milk_button.hidden = true
            latte_milkWhole_button.hidden = true
            latte_milkSkim_button.hidden = true
            latte_milkSoy_button.hidden = true
            latte_size12_button.hidden = true
            latte_size16_button.hidden = true
            latteButtonImage.setImage(UIImage(named: "latte1.jpg"), forState: UIControlState.Normal)
        }
        else {
            latte_size_button.hidden = false
            latte_milk_button.hidden = false
            latteButtonImage.setImage(UIImage(named: "latte3.jpg"), forState: UIControlState.Normal)
        }
        checkForLatte()
        
    }
    
    //latte-related buttons
    //size
    @IBAction func latteSizeButton(sender: UIButton) {
        if latte_size12_button.hidden == false {
            latte_size12_button.hidden = true
            latte_size16_button.hidden = true
        }
        else {
            latte_size12_button.hidden = false
            latte_size16_button.hidden = false
        }
    }
    
    @IBAction func latteSize12Button(sender: UIButton) {
        //set the view of latteSizeButton to latte_size12True.jpg
        latte_size_button.setImage(UIImage(named: "latte_size12True.jpg"), forState: UIControlState.Normal)
        latte_size12_button.hidden = true
        latte_size16_button.hidden = true
    }
    
    @IBAction func latteSize16Button(sender: UIButton) {
        //set the view of latteSizeButton to latte_size16True.jpg
        latte_size_button.setImage(UIImage(named: "latte_size16True.jpg"), forState: UIControlState.Normal)
        latte_size12_button.hidden = true
        latte_size16_button.hidden = true
    }
    
    //milk
    @IBAction func latteMilkButton(sender: UIButton) {
        
        if latte_milkWhole_button.hidden == false {
            latte_milkWhole_button.hidden = true
            latte_milkSkim_button.hidden = true
            latte_milkSoy_button.hidden = true
        }
        else {
            latte_milkWhole_button.hidden = false
            latte_milkSkim_button.hidden = false
            latte_milkSoy_button.hidden = false
        }
    }
    
    @IBAction func latteMilkWholeButton(sender: UIButton) {
        //set the view of latteMilkButton to latte_milkWholeTrue.jpg
        latte_milk_button.setImage(UIImage(named: "latte_milkWholeTrue.jpg"), forState: UIControlState.Normal)
        latte_milkWhole_button.hidden = true
        latte_milkSkim_button.hidden = true
        latte_milkSoy_button.hidden = true
    }
    
    @IBAction func latteMilkSkimButton(sender: UIButton) {
        //set the view of latteMilkButton to latte_milkSkimTrue.jpg
        latte_milk_button.setImage(UIImage(named: "latte_milkSkimTrue.jpg"), forState: UIControlState.Normal)
        latte_milkWhole_button.hidden = true
        latte_milkSkim_button.hidden = true
        latte_milkSoy_button.hidden = true
    }
    
    @IBAction func latteMilkSoyButton(sender: UIButton) {
        //set the view of latteMilkButton to latte_milkSoyTrue.jpg
        latte_milk_button.setImage(UIImage(named: "latte_milkSoyTrue.jpg"), forState: UIControlState.Normal)
        latte_milkWhole_button.hidden = true
        latte_milkSkim_button.hidden = true
        latte_milkSoy_button.hidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tea_size_button.hidden = true
        tea_type_button.hidden = true
        tea_size12_button.hidden = true
        tea_size16_button.hidden = true
        tea_typeGreen_button.hidden = true
        tea_typeBlack_button.hidden = true
        tea_typeHerbal_button.hidden = true
        
        coffee_brew_button.hidden = true
        coffee_size_button.hidden  = true
        coffee_brewDark_button.hidden = true
        coffee_brewLight_button.hidden = true
        coffee_size12_button.hidden = true
        coffee_size16_button.hidden = true
        
        latte_milk_button.hidden = true
        latte_size_button.hidden = true
        latte_milkSkim_button.hidden = true
        latte_milkWhole_button.hidden = true
        latte_milkSoy_button.hidden = true
        latte_size12_button.hidden = true
        latte_size16_button.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //**TABLE VIEW**
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drinks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as!
            CustomTableViewCell
        
        cell.drinkName.text = drinks[indexPath.row]
        cell.drinkPrice.text = price[indexPath.row]
        return cell

    }
    
    //checks to see if both coffee options have been selected
    func checkForCoffee() {
        var coffeeRoast = ""
        var coffeeSize = ""
        var newCoffee = ""
        
        var coffeePrice = ""
        
        if coffee_brew_button.imageForState(UIControlState.Normal) == UIImage(named: "coffee_brewLightTrue") {
            coffeeRoast = "Light Roast Coffee"
            
        } else if coffee_brew_button.imageForState(UIControlState.Normal) == UIImage(named: "coffee_brewDarkTrue") {
            coffeeRoast = "Dark Roast Coffee"
        }
        
        if coffee_size_button.imageForState(UIControlState.Normal) == UIImage(named: "coffee_size12True") {
            coffeeSize = "12 oz. "
            coffeePrice = "2.00"
            
        } else if coffee_size_button.imageForState(UIControlState.Normal) == UIImage(named: "coffee_size16True") {
            coffeeSize = "16 oz. "
            coffeePrice = "3.00"
        }
        
        if coffeeRoast != "" && coffeeSize != "" {
            newCoffee = coffeeSize + coffeeRoast
            drinks.append(newCoffee)
            price.append(coffeePrice)
        }
    }
    
    //checks to see if both latte options have been selected
    func checkForLatte() {
        var latteMilk = ""
        var latteSize = ""
        var newLatte = ""
        
        var lattePrice = ""
        
        if latte_milk_button.imageForState(UIControlState.Normal) == UIImage(named: "latte_milkSkimTrue") {
            latteMilk = "Skim Latte"
            
        } else if latte_milk_button.imageForState(UIControlState.Normal) == UIImage(named: "latte_milkWholeTrue") {
            latteMilk = "Whole Latte"
        }
        
        else if latte_milk_button.imageForState(UIControlState.Normal) == UIImage(named: "latte_milkSoyTrue") {
            latteMilk = "Soy Latte"
        }
        
        if latte_size_button.imageForState(UIControlState.Normal) == UIImage(named: "latte_size12True") {
            latteSize = "12 oz. "
            lattePrice = "3.25"
            
        } else if latte_size_button.imageForState(UIControlState.Normal) == UIImage(named: "coffee_size16True") {
            latteSize = "16 oz. "
            lattePrice = "4.00"
        }
        
        if latteMilk != "" && latteSize != "" {
            newLatte = latteSize + latteMilk
            drinks.append(newLatte)
            price.append(lattePrice)
        }
        
    }
    
    //checks to see if both tea options have been selected
    func checkForTea() {
        var teaType = ""
        var teaSize = ""
        var newTea = ""
        
        let teaPrice = "2.00"
        
        if tea_type_button.imageForState(UIControlState.Normal) == UIImage(named: "tea_typeBlackTrue") {
            teaType = "Black Tea"
            
        } else if tea_type_button.imageForState(UIControlState.Normal) == UIImage(named: "tea_typeGreenTrue") {
            teaType = "Green Tea"
        }
            
        else if tea_type_button.imageForState(UIControlState.Normal) == UIImage(named: "tea_typeHerbalTrue") {
            teaType = "Herbal Tea"
        }
        
        if tea_size_button.imageForState(UIControlState.Normal) == UIImage(named: "tea_size12True") {
            teaSize = "12 oz. "
            
        } else if tea_size_button.imageForState(UIControlState.Normal) == UIImage(named: "tea_size16True") {
            teaSize = "16 oz. "

        }
        
        if teaType != "" && teaSize != "" {
            newTea = teaSize + teaType
            drinks.append(newTea)
            price.append(teaPrice)
        }
        
    }

}

