//
//  CustomCollectionViewController.swift
//  CollectionViewSwiftTest.
//

import UIKit

private let reuseIdentifier = "CustomCell"
var array: [(title: String, imageName: String)] = []

class CustomCollectionViewController: UICollectionViewController {

	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.registerClass(CustomCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

		array.append((title:"comida1", imageName:"image1.png"))
		array.append((title:"comida2", imageName:"image2.png"))
		array.append((title:"comida3", imageName:"image3.png"))
		array.append((title:"comida4", imageName:"image4.png"))
		
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		
		let selectedIndex = collectionView?.indexPathForCell(sender as! UICollectionViewCell)
		let tempTuple = array[(selectedIndex?.item)!]
		
		// Create a new variable to store the instance of PlayerTableViewController
		let detailVC = segue.destinationViewController as! DetailViewController
		detailVC.myFunctionName(tempTuple.title, imageName: tempTuple.imageName)
		
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }


    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return array.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
		let cell : CustomCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CustomCollectionViewCell
		
		let tempTuple = array[indexPath.item]
		
        // Configure the cell
		if let label = cell.textLabel{
			label.text = tempTuple.title
		}
		if let imageView = cell.imageView{
			imageView.image = UIImage(named: tempTuple.imageName)
		}
		
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
