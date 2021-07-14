//
//  HomeVC.swift
//  TabBarApp
//
//  Created by Nata on 13.07.2021.
//

import UIKit

protocol HomeVCDelegate: AnyObject {
    func update(text: String)
}

class HomeVC: UIViewController, HomeVCDelegate {

    @IBOutlet weak var homeLabel: UILabel!
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpButton()

        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? SavedVC else { return }
        destination.delegate = self
    }

    func update(text: String) {
        homeLabel.text = text
    }

    @IBAction func buttonTapped(_ sender: UIButton) {

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let discoverVC = storyboard.instantiateViewController(identifier: "DiscoverVC")
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(discoverVC)
    }

    private func setUpButton() {
        button.setTitle("GO!", for: .normal)
    }
}
