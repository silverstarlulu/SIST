package day0111;

import java.awt.Color;
import java.awt.Container;

import javax.swing.JFrame;

public class SwingGibon_01 extends JFrame{
	
	Container cp;
	
	public SwingGibon_01(String title) {
		super(title);
		
		//시작위치, 너비, 높이
		this.setBounds(500, 100, 300, 500);
		
		//색상
		cp=this.getContentPane();
		cp.setBackground(new Color(255,255,200));
		
		//프레임 보이게 하기
		this.setVisible(true);
	}
	
	public static void main(String[] args) {
		
		new SwingGibon_01("스윙기본");
	}

}
