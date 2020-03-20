//
//  ContentView.swift
//  HW_00657041
//
//  Created by User15 on 2020/3/20.
//  Copyright © 2020 test. All rights reserved.
//
let color_line = UIColor(red:220,green:0,blue:220,alpha:255)
import SwiftUI
struct Ear:Shape {
    func path(in rect:CGRect) -> Path{
        Path{ (path) in
            path.move(to :CGPoint(x:rect.width,y:0))
            path.addQuadCurve(to: CGPoint(x:0, y:rect.height),
                              control: CGPoint(x: rect.width/5, y: rect.height/5))
            path.addQuadCurve(to: CGPoint(x:rect.width, y:0), control: CGPoint(x: rect.width*17/20, y: rect.height*13/14))
                path.closeSubpath()
            
        }
    }
}
struct Ball:Shape {
    func path(in rect:CGRect) -> Path{
        Path{ (path) in
            path.move(to :CGPoint(x:rect.width,y:0))
            path.addQuadCurve(to: CGPoint(x:0, y:rect.height),
                              control: CGPoint(x: rect.width/5, y: rect.height/5))
            path.addQuadCurve(to: CGPoint(x:rect.width, y:0), control: CGPoint(x: rect.width*17/20, y: rect.height*13/14))
                path.closeSubpath()
            
        }
    }
}
struct EarLine:Shape {
    func path(in rect:CGRect) -> Path{
        Path{ (path) in
            path.move(to :CGPoint(x:rect.width,y:0))
            path.addQuadCurve(to: CGPoint(x:0, y:rect.height),
                              control: CGPoint(x: rect.width/5, y: rect.height/5))
            path.addQuadCurve(to: CGPoint(x:rect.width, y:0), control: CGPoint(x: rect.width*17/20, y: rect.height*13/14))
                path.closeSubpath()
            
        }
    }
}
let font = UIFont(name: "CourierNewPS-BoldMT", size:20)
struct ContentView: View {
    var body: some View {
        ZStack{
            Image("bbb")
                .resizable()
                .scaledToFill()
                .frame(minWidth: CGFloat(0),maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            Group{ //pika_ear
                EarView()
                .rotationEffect(.degrees(270))
                .position(x:100,y:310)
                EarView()
                .rotationEffect(.degrees(300))
                .position(x:325,y:290)
                Path{(path) in //gray_ear
                    path.move(to: CGPoint(x: 20, y: 492))
                    path.addQuadCurve(to: CGPoint(x: 100, y: 466), control: CGPoint(x: 56, y: 490))
                    path.addQuadCurve(to: CGPoint(x: 68, y: 409), control: CGPoint(x: 70, y: 420))
                    path.addQuadCurve(to: CGPoint(x: 11, y: 490), control: CGPoint(x: 39, y: 428))
                }.fill(Color(red:88/255,green:79/255,blue:83/255)).position(x: 185, y: 455).rotationEffect(.degrees(70))
                Path{(path) in //gray_ear
                    path.move(to: CGPoint(x: 20, y: 492))
                    path.addQuadCurve(to: CGPoint(x: 100, y: 466), control: CGPoint(x: 56, y: 490))
                    path.addQuadCurve(to: CGPoint(x: 68, y: 409), control: CGPoint(x: 70, y: 420))
                    path.addQuadCurve(to: CGPoint(x: 11, y: 490), control: CGPoint(x: 39, y: 428))
                }.fill(Color(red:88/255,green:79/255,blue:83/255)).position(x: 173, y: 296).rotationEffect(.degrees(100))
                EarLineView()
                .rotationEffect(.degrees(270))
                .position(x:100,y:310)
                EarLineView()
                .rotationEffect(.degrees(300))
                .position(x:325,y:290)
            }
            Group{ //pika_face
                Path{ (path) in
                    path.move(to: CGPoint(x: 178, y: 268))
                    path.addQuadCurve(to: CGPoint(x: 360, y: 268), control: CGPoint(x: 265, y: 216))
                    path.addQuadCurve(to: CGPoint(x: 406, y: 396), control: CGPoint(x: 421, y: 310))
                    path.addQuadCurve(to: CGPoint(x: 425, y: 455), control: CGPoint(x: 424, y: 426))
                    path.addQuadCurve(to: CGPoint(x: 407, y: 499), control: CGPoint(x: 434, y: 486))
                    path.addQuadCurve(to: CGPoint(x: 126, y: 496), control: CGPoint(x: 277, y: 540))
                    path.addQuadCurve(to: CGPoint(x: 110, y: 465), control: CGPoint(x: 103, y: 486))
                    path.addQuadCurve(to: CGPoint(x: 136, y: 395), control: CGPoint(x: 120, y: 424))
                    path.addQuadCurve(to: CGPoint(x: 178, y: 268), control: CGPoint(x: 122, y: 304))

                    }.fill(Color(red:255/255,green:240/255,blue:111/255))
                Path{(path) in //redface
                    path.move(to: CGPoint(x: 132, y: 411))
                    path.addQuadCurve(to: CGPoint(x: 170, y: 437), control: CGPoint(x: 159, y: 411))
                    path.addQuadCurve(to: CGPoint(x: 167, y: 450), control: CGPoint(x: 172, y: 445))
                    path.addQuadCurve(to: CGPoint(x: 136, y: 465), control: CGPoint(x: 157, y: 462))
                    path.addQuadCurve(to: CGPoint(x: 113, y: 460), control: CGPoint(x: 121, y: 464))
                    }.fill(Color.red).position(x: 206, y: 399)
                Path{(path) in //redface_right
                    path.move(to: CGPoint(x: 132, y: 411))
                    path.addQuadCurve(to: CGPoint(x: 170, y: 437), control: CGPoint(x: 159, y: 411))
                    path.addQuadCurve(to: CGPoint(x: 167, y: 450), control: CGPoint(x: 172, y: 445))
                    path.addQuadCurve(to: CGPoint(x: 136, y: 465), control: CGPoint(x: 157, y: 462))
                    path.addQuadCurve(to: CGPoint(x: 113, y: 460), control: CGPoint(x: 121, y: 464))
                    }.fill(Color.red).rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0)).position(x: 333, y: 399)
                Path{(path) in //redface_right_line
                    path.move(to: CGPoint(x: 132, y: 411))
                    path.addQuadCurve(to: CGPoint(x: 170, y: 437), control: CGPoint(x: 159, y: 411))
                    path.addQuadCurve(to: CGPoint(x: 167, y: 450), control: CGPoint(x: 172, y: 445))
                    path.addQuadCurve(to: CGPoint(x: 136, y: 465), control: CGPoint(x: 157, y: 462))
                    path.addQuadCurve(to: CGPoint(x: 113, y: 460), control: CGPoint(x: 121, y: 464))
                    }.stroke(Color.black,lineWidth: 4).rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0)).position(x: 333, y: 399)
                Path{(path) in //redface_line
                    path.move(to: CGPoint(x: 132, y: 411))
                    path.addQuadCurve(to: CGPoint(x: 170, y: 437), control: CGPoint(x: 159, y: 411))
                    path.addQuadCurve(to: CGPoint(x: 167, y: 450), control: CGPoint(x: 172, y: 445))
                    path.addQuadCurve(to: CGPoint(x: 136, y: 465), control: CGPoint(x: 157, y: 462))
                    path.addQuadCurve(to: CGPoint(x: 113, y: 460), control: CGPoint(x: 121, y: 464))
                    }.stroke(Color.black,lineWidth: 4).position(x: 206, y: 399)
                }.position(x:182,y:445)
            Group{ //pika_face_line
                Path{ (path) in
                    path.move(to: CGPoint(x: 178, y: 268))
                    path.addQuadCurve(to: CGPoint(x: 360, y: 268), control: CGPoint(x: 265, y: 216))
                    path.addQuadCurve(to: CGPoint(x: 406, y: 396), control: CGPoint(x: 421, y: 310))
                    }.stroke(Color(red: 69/255, green: 31/255, blue: 20/255), lineWidth: 4)
                Path{(path) in
                    path.move(to: CGPoint(x: 406, y: 396))
                    path.addQuadCurve(to: CGPoint(x: 425, y: 455), control: CGPoint(x: 424, y: 426))
                    path.addQuadCurve(to: CGPoint(x: 407, y: 499), control: CGPoint(x: 434, y: 486))
                    path.addQuadCurve(to: CGPoint(x: 126, y: 496), control: CGPoint(x: 277, y: 540))
                    path.addQuadCurve(to: CGPoint(x: 110, y: 465), control: CGPoint(x: 103, y: 486))
                    path.addQuadCurve(to: CGPoint(x: 136, y: 395), control: CGPoint(x: 120, y: 424))
                    path.addQuadCurve(to: CGPoint(x: 178, y: 268), control: CGPoint(x: 122, y: 304))
                    }.stroke(Color(red: 69/255, green: 31/255, blue: 20/255), lineWidth: 4)
                }.position(x:182,y:445)
            Group{ //eye
                Circle()
                    .frame(width:50,height:40)
                    .offset(x:-30,y:-10)
                Circle()
                    .frame(width:40,height:40)
                    .offset(x:100,y:-10)
                Circle()
                    .frame(width:17,height:17)
                    .offset(x:105,y:-5)
                    .foregroundColor(Color.white)
                Circle()
                    .frame(width:17,height:17)
                    .offset(x:-25,y:-5)
                    .foregroundColor(Color.white)
                Path{(path) in //nose
                    path.move(to: CGPoint(x: 262, y: 412))
                    path.addQuadCurve(to: CGPoint(x: 272, y: 412), control: CGPoint(x: 267, y: 410))
                    path.addQuadCurve(to: CGPoint(x: 267, y: 417), control: CGPoint(x: 274, y: 415))
                    path.addQuadCurve(to: CGPoint(x: 262, y: 412), control: CGPoint(x: 261, y: 415))
                    }.position(x: 182, y:425)
                Path{(path) in //red_mouth
                    path.move(to: CGPoint(x: 245, y: 454))
                    path.addQuadCurve(to: CGPoint(x: 274, y: 478), control: CGPoint(x: 250, y: 470))
                    path.addQuadCurve(to: CGPoint(x: 298, y: 452), control: CGPoint(x: 294, y: 468))
                    path.addQuadCurve(to: CGPoint(x: 272, y: 440), control: CGPoint(x: 279, y: 449))
                    path.addQuadCurve(to: CGPoint(x: 245, y: 454), control: CGPoint(x: 262, y: 452))
                    }.fill(Color.red).position(x: 180, y: 427)
                }
            Group{
                Path{(path) in //W_mouth
                      path.move(to: CGPoint(x: 203, y: 431))
                      path.addQuadCurve(to: CGPoint(x: 272, y: 422), control: CGPoint(x: 252, y: 450))
                      path.addQuadCurve(to: CGPoint(x: 355, y: 432), control: CGPoint(x: 307, y: 450))
                      }.stroke(Color.black, lineWidth: 3).position(x: 179, y: 444)
                Path{(path) in //V_mouth
path.move(to: CGPoint(x: 245, y: 454))
                    path.addQuadCurve(to: CGPoint(x: 274, y: 478), control: CGPoint(x: 250, y: 470))
                    path.addQuadCurve(to: CGPoint(x: 298, y: 452), control: CGPoint(x: 294, y: 468))
                    }.stroke(Color.black, lineWidth: 3).position(x: 179, y: 427)
                Text("PIKACHU")
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.purple)
                .padding()
                .overlay(
                Capsule(style: .continuous)
                    .stroke(Color.purple, style: StrokeStyle(lineWidth: 5, dash: [10]))
                )
                    .offset(x:10,y:220)
            }
            Group{
                Image("pokemon")
                .resizable()
                .frame(width: 100, height: 100)
                .offset(x:-3,y:-305)
                Image("pokemon")
                .resizable()
                .frame(width: 100, height: 100)
                .offset(x:110,y:-305)
                Image("pokemon")
                .resizable()
                .frame(width: 100, height: 100)
                .offset(x:110,y:345)
                Image("pokemon")
                .resizable()
                .frame(width: 100, height: 100)
                .offset(x:-3,y:345)
                Image("pokemon")
                .resizable()
                .frame(width: 100, height: 100)
                .offset(x:-110,y:-305)
                Image("pokemon")
                .resizable()
                .frame(width: 100, height: 100)
                .offset(x:-110,y:345)
                
                
            }
            
        }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct EarView: View {
    var body: some View {
        Ear()
            .fill(Color(red:255/255,green:240/255,blue:111/255))
            .frame(width:130,height: 180)
            
    }
}
}
struct EarLineView: View {
    var body: some View {
        EarLine()
            .stroke(Color.black, lineWidth: 4)
        .frame(width:130,height: 180)
        
    }
}
