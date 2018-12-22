//
//  ViewController.swift
//  cwvwallettest
//
//  Created by brew on 2018/12/22.
//  Copyright © 2018 brew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.testBrewChainKeys();

        // Do any additional setup after loading the view, typically from a nib.
        testBrewChainKeys();
    }
    
    func testBrewChainKeys(){
        let  kp = BrewChainUtils.genRandomKey();
        NSLog("cwv.地址.1:%@",  KeyPairHelper.hexAddress(kp))
        NSLog("cwv.私钥.1:%@",  KeyPairHelper.hexPrikey(kp))
        NSLog("cwv.公钥.1:%@",  KeyPairHelper.hexPubkey(kp))
        
        let  kp1 = BrewChainUtils.gen(fromPrikey: "f3c122d42251d761882f5a49d9ff1d5491e50a5add8f5886bb25a921f3379e24");
        NSLog("cwv.地址.2:%@",  KeyPairHelper.hexAddress(kp1))
        NSLog("cwv.私钥.2:%@",  KeyPairHelper.hexPrikey(kp1))
        NSLog("cwv.公钥.2:%@",  KeyPairHelper.hexPubkey(kp1))
        
        let signcontent="hello";
        
        let signhex=BrewChainUtils.ecSign(kp1, content: signcontent);
        
        NSLog("cwv.签名结果:%@", String(signhex ?? "NIL"));
        
        
    }


}

