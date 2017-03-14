//
//  NewsItem.swift
//  StretchMyHeader
//
//  Created by Sofia Knezevic on 2017-03-14.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

import UIKit

struct NewsItem
{
    
    
    var newsStory: String
    var category: NewsCategory
    
    enum NewsCategory {
        
        case world
        case americas
        case europe
        case middleEast
        case africa
        case asiaPacific
        
        func toStringAndColor() -> (String, UIColor) {
            
            switch self {
                
            case .world:
                return ("World", #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
                
            case .americas:
                return ("Americas", #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
                
            case .europe:
                return ("Europe", #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
                
            case .middleEast:
                return ("Middle East", #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))
                
            case .africa:
                return ("Africa", #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))
                
            case .asiaPacific:
                return ("Asia Pacific", #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
         
            }
            
            
        }
    }
    

    init(category: NewsCategory, andStory: String) {
        
        self.category = category
        self.newsStory = andStory
        
    }
    

}
