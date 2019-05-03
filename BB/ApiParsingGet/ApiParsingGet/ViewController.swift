import UIKit
var book_author = [String]()
var book_name = [String]()
var book_title = [String]()
var book_value = [String]()
var book_category = [String]()
var book_imagelink = [String]()
var book_image = [UIImage]()

class ViewController: UIViewController {
    
    /// action of button
    ///
    /// - Parameter sender:UIButton
    @IBAction func press(_ sender: UIButton) {
        getrequest()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
            }

}

extension ViewController
{
    
    /// get request
    func getrequest()
    {
        
        let url=URL(string: "https://www.googleapis.com/books/v1/volumes?q=subject:fiction")
        let task = URLSession.shared.dataTask(with: url!) {(data,response,error) in
            if(error != nil)
            {
                print(error!)
            }
            else
                if let urldata=data
                {
                    do
                    {
                        let json = try JSONSerialization.jsonObject(with: urldata, options: JSONSerialization.ReadingOptions.mutableContainers)
                        //                    print(json)
                        
                        //title
                        guard let jresponse=json as? [String:Any] else {return}
                        guard let items = jresponse["items"] as? [AnyObject] else {return}
                        for i in items
                        {
                            guard let resDic = i as? [String:Any] else {return}
                            guard let volumeInfo = resDic["volumeInfo"] as? [String: AnyObject] else {return}
                            guard let title = volumeInfo["title"] as? String else {return}
                            guard let name = volumeInfo["publisher"] as? String else {return}
                            guard let author = volumeInfo["authors"] as? [AnyObject] else {return}
                            guard let auth = author[0] as? String else { return}
                            
                            guard let count = volumeInfo["pageCount"] as? Int else {return}
                            
                            guard let categoryArray = volumeInfo["categories"] as? [AnyObject] else {return}
                            guard let category=categoryArray[0] as? String else {return}
                            // image
                            guard let image = volumeInfo["imageLinks"] as? [String:Any] else {return}
                            guard let link = image["smallThumbnail"] as? String else {return}
                            print("image link = \(link)")
                            
                            print("author=\(auth)")
                            print("publisher=\(name)")
                            print("title=\(title)")
                            print("page count=\(count)")
                            print("Category=\(category)")
                            
                        
                            let value = String(count)
                            book_author.append(auth)
                            book_name.append(name)
                            book_title.append(title)
                            book_value.append(value)
                            book_category.append(category)
                            book_imagelink.append(link)
                            }
                        self.upload(index: 0)
                        
                    }
                    catch
                    {
                        print("error")
                    }
            }
            }
            task.resume()
    }
    
    /// upload images
    ///
    /// - Parameter i: index
    func upload(index : Int)
        
    {
        if(index < book_imagelink.count)
        {
        let url1 = URL(string: book_imagelink[index])
        var _ = URLSession.shared.dataTask(with: url1!) {(data,response,error) in
            if let e = error
            {
                print(e)
            }
            else
            {
                if (response as? HTTPURLResponse) != nil
                {
                    if let imgdata = data
                    {
                        
                            let img = UIImage(data: imgdata)
                            book_image.append(img!)
                            self.upload(index: index+1)
                        
                    }
                    
                }
            }
        }.resume()
        }
        else
        {
            DispatchQueue.main.async {
                let obj1 = self.storyboard?.instantiateViewController(withIdentifier: "NewViewController") as! NewViewController
                
                obj1.newbook_author = book_author
                obj1.newbook_name = book_name
                obj1.newbook_title = book_title
                obj1.newbook_value = book_value
                obj1.newbook_category = book_category
                obj1.newbook_image = book_image
                self.navigationController?.pushViewController(obj1, animated: true)
            }
        }
    }
}

