package kr.or.ddit.security;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import kr.or.ddit.mapper.LoginMapper;
import kr.or.ddit.vo.CustomUser;
import kr.or.ddit.vo.DDITMemberVO;

public class CustomUserDetailsService implements UserDetailsService{

	private static final Logger log = LoggerFactory.getLogger(CustomUserDetailsService.class);
	
	@Inject
	private BCryptPasswordEncoder pe;
	
	@Inject
	private LoginMapper loginMapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		String password = "pwd1";
		// 인코딩된 암호화 비밀번호를 알아봅니다. 
		log.info("### 인코딩된 비밀번호를 확인합니다 #### : " + pe.encode(password));
		log.info("### 인코딩된 비밀번호를 확인합니다 #### : " + pe.encode(password));
		log.info("### 인코딩된 비밀번호를 확인합니다 #### : " + pe.encode(password));
		log.info("### 인코딩된 비밀번호를 확인합니다 #### : " + pe.encode(password));
		log.info("### 인코딩된 비밀번호를 확인합니다 #### : " + pe.encode(password));
		log.info("### 인코딩된 비밀번호를 확인합니다 #### : " + pe.encode(password));
		
		log.info("load User by username : " + username);
		
		// userName은 사용자명이 아니라 사용자 아이디를 의미한다.
		// member를 가지고 최종 리턴해서 넘겨야할 UserDetails를 만드어준다.
		DDITMemberVO member;
		
		try {			
			member = loginMapper.readByUserId(username);
			log.info("query by member mapper : " + member);
			return member == null ? null : new CustomUser(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
}
