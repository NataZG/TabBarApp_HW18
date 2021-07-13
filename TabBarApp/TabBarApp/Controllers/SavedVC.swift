//
//  SavedVC.swift
//  TabBarApp
//
//  Created by Nata on 13.07.2021.
//

import UIKit

class SavedVC: UIViewController {

    weak var delegate: HomeVCDelegate?

    @IBOutlet weak var labeltext: UILabel!
    @IBOutlet weak var button: UIButton!

    var name = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        labeltext.text = name
        setUpButton()
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func buttonTapped(_ sender: UIButton) {
        delegate?.update(text: "Start Over")
        navigationController?.popToRootViewController(animated: true)
    }

    private func setUpButton() {
        button.setTitle("Home", for: .normal)
    }


}
