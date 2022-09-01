//
//  ViewController.swift
//  Demo_changePage
//
//  Created by 許允銘 on 2022/9/1.
//

import UIKit

class ViewController: UIViewController {
    let movieList = ["龍貓","天空之城","霍爾的移動城堡","神隱少女"]
    let imageList = ["1","2","3","4"]
    var number = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var movieLabel: UILabel!
    
    @IBOutlet weak var pageControlChange: UIPageControl!
    
    @IBOutlet weak var segmented: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeFunction()
    }
    
    func changeFunction() {
        imageView.image=UIImage(named: imageList[number])
        movieLabel.text = movieList[number]
        segmented.selectedSegmentIndex = number
        pageControlChange.currentPage = number
    }
    

    @IBAction func segmented(_ sender: Any) {
        number = segmented.selectedSegmentIndex
        changeFunction()
    }
    

    @IBAction func nextButton(_ sender: Any) {
        number += 1
        if number > 3{
            number = 0
        }
        changeFunction()
    }
    
    
    @IBAction func lastButton(_ sender: Any) {
        number -= 1
        if number < 0{
            number = movieList.count - 1
        }
        changeFunction()
    }
    
    
    @IBAction func pageController(_ sender: Any) {
        number = pageControlChange.currentPage
        changeFunction()
    }
}

