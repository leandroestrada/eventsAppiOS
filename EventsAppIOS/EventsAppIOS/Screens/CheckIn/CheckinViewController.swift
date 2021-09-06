//
//  CheckinViewController.swift
//  EventsAppIOS
//
//  Created by leandromac on 06/09/21.
//

import Foundation
import Lottie

class CheckinViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var oldPriceLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var cuponTextField: UITextField!
    @IBOutlet weak var closeButton: UIBarButtonItem!
    @IBOutlet weak var confirmActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var successView: UIView!
    @IBOutlet weak var animationView: AnimationView!

    
    // MARK: - Attributes
    let viewModel = CheckinViewModel()
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewModel()
        setupData()
        setupTextFields()
        setupButtonActivityIndicator()
        setupAnimation()
    }
    
    
    // MARK: - Configuration
    private func setupViewModel() {
        viewModel.delegate = self
    }
    
    private func setupData() {
        guard let event = viewModel.event else { return }
        
        titleLabel.text = event.title
        dateLabel.text = event.date.formattedString
        oldPriceLabel.isHidden = true
        priceLabel.text = PriceFormatter.format(event.price)
    }
    
    private func setupTextFields() {
        
        configure(nameTextField)
        configure(emailTextField)
        configure(cuponTextField)
    }
    
    private func setupButtonActivityIndicator() {
        confirmActivityIndicator.startAnimating()
        confirmActivityIndicator.isHidden = true
    }
    
    private func setupAnimation() {
        
        let animation = Animation.named("check")
        animationView.animation = animation
    }
    
    // MARK: - Layout Configuration
    private func configure(_ textField: UITextField) {
        
        textField.delegate = self
        
        if let text = textField.text {
            textField.attributedText =
                NSAttributedString(string: text,
                    attributes:[NSAttributedString.Key.foregroundColor: UIColor.darkText])
        }
        
        if let placeholder = textField.placeholder {
            textField.attributedPlaceholder =
                NSAttributedString(string: placeholder,
                    attributes:[NSAttributedString.Key.foregroundColor: UIColor.placeholderText])
        }
        
    }
    
    private func invalidate(_ textField: UITextField) {
        
        if let text = textField.text {
            textField.attributedText = NSAttributedString(string: text, attributes:[NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        
        if let placeholder = textField.placeholder {
            textField.attributedPlaceholder = NSAttributedString(string: placeholder, attributes:[NSAttributedString.Key.foregroundColor: UIColor.red])
        }
    }
    
    // MARK: - Outlet Methods
    @IBAction func applyCuponButtonAction(_ sender: Any) {
        viewModel.applyCupon(cuponTextField.text)
    }
    
    @IBAction func confirmCheckinButtonAction(_ sender: Any) {
        setupTextFields()
        viewModel.checkin(name: nameTextField.text, email: emailTextField.text)
    }
    
    @IBAction func closeButtonAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

// MARK: - CheckinViewModelDelegate
extension CheckinViewController: CheckinViewModelDelegate {
    
    func showAlert(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func invalidateName() {
        invalidate(nameTextField)
    }
    
    func invalidateEmail() {
        invalidate(emailTextField)
    }
    
    func invalidateCupon() {
        invalidate(cuponTextField)
    }
    
    func didApplyCuppon(oldPrice: String, newPrice: String) {
        
        oldPriceLabel.text = oldPrice
        priceLabel.text = newPrice
        oldPriceLabel.isHidden = false
    }
    
    func didCheckin() {
        
        successView.alpha = 0
        successView.isHidden = false
        UIView.animate(withDuration: 0.7, animations: { self.successView.alpha = 1 }) {
            completed in
            
            self.animationView.play()
        }
    }
    
    func stopLoading() {
        confirmActivityIndicator.isHidden = true
    }
    
    func startLoading() {
        confirmActivityIndicator.isHidden = false
    }
}

// MARK: - UITextFieldDelegate
extension CheckinViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
