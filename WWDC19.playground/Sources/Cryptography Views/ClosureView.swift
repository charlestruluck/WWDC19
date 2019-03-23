import UIKit

class ClosureView: CryptoView {
    
    // After initializing HomeView:
    override func viewDidLoad() {
        
        // Set up the title
        self.setup(title: "The World of Cryptography is Important", placeholder: "Gur Jbeyq bs Pelcgbtencul vf Vzcbegnag")
        
        setupSceneKit()
        
    }
    
    // Set up the spinning globe.
    func setupSceneKit() {
        
        // SceneKit setup.
        let scene = Scene(frame: self.frame)
        scene.cameraNode.camera = scene.camera
        scene.setupCameraPosition(x: 0.0, y: 1.5, z: 5.0)
        scene.setChildNodes()
        scene.sphereNode.addAnimation(scene.spinNode(), forKey: "spin around")
        scene.view.alpha = 0
        UIView.animate(withDuration: 3.0, delay: 0.0, options: .curveEaseIn, animations: {
            scene.view.alpha = 1
        }, completion: nil)
        self.addSubview(scene.view)
    }
    
}
