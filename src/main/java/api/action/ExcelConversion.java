package api.action;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.ClientAnchor;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Drawing;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Picture;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.util.IOUtils;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import api.dao.RdDAO;
import api.dao.UmemDAO;
import api.u_member.vo.UmemVO;
import api.vo.Search2;

@Service
public class ExcelConversion implements ExcelDown {

	@Autowired
	private UmemDAO u_dao;
	
	@Autowired
	private RdDAO r_dao;
	
	@Override
	public void getList(String sheets,UmemVO[] uvo,String filename, HttpServletResponse response) {
		List<String> list = new ArrayList<String>();
		// 활용 팁 : service dao 를 통해 입력받은 2021-05-01 ~ 2021-05-30 일자로
		//        데이터 조회를 후 list에 담았다고 가정하자.
		
		
		
		
		
		
		System.out.println(list.toString());
		Workbook wb = new HSSFWorkbook(); // 엑셀파일 객체 생성
		Sheet sheet = wb.createSheet(sheets); //시트 생성 ( 첫번째 시트이며, 시트명은 테스트 시트 )
		
		CellStyle style = wb.createCellStyle(); // 셀 스타일 생성
		Font font = wb.createFont(); // 폰트 스타일 생성
		
        font.setBoldweight(Font.BOLDWEIGHT_BOLD); // 글자 진하게
        font.setFontHeight((short)(16*18)); // 글자 크기
        font.setFontName("맑은 고딕"); // 글씨체
        
        // 자바의 배열처럼 첫번째 인덱스가 0 부터 시작한다.  첫번째는 0 , 두번째는 1 , 세번째는 2
        Row titleRow = sheet.createRow(0); // 타이틀행을 생성한다. 첫번째줄이기때문에 createRow(0)
        int titleColNum = 0; // 첫번째 열이기 때문에 0 
		Cell titleCell = titleRow.createCell(titleColNum); // 첫번째행의 첫번째열을 지정한다. 
		titleCell.setCellValue("안녕하세요 \n 테스트입니다."); // setCellValue 셀에 값넣기.
		titleRow.setHeight((short)920); // Row에서 setHeight를 하면 행 높이가 조정된다. 
		sheet.addMergedRegion(new CellRangeAddress(0,0,0,9)); // 셀 병합  첫번째줄~아홉번째 열까지 병합 
		// new CellRangeAddress(시작 row, 끝 row, 시작 col, 끝 col) 

		style.setWrapText(true); //문자열을 입력할때 \n 같은 개행을 인식해준다.
		style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER); // 수직 가운데 정렬
		style.setAlignment(CellStyle.ALIGN_CENTER); // 수평 가운데 정렬
		style.setFont(font); // 스타일에 font 스타일 적용하기
		titleCell.setCellStyle(style); // 정리한 스타일들을 titleCell에 적용해주자 !
		
		//입력받은 날짜 출력하기
		//Row dayRow = sheet.createRow(1);
		//int dayCol = 0;
		//Cell dayCell = dayRow.createCell(dayCol); // 두번째줄의 첫번째열을 셀로 지정. 즉 두번째줄 첫째칸
		//dayCell.setCellValue("조회날짜 : " + day1 + " ~ " + day2); // 두번째 행은 입력받은 날짜를 출력
		

