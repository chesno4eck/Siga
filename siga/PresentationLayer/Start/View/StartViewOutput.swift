//
//  StartStartViewOutput.swift
//  siga
//
//  Created by Дмитрий Алиев on 21/03/2018.
//  Copyright © 2018 Aliyev inc.. All rights reserved.
//

protocol StartViewOutput {

    /**
        @author Дмитрий Алиев
        Notify presenter that view is ready
    */

    func viewIsReady()
    
    func signInTapped()
    func signUpTapped()
    func cancelTapped()
    func startTapped()

}
