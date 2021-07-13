//
//  DiscoverVC.swift
//  TabBarApp
//
//  Created by Nata on 13.07.2021.
//

import UIKit

class DiscoverVC: UIViewController {

    @IBOutlet weak var labeltext: UILabel!

    @IBOutlet weak var button: UIButton!
    var name = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        labeltext.text = "Nothing here"
        setUpButton()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "goToSaved" else { return }
        guard let destination = segue.destination as? SavedVC else { return }
        destination.name = "No Saved Items"
    }

    private func setUpButton() {
        button.setTitle("OK", for: .normal)
    }
}