		CellStyle dataStyle = wb.createCellStyle(); // 데이터스타일은 테두리를 만들어보자
		dataStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER); // 수직 가운데 정렬
		dataStyle.setAlignment(CellStyle.ALIGN_CENTER); // 수평 가운데 정렬
		dataStyle.setBorderRight(HSSFCellStyle.BORDER_THIN); //오른쪽 테두리
		dataStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN); //왼쪽 테두리
		dataStyle.setBorderTop(HSSFCellStyle.BORDER_THIN); // 상단 테두리
		dataStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN); // 하단 테두리
		
		CellStyle dataline = wb.createCellStyle(); 
		dataline.setAlignment(CellStyle.ALIGN_LEFT);
		dataline.setBorderRight(HSSFCellStyle.BORDER_THIN); //오른쪽 테두리
		dataline.setBorderLeft(HSSFCellStyle.BORDER_THIN); //왼쪽 테두리
		dataline.setBorderTop(HSSFCellStyle.BORDER_THIN); // 상단 테두리
		dataline.setBorderBottom(HSSFCellStyle.BORDER_THIN); // 하단 테두리
		
		
		
		
		
		//데이터 삽입하기
		int rowNum = 2; // 두번째줄이 헤더니까 그 밑에서부터 데이터 삽입
		int cellNum = 0;
		Row dataRow = null; // for문을 돌려주기위해.
		Cell dataCell = null;
		
		Map<String, String> map = null;
		
			map = new HashMap<String, String>();
			
			//헤더 만들기
			Row headerRow = sheet.createRow(1); // 네번째줄 생성
			int headerCol = 0;
			Cell headerCell = headerRow.createCell(headerCol++);
			headerCell.setCellValue("순번");
			dataStyle.setVerticalAlignment(HSSFCellStyle.ALIGN_RIGHT);
			headerCell.setCellStyle(dataStyle);
			
			headerCell = headerRow.createCell(headerCol++);
			headerCell.setCellValue("아이디");
			dataStyle.setVerticalAlignment(HSSFCellStyle.ALIGN_RIGHT);
			headerCell.setCellStyle(dataStyle);
			
			headerCell = headerRow.createCell(headerCol++);
			headerCell.setCellValue("이름");
			dataStyle.setVerticalAlignment(HSSFCellStyle.ALIGN_RIGHT);
			headerCell.setCellStyle(dataStyle);
			
			headerCell = headerRow.createCell(headerCol++);
			headerCell.setCellValue("주소");
			dataStyle.setVerticalAlignment(HSSFCellStyle.ALIGN_RIGHT);
			headerCell.setCellStyle(dataStyle);
			
			headerCell = headerRow.createCell(headerCol++);
			headerCell.setCellValue("이메일");
			dataStyle.setVerticalAlignment(HSSFCellStyle.ALIGN_RIGHT);
			headerCell.setCellStyle(dataStyle);
			
			headerCell = headerRow.createCell(headerCol++);
			headerCell.setCellValue("상태");
			dataStyle.setVerticalAlignment(HSSFCellStyle.ALIGN_RIGHT);
			headerCell.setCellStyle(dataStyle);
			
			headerCell = headerRow.createCell(headerCol++);
			headerCell.setCellValue("가입유형");
			dataStyle.setVerticalAlignment(HSSFCellStyle.ALIGN_RIGHT);
			headerCell.setCellStyle(dataStyle);
			// 추천학원 목록 엑셀파일 다운로드 형식이다.
		
			for(int i = 0; i<uvo.length; i++) {
				map.put("id"+i, uvo[i].getId());
				map.put("name"+i, uvo[i].getName());
				map.put("addr"+i, uvo[i].getAddr());
				map.put("email"+i, uvo[i].getEmail());
				map.put("stat"+i, uvo[i].getStat());
				map.put("member"+i, uvo[i].getMember());
			}
			
			for(int i = 0; i<uvo.length; i++) {
				

				
				cellNum = 0;
				dataRow = sheet.createRow(rowNum++); // for문 돌면서 행 1줄씩 추가
				
				dataCell = dataRow.createCell(cellNum++); //열 한줄씩 추가
				dataCell.setCellValue(i+1); // 첫번째칸은 순번이기때문에 
				dataCell.setCellStyle(dataStyle); // 테두리 스타일 적용
				sheet.autoSizeColumn(cellNum);
				//dataCell.setCellStyle(style);
				

				
				dataCell = dataRow.createCell(cellNum++); // 두번째 열은 이름이니까
				dataCell.setCellValue(map.get("id"+i)); // list에 저장된 이름 출력
				dataCell.setCellStyle(dataline); // 테두리 스타일 적용
				sheet.autoSizeColumn(cellNum);
				//dataCell.setCellStyle(style);
				
				dataCell = dataRow.createCell(cellNum++); // 두번째 열은 이름이니까
				dataCell.setCellValue(map.get("name"+i)); // list에 저장된 이름 출력
				dataCell.setCellStyle(dataline);
				sheet.autoSizeColumn(cellNum);
				//dataCell.setCellStyle(style);
				
				dataCell = dataRow.createCell(cellNum++); // 두번째 열은 이름이니까
				dataCell.setCellValue(map.get("addr"+i)); // list에 저장된 이름 출력
				dataCell.setCellStyle(dataline);
				sheet.autoSizeColumn(cellNum);
				//dataCell.setCellStyle(style);
				
				dataCell = dataRow.createCell(cellNum++); // 두번째 열은 이름이니까
				dataCell.setCellValue(map.get("email"+i)); // list에 저장된 이름 출력
				dataCell.setCellStyle(dataline);
				sheet.autoSizeColumn(cellNum);
				//dataCell.setCellStyle(style);
				
				dataCell = dataRow.createCell(cellNum++); // 두번째 열은 이름이니까
				dataCell.setCellValue(map.get("stat"+i)); // list에 저장된 이름 출력
				dataCell.setCellStyle(dataline);
				sheet.autoSizeColumn(cellNum);
				//dataCell.setCellStyle(style);
				
				dataCell = dataRow.createCell(cellNum); // 두번째 열은 이름이니까
				dataCell.setCellValue(map.get("member"+i)); // list에 저장된 이름 출력
				dataCell.setCellStyle(dataline);
				sheet.autoSizeColumn(cellNum);
				//dataCell.setCellStyle(style);
			}
			
			
		


		
		dataRow = sheet.createRow(rowNum++); // 총 인원을 작성해보자
		dataCell = dataRow.createCell(0); // 첫번쨰칸
		dataCell.setCellValue("총 인원");
		dataCell = dataRow.createCell(1); // 두번쨰칸
		dataCell.setCellFormula("COUNT(A2:A"+uvo.length+2+")"); // 함수식을 입력할 수 있는 기능
		dataRow.setHeightInPoints(18.0f);
		
		 try {
		    	
		    	/* 사진 삽입 */
		        String filePath = "/resources/img/px.png"; 
		        InputStream is = new FileInputStream(getClass().getClassLoader().getResource(filePath).getFile());
		        byte[] bytes = IOUtils.toByteArray(is);
		        int picIdx = wb.addPicture(bytes, XSSFWorkbook.PICTURE_TYPE_PNG);
		        is.close();

		        CreationHelper helper = wb.getCreationHelper();
		        Drawing drawing = sheet.createDrawingPatriarch();
		        ClientAnchor anchor = helper.createClientAnchor();
		       
		        // 이미지 출력할 엑셀 cell,row 위치
		        anchor.setRow1(12); //13번째줄
		        anchor.setCol1(4);  //3번째 셀

		        //이미지 그리기
		        Picture pic = drawing.createPicture(anchor, picIdx);
		        pic.resize();
		        
		    } catch (Exception e) {
		            e.printStackTrace();
		    }
			
		 /* 엑셀 파일 생성 */
	    response.setContentType("ms-vnd/excel");
	    response.setHeader("Content-Disposition", "attachment;filename="+filename+".xls");
	    try {
			wb.write(response.getOutputStream());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	
}

	    
	

	



	@Override
	public void getRecommended(String sheets,Search2[] svo,String filename,HttpServletResponse response) {
		List<String> list = new ArrayList<String>();
		// 활용 팁 : service dao 를 통해 입력받은 2021-05-01 ~ 2021-05-30 일자로
		//        데이터 조회를 후 list에 담았다고 가정하자.
		
		
		
		
		
		
		System.out.println(list.toString());
		Workbook wb = new HSSFWorkbook(); // 엑셀파일 객체 생성
		Sheet sheet = wb.createSheet(sheets); //시트 생성 ( 첫번째 시트이며, 시트명은 테스트 시트 )
		
		CellStyle style = wb.createCellStyle(); // 셀 스타일 생성
		Font font = wb.createFont(); // 폰트 스타일 생성
		
        font.setBoldweight(Font.BOLDWEIGHT_BOLD); // 글자 진하게
        font.setFontHeight((short)(16*18)); // 글자 크기
        font.setFontName("맑은 고딕"); // 글씨체
        
        // 자바의 배열처럼 첫번째 인덱스가 0 부터 시작한다.  첫번째는 0 , 두번째는 1 , 세번째는 2
        Row titleRow = sheet.createRow(0); // 타이틀행을 생성한다. 첫번째줄이기때문에 createRow(0)
        int titleColNum = 0; // 첫번째 열이기 때문에 0 
		Cell titleCell = titleRow.createCell(titleColNum); // 첫번째행의 첫번째열을 지정한다. 
		titleCell.setCellValue("안녕하세요 \n 테스트입니다."); // setCellValue 셀에 값넣기.
		titleRow.setHeight((short)920); // Row에서 setHeight를 하면 행 높이가 조정된다. 
		sheet.addMergedRegion(new CellRangeAddress(0,0,0,9)); // 셀 병합  첫번째줄~아홉번째 열까지 병합 
		// new CellRangeAddress(시작 row, 끝 row, 시작 col, 끝 col) 

		style.setWrapText(true); //문자열을 입력할때 \n 같은 개행을 인식해준다.
		style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER); // 수직 가운데 정렬
		style.setAlignment(CellStyle.ALIGN_CENTER); // 수평 가운데 정렬
		style.setFont(font); // 스타일에 font 스타일 적용하기
		titleCell.setCellStyle(style); // 정리한 스타일들을 titleCell에 적용해주자 !
		
		//입력받은 날짜 출력하기
		//Row dayRow = sheet.createRow(1);
		//int dayCol = 0;
		//Cell dayCell = dayRow.createCell(dayCol); // 두번째줄의 첫번째열을 셀로 지정. 즉 두번째줄 첫째칸
		//dayCell.setCellValue("조회날짜 : " + day1 + " ~ " + day2); // 두번째 행은 입력받은 날짜를 출력
		

		CellStyle dataStyle = wb.createCellStyle(); // 데이터스타일은 테두리를 만들어보자
		dataStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER); // 수직 가운데 정렬
		dataStyle.setAlignment(CellStyle.ALIGN_CENTER); // 수평 가운데 정렬
		dataStyle.setBorderRight(HSSFCellStyle.BORDER_THIN); //오른쪽 테두리
		dataStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN); //왼쪽 테두리
		dataStyle.setBorderTop(HSSFCellStyle.BORDER_THIN); // 상단 테두리
		dataStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN); // 하단 테두리
		
		CellStyle dataline = wb.createCellStyle(); 
		dataline.setAlignment(CellStyle.ALIGN_LEFT);
		dataline.setBorderRight(HSSFCellStyle.BORDER_THIN); //오른쪽 테두리
		dataline.setBorderLeft(HSSFCellStyle.BORDER_THIN); //왼쪽 테두리
		dataline.setBorderTop(HSSFCellStyle.BORDER_THIN); // 상단 테두리
		dataline.setBorderBottom(HSSFCellStyle.BORDER_THIN); // 하단 테두리
		
		
		
		
		
		//데이터 삽입하기
		int rowNum = 2; // 두번째줄이 헤더니까 그 밑에서부터 데이터 삽입
		int cellNum = 0;
		Row dataRow = null; // for문을 돌려주기위해.
		Cell dataCell = null;
		
		Map<String, String> map = null;
		
			map = new HashMap<String, String>();
			
			//헤더 만들기
			Row headerRow = sheet.createRow(1); // 네번째줄 생성
			int headerCol = 0;
			Cell headerCell = headerRow.createCell(headerCol++);
			headerCell.setCellValue("순번");
			dataStyle.setVerticalAlignment(HSSFCellStyle.ALIGN_RIGHT);
			headerCell.setCellStyle(dataStyle);
			
			headerCell = headerRow.createCell(headerCol++);
			headerCell.setCellValue("이름");
			dataStyle.setVerticalAlignment(HSSFCellStyle.ALIGN_RIGHT);
			headerCell.setCellStyle(dataStyle);
			
			headerCell = headerRow.createCell(headerCol++);
			headerCell.setCellValue("나이");
			dataStyle.setVerticalAlignment(HSSFCellStyle.ALIGN_RIGHT);
			headerCell.setCellStyle(dataStyle);
			
			headerCell = headerRow.createCell(headerCol++);
			headerCell.setCellValue("전화번호");
			dataStyle.setVerticalAlignment(HSSFCellStyle.ALIGN_LEFT);
			headerCell.setCellStyle(dataStyle);
			
			for(int i = 0; i<svo.length; i++) {
				map.put("title"+i, svo[i].getTitle());
				map.put("addr"+i, svo[i].getAddr());
				map.put("id"+i, svo[i].getSrchTrprId());
				map.put("subject"+i, svo[i].getSubject());
			}
			
			for(int i = 0; i<svo.length; i++) {
				
				cellNum = 0;
				dataRow = sheet.createRow(rowNum++); // for문 돌면서 행 1줄씩 추가
				
				dataCell = dataRow.createCell(cellNum++); //열 한줄씩 추가
				dataCell.setCellValue(i+1); // 첫번째칸은 순번이기때문에 
				dataCell.setCellStyle(dataStyle); // 테두리 스타일 적용
				sheet.setColumnWidth(cellNum, 17000);
				//dataCell.setCellStyle(style);
				

				
				dataCell = dataRow.createCell(cellNum++); // 두번째 열은 이름이니까
				dataCell.setCellValue(map.get("title"+i)); // list에 저장된 이름 출력
				dataCell.setCellStyle(dataline); // 테두리 스타일 적용
				sheet.setColumnWidth(cellNum, 6000);
				//dataCell.setCellStyle(style);
				
				dataCell = dataRow.createCell(cellNum++); // 두번째 열은 이름이니까
				dataCell.setCellValue(map.get("addr"+i)); // list에 저장된 이름 출력
				dataCell.setCellStyle(dataline);
				sheet.setColumnWidth(cellNum, 6000);
				//dataCell.setCellStyle(style);
				
				dataCell = dataRow.createCell(cellNum++); // 두번째 열은 이름이니까
				dataCell.setCellValue(map.get("id"+i)); // list에 저장된 이름 출력
				dataCell.setCellStyle(dataline);
				sheet.setColumnWidth(cellNum, 6000);
				//dataCell.setCellStyle(style);
				
				dataCell = dataRow.createCell(cellNum); // 두번째 열은 이름이니까
				dataCell.setCellValue(map.get("subject"+i)); // list에 저장된 이름 출력
				dataCell.setCellStyle(dataline);
				sheet.setColumnWidth(cellNum, 6000);
			}
			
			
		


		
		dataRow = sheet.createRow(rowNum++); // 총 인원을 작성해보자
		dataCell = dataRow.createCell(0); // 첫번쨰칸
		dataCell.setCellValue("총 인원");
		dataCell = dataRow.createCell(1); // 두번쨰칸
		dataCell.setCellFormula("COUNT(A2:A"+svo.length+2+")"); // 함수식을 입력할 수 있는 기능
		dataRow.setHeightInPoints(18.0f);
	
	 try {
	    	
	    	/* 사진 삽입 */
	        String filePath = "/resources/img/px.png"; 
	        InputStream is = new FileInputStream(getClass().getClassLoader().getResource(filePath).getFile());
	        byte[] bytes = IOUtils.toByteArray(is);
	        int picIdx = wb.addPicture(bytes, XSSFWorkbook.PICTURE_TYPE_PNG);
	        is.close();

	        CreationHelper helper = wb.getCreationHelper();
	        Drawing drawing = sheet.createDrawingPatriarch();
	        ClientAnchor anchor = helper.createClientAnchor();
	       
	        // 이미지 출력할 엑셀 cell,row 위치
	        anchor.setRow1(12); //13번째줄
	        anchor.setCol1(4);  //3번째 셀

	        //이미지 그리기
	        Picture pic = drawing.createPicture(anchor, picIdx);
	        pic.resize();
	        
	    } catch (Exception e) {
	            e.printStackTrace();
	    }
		
	 	 /* 엑셀 파일 생성 */
		 response.setContentType("ms-vnd/excel");
		 response.setHeader("Content-Disposition", "attachment;filename="+filename+".xls");
		 try {
			wb.write(response.getOutputStream());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 
}

}
