package kr.or.ddit.vo;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class Member {
	private String userId = "a001";
	private String userName = "hongkd";
	private String password = "1234";
	private int coin = 100;
	@DateTimeFormat(pattern = "yyyyMMdd") // registerByGet02의 요청 파라미터 패턴 설정
	private Date dateOfBirth;
	private Address address; // member 필드로 address객체 선언했을 때 데이터 바인딩 되는지 확인 -> name을 address.address의 필드 로 설정해야 가능
	private List<Card> cardList;
	private String email;
	private String gender;
	private String hobby;
	private String[] hobbyArray;
	private boolean foreigner;
	private String nationality;
	private String developer;
	private String cars;
	private String[] carArray;
	private List<String> carList;
	private List<String> hobbyList;
	private String introduction;
	private String birthDay;
}
