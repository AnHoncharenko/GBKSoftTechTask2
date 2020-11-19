//
//  RegistrationViewController.swift
//  GBKSoftTechTask2
//
//  Created by Anton Honcharenko on 18.11.2020.
//

import UIKit

class RegistrationViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!

    static func present(on viewController: UIViewController) {
        let vc = instanciate(UIStoryboard.init(name: "Main", bundle: .main))
        viewController.navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addTapGesture()
        addKeyboardObserver()
    }

    private func addTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        view.addGestureRecognizer(tapGesture)
    }

    private func addKeyboardObserver() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillShow),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillHide),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
    }

    @objc func handleTap() {
        view.endEditing(true)
    }

    @objc func keyboardWillShow(notification: NSNotification) {
        let userInfo = notification.userInfo
        guard let value = (userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue) else { return }
        let keyboardSize = value.cgRectValue
        var contentInset: UIEdgeInsets = scrollView.contentInset
        contentInset.bottom = keyboardSize.height
        scrollView.contentInset = contentInset
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        scrollView.contentInset = .zero
    }

    @IBAction func onRegisterButtonPress(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}

