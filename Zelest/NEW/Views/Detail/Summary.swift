//
//  Summary.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 3/9/20.
//

import SwiftUI

struct Summary: View {

        @Binding var selected : HoroscopeModel
        @Binding var show : Bool
        var animation : Namespace.ID

    var body: some View {
        ScrollView {
            HStack(spacing: 24.0) {

                VStack {

                    Text("Compatibility")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)

                    Image(selected.image ?? "")
                        .resizable()
                        .frame(width: 69, height: 70, alignment: .center)

                    Text(selected.name ?? "")
                        .font(.footnote)
                        .fontWeight(.light)
                        .foregroundColor(.secondary)

                    Spacer()
                }

                VStack(spacing: 12.0) {

                    VStack {

                        Text("Color")
                            .font(.footnote)
                            .fontWeight(.light)
                            .foregroundColor(.primary)

                        Circle()
                            .frame(width: 30, height: 30, alignment: .center)
                    }

                    VStack {

                        Text("Lucky time")
                            .font(.footnote)
                            .fontWeight(.light)
                            .foregroundColor(.primary)

                        Text(selected.luckyTime ?? "7 AM")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundColor(.primary)
                    }

                    Spacer()
                }

                VStack(spacing: 32.0) {

                    VStack {

                        Text("Mood")
                            .font(.footnote)
                            .fontWeight(.light)
                            .foregroundColor(.primary)

                        Text(selected.mood ?? "Relaxed")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundColor(.primary)
                    }



                    VStack {

                        Text("Lucky number")
                            .font(.footnote)
                            .fontWeight(.light)
                            .foregroundColor(.primary)

                        Text(selected.luckyTime ?? "64")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundColor(.primary)
                    }

                    Spacer()
                }
            }


            VStack(alignment: .leading, spacing: 12.0) {

                Text("Description")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)



                Text(selected.description ?? "")
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(.primary)


                Spacer()
            }
            .padding(.horizontal, 24.0)

        }
    }
}
//
//struct Summary_Previews: PreviewProvider {
//    static var previews: some View {
//        Summary()
//    }
//}
