//
//  ViewController.swift
//  Simple Picker View Calculator
//
//  Created by koryasta and ablake on 1/10/17.
//  Copyright © 2017 Student. All rights reserved.
//
// pickerView.delegate = self
// pickerView.dataSource = self
//var pickerData = [["Jan.", "Feb.", "Mar.", "Apr.", "May", "June", "July", "Aug.", "Sept.", "Oct.", "Nov.", "Dec."], ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"], ["1997", "1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020"]]
//return pickerData.count
//return pickerData[component].count
// return pickerData[component][row]

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    
    @IBOutlet weak var nameMe: UITextField!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    @IBOutlet weak var birthdayLabelTwoYou: UILabel!
    // Part 1 below, Create the arrays within an array to have the pickerview's actual data
    var pickerData = [["Jan.", "Feb.", "Mar.", "Apr.", "May", "June", "July", "Aug.", "Sept.", "Oct.", "Nov.", "Dec."], ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"], ["1997", "1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020"]]
    // Part 2 below, Create monthComponent, dayComponent, yearComponent, then uncomment variables' assignments
    
    

    // uncomment these next three lines
    var monthComponent = 0
    var dayComponent = 1
    var yearComponent = 2
    
    // part 4 below, count arrays to find number of columns, uncomment method below
        // The number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return pickerData.count
    }
    
    // part 5 below, count arrays to find number of rows, uncomment method below
        // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return pickerData[component].count
    }
    
    // part 6 below, place data into the correct rows and columns, uncomment method below
        // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return pickerData[component][row]
    }
    
    @IBAction func whenPressed(_ sender: Any)
    {
        let month = pickerData[monthComponent][pickerView.selectedRow(inComponent: monthComponent)]
        let day = pickerData[dayComponent][pickerView.selectedRow(inComponent: dayComponent)]
        let year = pickerData[yearComponent][pickerView.selectedRow(inComponent: yearComponent)]
        let answer = "\(nameMe.text!) this date " + month + "/" + day + "/" + year
        let answerTwo = " is your birthday."
        birthdayLabel.text = answer
        birthdayLabelTwoYou.text = answerTwo
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // part three below, Add pickerView.delegate and .dataSource and set them both to self
            // Connect data:
        pickerView.delegate = self
        pickerView.dataSource = self
        
    }
}
