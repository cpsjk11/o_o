package com.api.test;



import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;



@Controller
public class CompanyRegistrationNumberController {

	
	@RequestMapping("/companyRegistrarion")
	@ResponseBody
	public Map<String, String> companyRegistrarion(String registrarion) throws IOException {
		Map<String, String> map = new HashMap<String, String>();
		
		registrarion = (registrarion == null) ? "0000000000" : registrarion;
		
		OkHttpClient client = new OkHttpClient().newBuilder()
				  .build();
				MediaType mediaType = MediaType.parse("application/json");
				RequestBody body = RequestBody.create(mediaType, "{\r\n  \"b_no\": [\r\n    \""+registrarion+"\"\r\n  ]\r\n}");
				Request request = new Request.Builder()
				  .url("https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=mMsXNDKYfvrBJASTQgkoctnEE6ABoM7%2B2OJDyXWxaxp7w%2FtD3g7INiGmhcupZKIjK0msBHO1lpyJhLmASldjHQ%3D%3D")
				  .method("POST", body)
				  .addHeader("Content-Type", "application/json")
				  .build();
				Response response = client.newCall(request).execute();
				map.put("result", (response.toString().equals("부가가치세 일반과세자")? "1" : "2"));
				
		return map;
	}
}
