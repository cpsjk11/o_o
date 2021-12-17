package api.action;

import api.vo.Search2;

public class RecommendedSchool {
	// 추천 학원을 지정하자!
	public static Search2[] getSchool(Search2[] s2) {
		
		if(s2 == null) 
			return s2;
		
		// 추천 학원 목록 가져오기
		for(int j=0; j<s2.length; j++) {
			
			String srchTrprId = s2[j].getSrchTrprId();
			String srchTrps2egr = s2[j].getSrchTrprDegr();
			String srchTraProcessNm = s2[j].getSrchTraProcessNm();
			String addr = s2[j].getAddr();
			String subject = s2[j].getSubject();
			String title = s2[j].getTitle();
			String imageCode = s2[j].getImageCode();
			
			Search2 svo = new Search2(srchTrprId, srchTrps2egr, subject, srchTraProcessNm, addr, title, imageCode);
			
			s2[j] = svo; 
			
		}
		
		return s2;
	}
}
