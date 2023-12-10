//
//  MainViewController.swift
//  ColorizedAPP
//
//  Created by Александр Соколов on 10.12.2023.
//

import UIKit

protocol ColorDelegate: AnyObject {
    func colorDidChoose(_color: UIColor)
}

final class MainViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let colorVC = segue.destination as? ColorViewController {
            colorVC.delegate = self
        }
    }

}

// MARK: - ColorDelegate
extension MainViewController: ColorDelegate {
    func colorDidChoose(_color: UIColor) {
        view.backgroundColor = _color
    }
}
