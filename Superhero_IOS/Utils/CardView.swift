//
//  CardView.swift
//  Superhero_IOS
//
//  Created by Mañanas on 27/5/25.
//

import UIKit

class CardView: UIView {
    
    var superhero: Superhero!

    
    @IBOutlet weak var superheroNameLabel: UILabel!
    @IBOutlet weak var realNameLabel: UILabel!
    @IBOutlet weak var placeOfBirthLabel: UILabel!
    
    @IBOutlet weak var placeOfBirthView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var topView: UIView!
    
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var statIntelligenceLabel: UILabel!
    @IBOutlet weak var statDurabilityLabel: UILabel!
    @IBOutlet weak var statStrengthLabel: UILabel!
    @IBOutlet weak var statCombatLabel: UILabel!
    @IBOutlet weak var statSpeedLabel: UILabel!
    @IBOutlet weak var statPowerLabel: UILabel!
    
    func render(with superhero: Superhero) {
        self.superhero = superhero
        
        superheroNameLabel.text = superhero.name
        realNameLabel.text = superhero.biography.realName
        placeOfBirthLabel.text = superhero.biography.placeOfBirth
        
        statIntelligenceLabel.text = superhero.powerstats.intelligence
        statCombatLabel.text = superhero.powerstats.combat
        statPowerLabel.text = superhero.powerstats.power
        statSpeedLabel.text = superhero.powerstats.speed
        statStrengthLabel.text = superhero.powerstats.strength
        statDurabilityLabel.text = "\(superhero.powerstats.durability) HP"
        
        avatarImageView.loadFrom(url: superhero.image.url)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    } 
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        self.layer.cornerRadius = 16
        self.setBorder(width: 2, withColor: UIColor.black)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        placeOfBirthView.setBorder(width: 0.5, withColor: UIColor.white)
        
        avatarImageView.layer.borderWidth = 2
        avatarImageView.layer.borderColor = UIColor.black.cgColor
        
        let bottomGradient: CAGradientLayer = CAGradientLayer()
        
        bottomGradient.colors = [UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor, UIColor.clear.cgColor]
        bottomGradient.locations = [0.0 , 1.0]
        bottomGradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        bottomGradient.endPoint = CGPoint(x: 0.0, y: 0.0)
        bottomGradient.frame = CGRect(x: 1.0, y: 1.0, width: bottomView.frame.size.width, height: bottomView.frame.size.height)
       bottomView.layer.insertSublayer(bottomGradient, at: 0)
        
        let topGradient: CAGradientLayer = CAGradientLayer()
        
        topGradient.colors = [UIColor.clear.cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor]
        topGradient.locations = [0.0 , 1.0]
        topGradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        topGradient.endPoint = CGPoint(x: 0.0, y: 0.0)
        topGradient.frame = CGRect(x: 1.0, y: 1.0, width: topView.frame.size.width, height: topView.frame.size.height)
       topView.layer.insertSublayer(topGradient, at: 0)
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
