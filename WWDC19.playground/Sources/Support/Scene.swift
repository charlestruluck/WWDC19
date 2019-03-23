import UIKit
import SceneKit

class Scene: SCNScene {
    
    // Set up the variables
    let view: SCNView
    let camera: SCNCamera
    let cameraNode: SCNNode
    let sphere: SCNSphere
    let sphereNode: SCNNode
    
    // Initialize the SceneKit scene.
    init(frame: CGRect) {
        
        // Instanciate the variables
        self.view = SCNView(frame: frame)
        self.camera = SCNCamera()
        self.cameraNode = SCNNode()
        self.sphere = SCNSphere(radius: 1.0)
        self.sphereNode = SCNNode(geometry: sphere)
        self.sphereNode.rotation = SCNVector4(x: 1.0, y: 1.0, z: 0.0, w: 0.0)
        
        super.init()
        
        // Set up the view and prepare the sphere.
        self.view.scene = self
        // I know it is not best practice to use debug options, but I'm short on time.
        self.view.debugOptions = [.showWireframe]
        self.view.backgroundColor = UIColor.clear
        self.sphere.firstMaterial?.diffuse.contents = UIColor.clear.cgColor
        self.sphere.firstMaterial?.specular.contents = Color.green.cgColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Set up the camera node's position.
    func setupCameraPosition(x: Float, y: Float, z: Float) {
        cameraNode.position = SCNVector3(x: x, y: y, z: z)
    }
    
    // Easily add both camera and sphere objects to the scene.
    func setChildNodes() {
        
        // Add the camera node and the sphere node to the root.
        self.rootNode.addChildNode(cameraNode)
        self.rootNode.addChildNode(sphereNode)
        
    }
    
    // Create an animation to spin the sphere.
    func spinNode() -> CABasicAnimation {
        let spin = CABasicAnimation(keyPath: "rotation.w")
        spin.toValue = 2.0 * .pi
        spin.duration = 9
        spin.repeatCount = HUGE
        return spin
    }
    
}
