//
//  ViewController.swift
//  PickCource
//
//  Created by Rajesh Kommana on 20/10/17.
//  Copyright © 2017 Rajesh Kommana. All rights reserved.
//

import UIKit

class CourcesVC: UITableViewController {
    
    var cources:[Cource] = [Cource]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let courceOne = Cource()
        courceOne.courceName = "Java"
        courceOne.isSelected = false
        let courceTwo = Cource()
        courceTwo.courceName = "SQL"
        courceTwo.isSelected = false
        let courceThree = Cource()
        courceThree.courceName = "C++"
        courceThree.isSelected = true
        let courceFour = Cource()
        courceFour.courceName = "C-Language"
        courceFour.isSelected = true
        let courceFive = Cource()
        courceFive.courceName = "Swift"
        courceFive.isSelected = true
        cources.append(courceOne)
        cources.append(courceTwo)
        cources.append(courceThree)
        cources.append(courceFour)
        cources.append(courceFive)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cources.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SingleCource", for: indexPath)
        let cource = cources[indexPath.row]
        configureCourseName(for: cell, with: cource)
        configureCourseSelection(for: cell, with: cource)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) {
            let cource = cources[indexPath.row]
            cource.toggleSelected()
            configureCourseSelection(for: cell, with: cource)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func configureCourseName(for cell:UITableViewCell, with cource: Cource) {
        let courceTitle = cell.viewWithTag(1002) as! UILabel
        
        courceTitle.text = cource.courceName
    }
    
    func configureCourseSelection(for cell:UITableViewCell,with course:Cource) {
        let courceSelected = cell.viewWithTag(1001) as! UILabel
        let isSelected = course.isSelected
        if isSelected{
            courceSelected.text = "√"
        }
        else {
            courceSelected.text = ""
        }
    }
}

