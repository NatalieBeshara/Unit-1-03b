
// Created on: -Sept-2018
// Created by: Natalie Beshara
// Created for: ICS3U
// This program calculates t

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionsLabel = UILabel()
    let lengthLabel = UILabel()
    let widthLabel = UILabel()
    let lengthTextField = UITextField()
    let widthTextField = UITextField()
    let calcuateButton = UIButton()
    let areaLabel = UILabel()
    let perimeterLabel = UILabel()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Calcuate the area and the perimeter of a rectangle"
        instructionsLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        lengthLabel.text = "Enter length"
        lengthLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(lengthLabel)
        lengthLabel.translatesAutoresizingMaskIntoConstraints = false
        lengthLabel.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 20).isActive = true
        lengthLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        lengthTextField.borderStyle = UITextBorderStyle.roundedRect
        lengthTextField.placeholder = "In cm   "
        view.addSubview(lengthTextField)
        lengthTextField.translatesAutoresizingMaskIntoConstraints = false
        lengthTextField.bottomAnchor.constraint(equalTo: lengthLabel.topAnchor, constant: 30).isActive = true
        lengthTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150).isActive = true
        
        widthLabel.text = "Enter width"
        widthLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(widthLabel)
        widthLabel.translatesAutoresizingMaskIntoConstraints = false
        widthLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        widthLabel.topAnchor.constraint(equalTo: lengthLabel.bottomAnchor, constant: 20).isActive = true
        
        widthTextField.borderStyle = UITextBorderStyle.roundedRect
        widthTextField.placeholder = "In cm   "
        view.addSubview(widthTextField)
        widthTextField.translatesAutoresizingMaskIntoConstraints = false
        widthTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150).isActive = true
        widthTextField.bottomAnchor.constraint(equalTo: widthLabel.topAnchor, constant: 27).isActive = true
        
        calcuateButton.setTitle("Calculate", for: UIControlState.normal)
        calcuateButton.setTitleColor(.blue, for: .normal)
        calcuateButton.addTarget(self, action: #selector(calculateAreaAndPerimeter), for: .touchUpInside)
        view.addSubview(calcuateButton)
        calcuateButton.translatesAutoresizingMaskIntoConstraints = false
        calcuateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        calcuateButton.topAnchor.constraint(equalTo: widthLabel.bottomAnchor, constant: 20).isActive = true
        
        areaLabel.text = nil
        areaLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(areaLabel)
        areaLabel.translatesAutoresizingMaskIntoConstraints = false
        areaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        areaLabel.topAnchor.constraint(equalTo: calcuateButton.bottomAnchor, constant: 20).isActive = true
        
        perimeterLabel.text = nil
        perimeterLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(perimeterLabel)
        perimeterLabel.translatesAutoresizingMaskIntoConstraints = false
        perimeterLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        perimeterLabel.topAnchor.constraint(equalTo: areaLabel.bottomAnchor, constant: 20).isActive = true
    }
    @objc func calculateAreaAndPerimeter() {
        // calculate the area and perimeter 
        
        let length : Int = Int(lengthTextField.text!)!
        let width : Int = Int(widthTextField.text!)!
        
        let area = length * width
        let perimeter = 2 * (length + width)
        
        areaLabel.text = "The area is: \(area) cm^2"
        perimeterLabel.text = "The perimeter is: \(perimeter) cm"
    }
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
