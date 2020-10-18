package co.kr.playbowling.vo;

public class UserSessionVO {
	
	private String UserId;
	private String UserPw;
	
	
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	public String getUserPw() {
		return UserPw;
	}
	public void setUserPw(String userPw) {
		UserPw = userPw;
	}
	
	@Override
	public String toString() {
		return "UseSessionVO [UserId=" + UserId + ", UserPw=" + UserPw + "]";
	}

}
