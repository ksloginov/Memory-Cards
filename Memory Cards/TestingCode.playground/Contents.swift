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
//
//var a = Array<Int>()
//a.append(5)
//a.append(7)
//
//// When someone uses Array, that's when Element get determined (to Int in this case)
//
//// Also the same struct or class might have multiple generic types defined:
//// struct Card<Content, Regulation> { .... }
//
