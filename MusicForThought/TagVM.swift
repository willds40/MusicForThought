import UIKit
import Foundation

class TagVM{
    var tags: [Category] = SearchAdapter().searchCategories()!
}
