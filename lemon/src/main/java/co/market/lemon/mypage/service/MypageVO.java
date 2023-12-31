package co.market.lemon.mypage.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MypageVO {
	//거래 내역
	private String memberName;
	private int productId;
	private String productWriter;
	private String productCategory;
	private String productTitle;
	private String productState;
	private Date productWdate;
	private String productInfo;
	private String productImgDir1;
	private String productImg1;
	
	//찜한 상품
	private String memberId;
	
	
	
	//댓글수
	private int productReply;

	


}
