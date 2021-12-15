package spring.util;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class GoPolicy implements GoView {

	public ModelAndView goView(String name, String menu) {
		ModelAndView mv =  new ModelAndView();
	  	mv.addObject("menu", menu);
    	mv.setViewName(name);
	    return mv;
	}

}
