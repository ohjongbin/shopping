package com.study.cart;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.contents.ContentsDTO;
import com.study.member.MemberMapper;

@Service("com.study.cart.CartServiceImpl")
public class CartServiceImpl implements CartService {
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public int total(Map map) {
		// TODO Auto-generated method stub
		return mapper.total(map);
	}

	@Override
	public List<ContentsDTO> list(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	

}
