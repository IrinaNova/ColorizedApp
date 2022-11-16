//
//  MainViewController.swift
//  ColorizedApp
//
//  Created by Irunchik on 15.11.22.
//

import UIKit

protocol ColorViewControllerDelegate {
    func setViewColor(color: UIColor)
    }

class MainViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let colorVC = segue.destination as? ColorViewController else {return}
        colorVC.colorView = view.backgroundColor
        colorVC.delegate = self
        
    }
    

}
// MARK: -Protocol
extension MainViewController: ColorViewControllerDelegate {
    func setViewColor(color: UIColor) {
        view.backgroundColor = color
    }
    
}
