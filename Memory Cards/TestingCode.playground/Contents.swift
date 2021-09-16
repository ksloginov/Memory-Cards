import SwiftUI
import PlaygroundSupport

struct SquareFigure: View {
    init() {}
    var body: some View {
        Rectangle()
            .foregroundColor(.green)
            .frame(width: 200, height: 200)
    }
}


PlaygroundPage.current.setLiveView(SquareFigure())


































struct CapsuleFigure: View {
    init() {}
    var body: some View {
        Capsule()
            .foregroundColor(Color(red: 235.0/255.0, green: 168.0/255.0, blue: 58.0/255.0))
            .frame(width: 200, height: 100)
            .padding()
    }
}

PlaygroundPage.current.setLiveView(CapsuleFigure())











































struct CircleFigure: View {
    init() {}
    var body: some View {
        Circle()
            .fill(Color.purple)
            .overlay(Circle()
                        .strokeBorder(Color.pink,style: StrokeStyle(lineWidth: 6.0, dash: [16.0, 6.0])))
            .frame(width: 200, height: 200)
    }
}



PlaygroundPage.current.setLiveView(CircleFigure())
















//// Structs are immutable:
//struct Zoo {
//    // Not that it's "var" here, not "let"
//    var animals: [String] = ["Zebra", "Lion", "Seal"]
//}
//
//Zoo().animals.append("Konstantin") // <-- failed to compile!

////Class are mutatable:
//class Zoo {
//    var animals: [String] = ["Zebra", "Lion", "Seal"]
//}
//
//Zoo().animals.append("Konstantin") // <-- works like a charm!




//
///// GENERICS - don't care type - "type parameters"(C)
//// Array's declaration looks something like this:
//
//struct Array<Element> {
//    ....
//    func append(_ element: Element) { ... }
//}
//
//// Array's implementation of append knows *nothing* about the argument.
//// Element - is just a placeholder (not a known class or struct)



//var a = Array<Int>()
//a.append(5)
//a.append(7)
//
//// When someone uses Array, that's when Element get determined (to Int in this case)




//// Also the same struct or class might have multiple generic types defined:
//// struct Card<Content, Regulation> { .... }
//



//
//protocol SuperHeroProtocol {
//    var skillPoints: Int { get set }
//}
//
//class HeroConverter<Hero: SuperHeroProtocol> {
//    func exchangeSkills( hero1: inout Hero, hero2: inout Hero) {
//        let oldValueHero1 = hero1.skillPoints
//        let oldValueHero2 = hero2.skillPoints
//        hero1.skillPoints = oldValueHero2
//        hero2.skillPoints = oldValueHero1
//    }
//}
//



////Extensions
//
//extension String {
//    func suffledAndReversed() {
//        return self.shuffled().reversed()
//    }
//}
//
//extension Collection where Indices.Iterator.Element == Index {
//    subscript (safe index: Index) -> Iterator.Element? {
//        return indices.contains(index) ? self[index] : nil
//    }
//}



//extension SomeType: SomeProtocol, AnotherProtocol {
//    // new functionality to add to SomeType goes here
//    ...
//    // implementation of protocol requirements goes here
//}




















//struct Cardify: ViewModifier {
//    var isFaceUp: Bool
//    func body(content: Content) -> some View {
//        ZStack {
//            if isFaceUp {
//                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
//                RoundedRectangle(cornerRadius: 10.0).stroke()
//                content
//            } else {
//                RoundedRectangle(cornerRadius: 10.0)
//            }
//        }
//    }
//}

