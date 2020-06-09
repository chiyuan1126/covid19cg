package edu.columbia.wlab.covid19cg.test;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int a=0,b=0,c=0,d=0;
		boolean flag=true;
		//System.out.println(a%2);
		Scanner sc=new Scanner(System.in);
		while(true){
		a=sc.nextInt();
		b=sc.nextInt();
		c=sc.nextInt();
		d=sc.nextInt();
		flag=true;
		if((a+c)%2==0){
			if((b+d)%2==0){
				if((d-b)%2==0){
					System.out.println((a+c)/2+" "+(b+d)/2+" "+(d-b)/2);
					flag=false;
				}
			}
		}
		if(flag==true)
		System.out.println("No");
	}
				
	}

}
