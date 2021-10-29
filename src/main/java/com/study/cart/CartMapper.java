package com.study.cart;

import java.util.List;
import java.util.Map;

import com.study.contents.ContentsDTO;
import com.study.member.MemberDTO;
import com.study.notice.NoticeDTO;

public interface CartMapper {
	
	int total(Map map);
	List<ContentsDTO> list(Map map);
}
