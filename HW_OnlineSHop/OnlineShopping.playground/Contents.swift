import Foundation

class Admin{
    let Admin_name : String
    let Admin_Id : Int
    let Admin_email : String
    init(Admin_name : String, Admin_Id : Int, Admin_email : String) {
        self.Admin_name = Admin_name
        self.Admin_Id = Admin_Id
        self.Admin_email = Admin_email
    }
    enum User_statue {
        case new
        case Active
        case blocked
    }
    class User_Account{
        let UserName : String
        let Password : String
        
        init(UserName : String,Password : String ) {
            self.UserName = UserName
            self.Password = Password
        }
    }}
    protocol Register {
        var UserName: String { get set }
         var email: String { get set }
        var Password: String { get set }
         var Reset_Password : String  { get set }
    }


struct Times{
    var firstunmber :Int
    var secondnumber : String = ":"
    var thirdnumber : String
}

public class Order{
    
    public  let Order_Customer_name : String
    public let Order_Id : Int
    public let Order_number : Int
     let Order_Time : Times
    init(Order_Customer_name : String,Order_Id : Int, Order_number : Int,Order_Time: Times ){
        self.Order_Customer_name = Order_Customer_name
        self.Order_Id = Order_Id
        self.Order_number = Order_number
        self.Order_Time = Order_Time
        
        print("Customer name is \(Order_Customer_name), and the Order Id is \(Order_Id), and the number of order is \(Order_number ) , and the order time is : \(Order_Time.firstunmber)\(Order_Time.secondnumber)\(Order_Time.thirdnumber)")
    }
    
    enum Order_statue {
         case pending
         case processing
         case shipped
         case delivered
    }
}

class Customer{
    let Customer_name: String
    let Customer_Id : Int
    let PhoneNumber : Int
    let Email : String
    let Address : String
    
    init(Customer_name: String,Customer_Id :Int, PhoneNumber : Int, Email : String, Address : String ) {
        self.Customer_name = Customer_name
        self.Customer_Id = Customer_Id
        self.PhoneNumber = PhoneNumber
        self.Email = Email
        self.Address = Address
    }
}
class Product{
  
    let Product_name : String
    let Product_Id : Int
    init(Product_name : String,Product_Id : Int ){
        self.Product_name = Product_name
        self.Product_Id = Product_Id
    }
    
    
    class Categories{
        var id: Int
        var name: String
        init ( id: Int,name: String ){
            self.id = id
            self.name = name
        }
    }

    class LineItem{
        let quantity : Int
        let price : Double
        
        init(quantity : Int,price : Double){
            self.quantity = quantity
            self.price = price
        }
    }

}
class Cart{
    let Cart_name : String
    let Cart_Id : Int
    let Description : String
    init(Cart_name : String,Cart_Id : Int,Description : String ){
        self.Cart_name = Cart_name
        self.Cart_Id = Cart_Id
        self.Description = Description
    }
}
class Payment{
    let Payment_Description : String
    let Payment_Customer_Id : Int
    let Amount : String
    let Date : Int
    
    init(Payment_Description : String,  Payment_Customer_Id : Int,Amount : String, Date : Int ) {
        self.Payment_Description = Payment_Description
        self.Payment_Customer_Id = Payment_Customer_Id
        self.Amount = Amount
        self.Date = Date
    }
    
    class Wire_transfer{
        var Bank_Id : String
        var Bank_name : String
        
        init ( Bank_Id : String,Bank_name : String){
            self.Bank_Id = Bank_Id
            self.Bank_name = Bank_name
        }
    }

    class Cash{
        let Cash_Tendered : Float
        init(Cash_Tendered : Float){
            self.Cash_Tendered = Cash_Tendered
        }
        
    }

   private class Credit {
       private  let CardNumber : Int
       private let Types : String
       private let expire_Date : Int
        init(CardNumber : Int,Types : String,expire_Date : Int) {
            self.CardNumber = CardNumber
            self.Types = Types
            self.expire_Date = expire_Date
        }

    }

    class Check{
        var name : String
        var Bank_Id : String
        
        init(name : String, Bank_Id : String) {
            self.name = name
            self.Bank_Id = Bank_Id
        }
    }

}

 protocol OnlineShopping {
    var name: String { get }
     var products: [Product] { get }
     var cart: [Product] { get set }
    
      func addProduct(product: Product)
      func removeProduct(product: Product)
      func checkout() -> Bool
}
print(OnlineShopping.self)
Order(Order_Customer_name: "Shahad Saud",  Order_Id: 11,  Order_number: 1, Order_Time:Times(firstunmber:3,thirdnumber:"00"))
var SwiftKeyWords = ["Class","Public","Private", "Enum","Init","Static","Struct","Var","Let","Import",
                              "Protocol","Break","If","Else","If Else","Return","Switch","Case","false","True",
                              "Self","Type","Func","Get","Set","Int","Bool","String","Double","Float","Character","Continue",
                     "Default","Defer","Do","Catch","For","In", "Repeat", "While", "Any","Or","Nil","Throw","Self","Try","_",
                     "Endif","#File","#FileReference","Dynamic","Final","WillSet","Weak","Right","Prefix","Precedence","override",
                     "Optional", "nonmutating","none","Left","Lazy","indirect","mutating"]
print("Array: \(SwiftKeyWords)")

