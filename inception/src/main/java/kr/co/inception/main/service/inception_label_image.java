package kr.co.inception.main.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

import org.springframework.stereotype.Service;


@Service
public class inception_label_image {
   String img_src = "";

   public String[] result(String img_src) {
      
      String s;
      String[] result = new String[5];
      int i = 0;
      try {
         Process oProcess = new ProcessBuilder("cmd", "/C",
               "activate tensorflow & python C:/inception_image/label_image.py --image C:/uploadimage/"
                     + img_src).start();
         BufferedReader stdOut = new BufferedReader(new InputStreamReader(oProcess.getInputStream()));
         while ((s = stdOut.readLine()) != null) {
            
            result[i] = s;
            i += 1;
         }
      } catch (IOException e) { 
         System.err.println("����! �ܺ� ��� ���࿡ �����߽��ϴ�.\n" + e.getMessage());
         System.exit(-1);
      }
      return result;
   }
}