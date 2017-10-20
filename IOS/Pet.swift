public class Pet: ElectrodeObject, Bridgeable {

    private static let tag = String(describing: type(of: self))

    public let id: Int64?
    public let category: Category?
    public let name: String
    public let photoUrls: [String]
    public let tags: [Tag]?

    public init(id: Int64?, category: Category?, name: String, photoUrls: [String], tags: [Tag]?, status: Status?) {
        self.id = id
        self.category = category
        self.name = name
        self.photoUrls = photoUrls
        self.tags = tags
        self.status = status
        super.init()
    }

    public override init() {
        self.name = String()
        self.photoUrls = [String]()
        self.id = nil
        self.category = nil
        self.tags = nil
        self.status = nil
        super.init()
    }

    required public init(dictionary:[AnyHashable:Any]) {
        

        if let name = dictionary["name"] as? String  {
                  self.name = name
        } else {
            assertionFailure("\(Pet.tag) missing one or more required properties [name] ")
            self.name = dictionary["name"] as! String
        }

         
         if let validPhotoUrls = try? NSObject.generateObject(data: dictionary["photoUrls"], classType: Array<Any>.self, itemType: .self),
             let photoUrlsList = validPhotoUrls as? [String]  {
                 self.photoUrls = photoUrlsList
             } else {
             assertionFailure("\(Pet.tag) missing one or more required properties[photoUrls]")
             self.photoUrls = dictionary["photoUrls"] as! [String]
             }



        if let id = dictionary["id"] as? Int64 {
            self.id = id
        } else {
            self.id = nil
        }
        

        if let categoryDict = dictionary["category"] as? [AnyHashable: Any] {
            self.category = Category(dictionary: categoryDict)
        } else {
            self.category = nil
        }
        
        if let validTags = try? NSObject.generateObject(data: dictionary["tags"], classType: Array<Any>.self, itemType: Tag.self),
           let tagsList = validTags as? [Tag] {
            self.tags = tagsList
        } else {
            self.tags = nil
        }


        if let status = dictionary["status"] as? String {
            self.status = status
        } else {
            self.status = nil
        }
        
        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {

         var dict = [:] as [AnyHashable : Any]

         dict["name"] =  self.name
dict["photoUrls"] =  self.photoUrls

        if let nonNullId = self.id {
                dict["id"] = nonNullId
        }
        if let nonNullCategory = self.category {
                dict["category"] = nonNullCategory.toDictionary()
        }
        if let nonNullTags = self.tags {
                dict["tags"] = nonNullTags.map{$0.toDictionary()}
        }
        if let nonNullStatus = self.status {
                dict["status"] = nonNullStatus
        }
        return dict as NSDictionary
    }
}
