package kr.co.inception;

import java.awt.Image;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;

public class usinginception{
   static inception_label_image ILI = new inception_label_image();
   
   public static void main(String[] args) {
      String img_src = "bi3.jpg";
      
      // 여기서부터
      String File_path = "D:/inception_image/"+img_src;
      Image image = null;
      try{
         File sourceimage = new File(File_path);
         image = ImageIO.read(sourceimage);
      }catch(IOException e){
         e.printStackTrace();
      }
      JFrame frame = new JFrame();
      frame.setSize(1000,1000);
      JLabel label = new JLabel(new ImageIcon(image));
      frame.add(label);
//      frame.setVisible(true);
      //여기까지는 이미지출력이므로 삭제해도 무방
      
      System.out.println(img_src+"의 이미지를 분석 중입니다");
      System.out.println();
      String result[] = ILI.result(img_src);
      for (int i = 0; i < result.length; i++){
         String cutresult = result[i];
//         int index = cutresult.indexOf("(");
//         System.out.println(result[i].substring(0,index));
         System.out.println(result[i]);
      }
      System.out.println("분석완료");
      
   
      
      
      
   }



}

