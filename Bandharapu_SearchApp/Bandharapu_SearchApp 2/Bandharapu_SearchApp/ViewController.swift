//
//  ViewController.swift
//  Bandharapu_SearchApp
//
//  Created by student on 3/3/22.
//

import UIKit

class ViewController: UIViewController {
    
    

    var arr = [["Actor1","Actor2","Actor3","Actor4","Actor5"],["Book1","Book2","Book3","Book4","Book5"],["Cricket1","Cricket2","Cricket3","Cricket4","Cricket5"]]
        var akeywords = ["actionhero","versatile","style","greatestactor"]
        var ckeywords = ["cric", "players", "ground", "pitch"]
        var bkeywords = ["drama", "fiction", "suspence", "mystery"]
        var Actor_array =  ["Style and Swag","Versatile Actor","Award winner","Lone warrior","Stylish Star"]
    var Cricket_array =  ["Legend in the game","God of cricket","Successful Captain","Run Machine King","Calm amd Cool"]
    var Book_array =  ["Drama","LoveStory","Learning","Friendship","Thriller"]
        var lbn = 0
        var hyd = 0
       
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    
    
    @IBAction func searchTextField(_ sender: UITextField) {
        var lbn1 = searchTextField.text!
                if lbn1.isEmpty{
                    searchTextField.isEnabled = false
                }else{
                    searchTextField.isEnabled = true
                }
    }
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBAction func searchButttonAction(_ sender: UIButton)
    {
        //let lbn = 0
        if (searchTextField.text!.isEmpty ){
                    searchTextField.isEnabled = false
                }else{
                    searchTextField.isEnabled = true
                }
                showPrevImages.isHidden = false
                showNextImages.isHidden = false
                resetButton.isHidden = false
        if akeywords.contains(searchTextField.text!){
                    topicInfoText.text = Actor_array[lbn]
                    //updateUI(imgNum)
                    resultImage.image = UIImage(named: arr[0][hyd])
                    
                    
                }else if bkeywords.contains(searchTextField.text!){
                    topicInfoText.text = Cricket_array[lbn]
                   // updateUI(imgNum)
                    resultImage.image = UIImage(named: arr[1][hyd])
                    
                }else if ckeywords.contains(searchTextField.text!){
                    topicInfoText.text = Book_array[lbn]
                    //updateUI(imgNum)
                    resultImage.image = UIImage(named: arr[2][hyd])
                }else{
                    resultImage.image = UIImage.init(named: "nothing")
                    showPrevImages.isHidden = true
                    showNextImages.isHidden = true
                }
                    
                
    }
    
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBAction func showPrevImagesBtn(_ sender: UIButton) {
        showNextImages.isEnabled = true
                if akeywords.contains(searchTextField.text!){
                lbn -= 1
                    topicInfoText.text = Cricket_array[lbn]
                    hyd -= 1
                resultImage.image = UIImage(named: arr[0][hyd])
                }
                
                
            else if bkeywords.contains(searchTextField.text!){
                lbn -= 1
                topicInfoText.text = Actor_array[lbn]
                hyd -= 1
                    resultImage.image = UIImage(named: arr[1][hyd])
                
                
                }else if  ckeywords.contains(searchTextField.text!){
                    lbn -= 1
                    topicInfoText.text = Book_array[lbn]
                    hyd -= 1
                    resultImage.image = UIImage(named: arr[2][hyd])
                    
                }else {
                    resultImage.image = UIImage.init(named: "nothing")
                }
                if(lbn == 0){
                    showPrevImages.isEnabled = false
                }
    }
    
    
    @IBOutlet weak var showPrevImages: UIButton!
    
    @IBAction func showNextImagesBtn(_ sender: UIButton) {
        if akeywords.contains(searchTextField.text!){
                lbn += 1
            topicInfoText.text = Cricket_array[hyd]
                hyd += 1
                resultImage.image = UIImage(named: arr[0][hyd])
                }
                
                
            else if bkeywords.contains(searchTextField.text!){
                lbn += 1
                topicInfoText.text = Actor_array[hyd]
                hyd += 1
                    resultImage.image = UIImage(named: arr[1][hyd])
                
                }else if  ckeywords.contains(searchTextField.text!){
                    lbn += 1
                    topicInfoText.text = Book_array[hyd]
                    hyd += 1
                    resultImage.image = UIImage(named: arr[2][hyd])
                }else {
                    resultImage.image = UIImage.init(named: "nothing")
                }
            
            showPrevImages.isEnabled = true
            if(hyd == 4 ){
                showNextImages.isEnabled = false
            }
    }
    
    @IBOutlet weak var showNextImages: UIButton!
    
                                                            
    
    
   
    
        
    @IBAction func resetButton(_ sender: UIButton) {
        showPrevImages.isHidden = true
                showNextImages.isHidden = true
                resultImage.image = UIImage.init(named: "nothing")
                searchTextField.text = ""
                resetButton.isHidden = true
                topicInfoText.text = nil
                lbn = 0
                hyd = 0
                if (hyd == 0){
                    showNextImages.isEnabled = true
                    showPrevImages.isEnabled = false
                }
    }
    
    @IBOutlet weak var resetButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextField.isEnabled = true
        showPrevImages.isEnabled = false
                showPrevImages.isHidden = true
                showNextImages.isHidden = true
                resetButton.isHidden = true
                resultImage.image = UIImage.init(named: "nothing")
    
    
    }
    
    
}


