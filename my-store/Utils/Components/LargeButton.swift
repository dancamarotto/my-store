import SwiftUI

struct LargeButton: ViewModifier {
    enum ButtonStyle {
        case light, dark
        
        var foregroundColor: Color {
            switch self {
            case .light:
                return .black
            case .dark:
                return .white
            }
        }
        
        var backgroundColor: Color {
            switch self {
            case .light:
                return .clear
            case .dark:
                return .black
            }
        }
    }
    
    var style: ButtonStyle
    
    func body(content: Content) -> some View {
        content
            .font(.avenirNext(size: 18))
            .padding()
            .frame(maxWidth: .infinity)
            .foregroundColor(style.foregroundColor)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black, lineWidth: 1)
            )
            .background(style.backgroundColor)
            .cornerRadius(10)
    }
}

struct LargeButton_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 10) {
            Text("Button One")
                .style(.light)
            Text("Button Two")
                .style(.dark)
        }
        .padding([.leading, .trailing])
    }
}

extension Text {
    func style(_ style: LargeButton.ButtonStyle) -> some View {
        modifier(LargeButton(style: style))
    }
}
