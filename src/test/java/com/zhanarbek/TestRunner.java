package com.zhanarbek;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import cucumber.api.CucumberOptions;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@CucumberOptions(features = "src/test/java/com/zhanarbek/features")
public class TestRunner {
    @BeforeClass
    public static void before(){
        System.setProperty("karate.env","qa");
    }
}
