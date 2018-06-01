/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nm.bean;
import java.time.format.DateTimeFormatter;
import java.time.LocalDateTime;
/**
 *
 * @author MAHE
 */
public class theDate {
    public String getDate(){
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
        LocalDateTime now = LocalDateTime.now();
        return dtf.format(now);
    }
    
}
