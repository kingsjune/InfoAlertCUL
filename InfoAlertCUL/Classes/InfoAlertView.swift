//
//  InfoAlertView.swift
//  InfoAlertCUL
//
//  Created by BHJ on 2021/09/13.
//

import UIKit

open class InfoAlertView: UIView {
    
    private var contentView: UIView!
    private var titleLabel: UILabel!
    private var topLineView: UIView!
    
    private var infoTextView: UITextView!
    
    private var bottomlineView: UIView!
    private var confirmButton: UIButton!
    
    private var completion: (() -> Void)?
    
    public convenience init(completion: (() -> Void)?) {
        self.init(frame: CGRect.zero)
        
        self.completion = completion
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView = UIView()
        titleLabel = UILabel()
        topLineView = UIView()
        infoTextView = UITextView()
        bottomlineView = UIView()
        confirmButton = UIButton(type: .custom)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        infoTextView.translatesAutoresizingMaskIntoConstraints = false
        topLineView.translatesAutoresizingMaskIntoConstraints = false
        bottomlineView.translatesAutoresizingMaskIntoConstraints = false
        confirmButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func setAttribute() {
        self.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        
        contentView.layer.cornerRadius = 14.0
        contentView.backgroundColor = .white
        
        topLineView.backgroundColor = .lightGray
        bottomlineView.backgroundColor = .lightGray
        
        titleLabel.text = "Device Info"
        
        infoTextView.backgroundColor = .white
        infoTextView.isEditable = false
        infoTextView.font = UIFont.systemFont(ofSize: 15)
        infoTextView.text = "제조사: \(DeviceInfo.makeName())\n모델명: \(DeviceInfo.modelName())\n하드웨어 버전: \(DeviceInfo.hardwareVersion())\nOS 이름: \(DeviceInfo.devicOSName())\nOS 버전: \(DeviceInfo.devicOSVer())\nScreenSize: \(DeviceInfo.screenSize())\n사용언어: \(DeviceInfo.useLanguage())\nApp 이름: \(DeviceInfo.appName())\nApp 버전: \(DeviceInfo.appVersion())"
        
        confirmButton.setTitle("확인", for: .normal)
        confirmButton.setTitleColor(.blue, for: .normal)
        confirmButton.addTarget(self, action: #selector(confirmAction), for: .touchUpInside)
    }
    
    open func show(in superview: UIView) {
        setAttribute()
        
        superview.addSubview(self)
        self.topAnchor.constraint(equalTo: superview.topAnchor).isActive = true
        self.leadingAnchor.constraint(equalTo: superview.leadingAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: superview.trailingAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
        
        self.addSubview(contentView)
        contentView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        contentView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        contentView.heightAnchor.constraint(equalToConstant: 300.0).isActive = true
        contentView.widthAnchor.constraint(equalToConstant: 270.0).isActive = true
        
        contentView.addSubview(titleLabel)
        titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15.0).isActive = true
        
        contentView.addSubview(topLineView)
        topLineView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
        topLineView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        topLineView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        topLineView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        contentView.addSubview(infoTextView)
        infoTextView.topAnchor.constraint(equalTo: topLineView.bottomAnchor, constant: 10).isActive = true
        infoTextView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5).isActive = true
        infoTextView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5).isActive = true
        
        
        contentView.addSubview(bottomlineView)
        bottomlineView.topAnchor.constraint(equalTo: infoTextView.bottomAnchor, constant: 10).isActive = true
        bottomlineView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        bottomlineView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        bottomlineView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        contentView.addSubview(confirmButton)
        confirmButton.topAnchor.constraint(equalTo: bottomlineView.bottomAnchor).isActive = true
        confirmButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        confirmButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        confirmButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        confirmButton.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
    }
    
    @objc private func confirmAction() {
        self.removeFromSuperview()
        completion?()
    }
}
