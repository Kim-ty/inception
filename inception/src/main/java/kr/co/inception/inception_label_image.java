package kr.co.inception;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class inception_label_image {
   String img_src = "";

   public String[] result(String img_src) {
      
      String s;
      String[] result = new String[5];
      int i = 0;
      try {
         /*
          * �ڹ� 1.4 ���Ͽ����� �̷��� Runtime oRuntime = Runtime.getRuntime(); Process
          * oProcess = oRuntime.exec("cmd /c dir /?");
          */

         // �ڹ� 1.5 �̻󿡼��� �̷��� 1�ٷ�
         Process oProcess = new ProcessBuilder("cmd", "/C",
               "activate tensorflow & python D:/inception_image/label_image.py --image D:/inception_image/"
                     + img_src).start();

         // �ܺ� ���α׷� ��� �б�
         BufferedReader stdOut = new BufferedReader(new InputStreamReader(oProcess.getInputStream()));
         BufferedReader stdError = new BufferedReader(new InputStreamReader(oProcess.getErrorStream()));

         // "ǥ�� ���"�� "ǥ�� ���� ���"�� ���
         while ((s = stdOut.readLine()) != null) {
//            System.out.println(s);
            result[i] = s;
            i += 1;
            System.out.println(s);
         }
//         System.out.println(result[0]);
//         System.out.print(Arrays.deepToString(result));
//         while ((s = stdError.readLine()) != null)
            // System.err.println(s);

            // �ܺ� ���α׷� ��ȯ�� ��� (�� �κ��� �ʼ��� �ƴ�)
            // System.out.println("Exit Code: " + oProcess.exitValue());
//            System.exit(oProcess.exitValue()); // �ܺ� ���α׷��� ��ȯ����, �� �ڹ� ���α׷�
                                       // ��ü�� ��ȯ������ ���
//         System.out.println(oProcess.exitValue());
      } catch (IOException e) { // ���� ó��
         System.err.println("����! �ܺ� ��� ���࿡ �����߽��ϴ�.\n" + e.getMessage());
         System.exit(-1);
      }
      return result;
   }
}