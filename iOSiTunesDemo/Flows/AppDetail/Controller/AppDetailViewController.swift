//
//  AppDetailViewController.swift
//  iOSiTunesDemo
//
//  Created by Кирилл Тарасов on 05.10.2021.
//

iimport UIKit

final class AppDetailViewController: UIViewController {
    
    public var app: ITunesApp!
    
    lazy var headerViewController = AppDetailHeaderViewController(app: app)
    lazy var whatsNewViewController = AppDetailWhatsNewViewController(app: app)
    
    private var appDetailView: AppDetailView {
        return self.view as! AppDetailView
    }
    
    // MARK: - Lifecycle
    
    override func loadView() {
        self.view = AppDetailView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViews()
    }
    
    // MARK: - Private
    
    private func setupViews() {
        self.configureNavigationController()
        self.addHeaderViewController()
        self.addWhatsNewViewController()
    }
    
    private func configureNavigationController() {
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationItem.largeTitleDisplayMode = .never
    }
    
    private func addHeaderViewController() {
        self.addChild(self.headerViewController)
        
        self.view.addSubview(self.headerViewController.view)
        self.headerViewController.didMove(toParent: self)
        
        self.headerViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.headerViewController.view.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.headerViewController.view.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.headerViewController.view.rightAnchor.constraint(equalTo: self.view.rightAnchor),
        ])
    }
    
    private func addWhatsNewViewController() {
        self.addChild(self.whatsNewViewController)
        
        self.view.addSubview(self.whatsNewViewController.view)
        self.whatsNewViewController.didMove(toParent: self)
        
        self.whatsNewViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.whatsNewViewController.view.topAnchor.constraint(equalTo: self.headerViewController.view.bottomAnchor, constant: 16),
            self.whatsNewViewController.view.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.whatsNewViewController.view.rightAnchor.constraint(equalTo: self.view.rightAnchor),
        ])
    }
}
