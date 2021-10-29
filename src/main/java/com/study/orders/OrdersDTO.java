package com.study.orders;
 
import lombok.Data;
 
@Data
public class OrdersDTO {
  private int   orderno              ; //기본키
  private int   cartno               ; //외래키 
  private int   contentsno           ; //외래키 -> cart 
  private String odate               ;
  private int   quantity             ;
  private int   total                ;
  private String payment             ;
  private String id                  ;
  private String mname               ;
  private String pname               ;
  
}