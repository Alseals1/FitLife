import SwiftUI

struct SelectionButton: View {
    @Binding var isSelected: Bool
    var goals: String
    
    var body: some View {
        Button(action: {
            isSelected.toggle()
        }, label: {
            HStack {
                ZStack {
                    isSelected ? Color.buttonorange : Color.buttongrey
                    Image(systemName: "checkmark")
                        .font(.system(size: 8))
                        .foregroundColor(isSelected ? .white : .gray)
                        .frame(width: 8, height: 6)
                }
                .clipShape(Circle())
                .frame(width: 20, height: 20)
                Text(goals)
                    .font(.system(size: 14))
                    .foregroundColor(.buttongrey)
                    .padding(.leading, 20)
            }
        })
    }
}

struct SelectionButton_Previews: PreviewProvider {
    static var previews: some View {
        SelectionButton(isSelected: .constant(false), goals: "Manage Weight")
    }
}
