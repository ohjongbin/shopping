package com.study.shop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication // 스프링부트의 자동설정, 스프링 bean 읽기와 생성을 자동으로 행한다. 반드시 프로젝트 최상단에 위치하여야한다.
@ComponentScan(basePackages= {"com.study.*"}) //class 들을 자동으로 scan 하여 bean으로 등록해주는 역활.
public class ShoppingApplication {

	public static void main(String[] args) {
		SpringApplication.run(ShoppingApplication.class, args);
	}

}
