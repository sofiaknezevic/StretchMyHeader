//
//  ViewController.swift
//  StretchMyHeader
//
//  Created by Sofia Knezevic on 2017-03-14.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var mainTableView: UITableView!
    @IBOutlet weak var dateLabel: UILabel!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mainTableView.rowHeight = UITableViewAutomaticDimension
        self.mainTableView.estimatedRowHeight = 180
        
    }
    
    override var prefersStatusBarHidden: Bool
    {
        return true
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "stretchyCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? StretchyTableViewCell else {
            
            fatalError("The dequeued cell is not an instance of StretchyTableViewCell.")
            
        }
        
        let newNewsItems = self.makeArrayOfNewsItems()
    
        let newsItem = newNewsItems[indexPath.row]
        cell.configureCell(newsItem: newsItem as! NewsItem)
        
        return cell
        
    }
    
    func makeArrayOfNewsItems() -> (NSMutableArray)
    {
        let newsItems = NSMutableArray()
        
        newsItems.add(NewsItem.init(category: NewsItem.NewsCategory.world,
                                       andStory: "Something about climate change and all this stuff I don't know anymore"))
        
        newsItems.add(NewsItem.init(category: NewsItem.NewsCategory.americas,
                                       andStory: "There are some crazy things happening in North America, and South America and any other america that exists on this planet because america is just a wild wild name"))
        
        newsItems.add(NewsItem.init(category: NewsItem.NewsCategory.europe,
                                       andStory: "Well, now this place has got some stuff going on, but like its so beautiful you should definitely still go there if you can"))
        
        newsItems.add(NewsItem.init(category: NewsItem.NewsCategory.middleEast,
                                       andStory: "This area of the world is very very hot, and very very dry, did you hear about that camel that bit off its riders head for not giving it enough water? Like, I thought camels could go years without water... I guess that's unreasonable"))
        
        newsItems.add(NewsItem.init(category: NewsItem.NewsCategory.africa,
                                       andStory: "This place is super interesting, I actually found out the other day that there is a tribe in Africa that scarifies their face in the outline of a spiderweb when they are newly-born, its so beautiful but also so crazy!!!"))
        
        newsItems.add(NewsItem.init(category: NewsItem.NewsCategory.asiaPacific,
                                       andStory: "I don't know much about this area of the world, and I don't like "))
        
        return newsItems
        
    }

}

