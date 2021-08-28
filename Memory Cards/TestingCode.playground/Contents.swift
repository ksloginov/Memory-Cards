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
