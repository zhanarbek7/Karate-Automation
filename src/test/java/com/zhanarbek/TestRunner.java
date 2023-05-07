package com.zhanarbek;

import com.intuit.karate.junit5.Karate;


public class TestRunner {

    @Karate.Test
    Karate test(){
        System.setProperty("karate.env","qa");
        return Karate.run().relativeTo(getClass());
    }
}
