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
// 1. Struct adop to Protocl
struct Developer: Management {
    func planeToSprint(sprintId: Int) {
        print("Developer \(self.name) can do planing for sprint: \(sprintId).")
    }

    let name: String
    let age: Int
}

protocol Management {
    func planeToSprint(sprintId: Int)
}

let zsolt = Developer(name: "Zsolt", age: 65)
zsolt.planeToSprint(sprintId: 366)


// 2. Struct with Generic which is adop to protocol <P: myProtocol>.

struct Developer2 <T> : Management {
    func planeToSprint(sprintId: Int) {
        print("Developer \(self.name) can do planing for sprint: \(sprintId).")
    }

    let specialCharacteristic: T
    let name: String
}
struct Car {let model: String}
struct Hoppy {let name: String}

let hana = Developer2(specialCharacteristic: Int(28), name: "Hana")
let arihant = Developer2(specialCharacteristic: Car(model: "Audi"), name: "Arihant")
let emin = Developer2(specialCharacteristic: Hoppy(name: "Travel"), name: "Emin")

//print("\(hana.name) specialCharacteristic is \(hana.specialCharacteristic)")
//print("\(emin.name) specialCharacteristic is \(emin.specialCharacteristic)")
//print("\(arihant.name) specialCharacteristic is \(arihant.specialCharacteristic)")
//
//hana.specialCharacteristic
//emin.specialCharacteristic.name
//arihant.specialCharacteristic.model

protocol DeveloperGenericProtocol {
    associatedtype Talent
    var skill: Talent { get }
    func talkAboutYourSkill()
}

struct Developer3: DeveloperGenericProtocol {
    func talkAboutYourSkill() {
        print("I have skill\(skill)")
    }

    var skill = ""
}

struct Developer3V2: DeveloperGenericProtocol{
    func talkAboutYourSkill() {
        print("I have skill\(skill)")
    }

    var skill: Hoppy
}

struct Develoepr3V3: DeveloperGenericProtocol {
    var skill: Car

    func talkAboutYourSkill() {
        print("I have skill\(skill)")
    }
}

let hana3 = Developer3(skill: "swift")
let emin3V2 = Developer3V2(skill: Hoppy(name: "Traveling"))
let zsolt3V3 = Develoepr3V3(skill: Car(model: "mazda"))
//
//zsolt3V3.talkAboutYourSkill()
//hana3.talkAboutYourSkill()
//emin3V2.talkAboutYourSkill()


protocol AdvancedGenericDeveloperTalent {
    associatedtype Topic
    var topic: Topic { get }
}

struct AdvancedDeveloepr <T: AdvancedGenericDeveloperTalent, D> : Management{
    var talent: T
    var depth: D

    func planeToSprint(sprintId: Int) {}
}

struct Diving: AdvancedGenericDeveloperTalent{
    var topic: Hoppy
}

let andi = AdvancedDeveloepr(talent: Diving(topic: Hoppy(name: "diving")), depth: 3)

print("😇")
