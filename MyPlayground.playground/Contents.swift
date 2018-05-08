import UIKit

/*:
 # 🤷‍♂️ Normal Generic
 Generics give you flixabilty, for example here the variable Koko can be any type you dream here, koko can be String or Int or even person
 the Syntacs of generics will be

 class/struct/enum GENERICDATATYPE <T>{
    var myGenecriVariable : T
 }
 */
struct MyStack <T> {
    var koko: T
}

struct Person {
    var name: String
    var sex: String
}

let stringStruct = MyStack<String>(koko: "I'm String")
let intgerStruct = MyStack<Int>(koko: 123)
let personStruct = MyStack<Person>(koko: Person(name: "", sex: ""))
/*:

 # Two Types Generics <P,T>

 You can assign as generics as you want

 */
struct TwoGenericsType <T,S> {
    var popo: T
    var nono: S
}
let stringTwoGenericsType = TwoGenericsType<String,String>(popo: "I'm popo String", nono: "I'm nono String")
let intTwoGenericsType = TwoGenericsType<Int,Int>(popo: 5, nono: 15)
let personTwoGenericsType = TwoGenericsType<Person,Person>(popo: Person(name: "", sex: ""), nono: Person(name: "", sex: ""))
let mixedStingAndPersonTwoGenericsType = TwoGenericsType<Person,String>(popo: Person(name: "I'm popo Person", sex: ""), nono: "I'm nono string")
/*:

 # <P,T> 👉 PLACEHOLDERS
 */
struct ThreeTypeGenerics <A,B,C> {
    var first : A
    var second : B
    var last : C
}
let stringIntPerson = ThreeTypeGenerics<String,Int,Person>(first: "", second: 123, last: Person(name: "", sex: ""))



/*:

 # 🤷‍♂️ Normal Protocol
 */
protocol myProtocl {
    var lolo : String { get set }
}

struct myStruct: myProtocl {
    var lolo: String {
        get{
            return self.lolo
        }
        set{
            self.lolo = newValue
        }
    }
}

/*:

 # 🤩 Protocol + Generic 👉 < T : MyProtocol >
 */

protocol DeviceInfo {
    associatedtype DeviceDataModel
    var dataModel: DeviceDataModel { get }
}

struct ConcretDeviceInfo <T> : DeviceInfo {
    var dataModel: String
    var koko : T
}

struct ConcretGenericDeviceInfo <T: DeviceInfo> {
    let deviceModel: T.DeviceDataModel
    let popo: T
}

let xyz = ConcretGenericDeviceInfo<ConcretDeviceInfo>(deviceModel: "asd", popo: ConcretDeviceInfo(dataModel: "asd yalla fe a", koko: Person(name: "ana Koko yaad", sex: "")))
xyz.deviceModel
xyz.popo.dataModel
xyz.popo.koko.name

let abc = ConcretGenericDeviceInfo<ConcretDeviceInfo>(deviceModel: "asd", popo: ConcretDeviceInfo(dataModel: "asd yalla fe a", koko: 123))
abc.popo.koko

/*:

 # 🌶 🔥 Generics + Protocols 🌶 🔥
 You can build generic protocols using the magical associatedtype keyword which is a placeholder
 ## The Secret is... associatedtype 🤫
 */

protocol GenericProtocol {
    associatedtype GenericDataType
    associatedtype SecondGenericDataType

    var momo: SecondGenericDataType { get }
    func config(data: GenericDataType)
}


struct myGenericStruct: GenericProtocol {
    var momo: String = ""
    func config(data: Person) {

    }
}




protocol GenericCell {
    associatedtype CellData
    func configure(data:CellData)
}

protocol GenericConfigurator {
    static var reuseId: String { get }
    func configure(cell: UIView)
}

class TableCellConfgiurator <CellType: GenericCell, CellData> : GenericConfigurator where CellType.CellData == CellData, CellType: UITableViewCell {
    static var reuseId: String { return String(describing: CellType.self) }

    func configure(cell: UIView) {
    }
}

/*:

 # 🌶 🔥 Generics + Protocols Types summary 🌶 🔥
 1. Struct adop to Protocl
 2. Struct with Generic which is adop to protocol <P: myProtocol>
 3. Stuct adopt to protocol with normal generic <T>
 4. Struct adop to ptorocol with Genric adopt alsp to protocol.

 P.S: you can chain conditions as you like
 */

print("😇")
