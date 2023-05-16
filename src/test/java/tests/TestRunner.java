package tests;

import org.junit.runner.RunWith;

import com.intuit.karate.junit4.Karate;

@RunWith(Karate.class) //class declaration 
public class TestRunner {

	public static void before() {
		System.setProperty("karate.env","qa");
	}
}
