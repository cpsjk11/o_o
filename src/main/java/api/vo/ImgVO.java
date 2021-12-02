package api.vo;

import org.springframework.web.multipart.MultipartFile;

public class ImgVO {
	
	private MultipartFile s_file;// 전달되는 파라미터명과 변수명을 일치시켜야 한다.

	public MultipartFile getS_file() {
		return s_file;
	}

	public void setS_file(MultipartFile s_file) {
		this.s_file = s_file;
	}
}
