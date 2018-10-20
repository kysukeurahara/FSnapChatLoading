//
//  FSLoadingView.swift
//  rotationView
//
//  Created by Mac on ١٩‏/١٠‏/٢٠١٨.
//  Copyright © ٢٠١٨ Faisal AL-Otaibi. All rights reserved.
//

import UIKit

public class FSnapChatLoadingView: UIView {


    var overlayView:UIView!
    
    public func show(view:UIView?,color:UIColor) {
       self.frame = view!.frame
       self.backgroundColor = UIColor.clear
       overlayView = UIView()
       overlayView.frame = view!.frame
       overlayView.backgroundColor = #colorLiteral(red: 0.4221526015, green: 0.4221526015, blue: 0.4221526015, alpha: 0.4056881421)
        
       let loading = FSLoading(frame: CGRect(x: view!.center.x - 50, y: view!.center.y - 50, width: 100, height: 100))
        loading.setup(color: #colorLiteral(red: 1, green: 0.9663620082, blue: 0.1761264567, alpha: 1))
        overlayView.addSubview(loading)
        
       view!.addSubview(overlayView)
    }
    
    public func hide() {
        overlayView.removeFromSuperview()
    }

}
