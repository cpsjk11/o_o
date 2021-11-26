package api.action;

public class CheckChart {
	
public String getChart(String[] rvo) {
		
	
		if(rvo == null)
			return "[]";
		
		
		StringBuffer sb = new StringBuffer("[");
		for(int i = 0; i<rvo.length;i++) {
			if(rvo[i].contains("월")) {
				sb.append("'");
				
			}
			sb.append(rvo[i]);
			if(rvo[i].contains("월")) {
				sb.append("'");
			}
			if(i != rvo.length-1) 
				sb.append(",");
		}
		sb.append("]");
		return sb.toString();
	}

}
