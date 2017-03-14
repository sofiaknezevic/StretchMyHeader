//
//  StretchyTableViewCell.swift
//  StretchMyHeader
//
//  Created by Sofia Knezevic on 2017-03-14.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

import UIKit

class StretchyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var headerLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        

    }
    
    func configureCell(newsItem: NewsItem) -> Void {
        
        let (text, color) = newsItem.category.toStringAndColor()
        
        self.categoryLabel.text = text
        self.categoryLabel.textColor = color
        self.headerLabel.text = newsItem.newsStory
        
    }

}
