/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Shreya Seth
 */
import java.io.*;
import java.util.*;
public class abc {
    public static void main(String[]args)throws IOException
    {
        BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
        int n=Integer.parseInt(br.readLine());
        int num[][]=new int[n][2];
        for(int x=0;x<n;x++)
        {
            StringTokenizer st= new StringTokenizer(br.readLine());
            String str=st.toString();
            num[x][0]= Integer.parseInt(str);
            str=st.nextToken();
            num[x][1]= Integer.parseInt(str);
        }
        
        
    }
}
