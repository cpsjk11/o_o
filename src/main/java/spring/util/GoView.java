package spring.util;

import org.springframework.web.servlet.ModelAndView;

public interface GoView {
	ModelAndView goView(String name, String menu);
}
