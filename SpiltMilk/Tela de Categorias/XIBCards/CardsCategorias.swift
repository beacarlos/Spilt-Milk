//
//  CardsController.swift
//  SpiltMilk
//
//  Created by Jessica Guiot on 28/04/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

//@IBDesignable class CardsController: UIView {
class CardsCategorias: UIView {
    
    @IBOutlet weak var tituloCard: UILabel?
    @IBOutlet weak var imagemCard: UIImageView?
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    let nibName = "CardsCategorias"
    var contentView: UIView?

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupXib()
    }

    init() {
        super.init(frame: .zero)
        setupXib()
        tituloCard?.text = "Categorias"
        imagemCard?.image = UIImage()
    }

    private func setupXib() {
        guard let view = loadViewFromNib() else { fatalError("Wrong xib name") }
        view.frame = self.bounds
        self.addSubview(view)
        contentView = view
    }

    func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }

    
}
