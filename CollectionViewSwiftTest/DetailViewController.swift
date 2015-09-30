//
//  DetailViewController.swift
//  CollectionViewSwiftTest
//

import UIKit

class DetailViewController: UIViewController {
	
	@IBOutlet weak var backgroundImageView: UIImageView!
	
	var imageName: String?
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		if let imageView = backgroundImageView{
			imageView.image = UIImage(named:self.imageName!)
		}
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func myFunctionName(name: String, imageName: String) -> Void {
		
		title = name;
		self.imageName = imageName;
		if let imageView = backgroundImageView{
			imageView.image = UIImage(named:imageName)
		}
	}
	
	
//	public func myModalDidFinish(controller: MyModalVC, pie: String) {
//		statusLabel.text = "Order " + pie + " pie"
//		controller.dismissViewControllerAnimated(true, completion: nil)
//	}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
