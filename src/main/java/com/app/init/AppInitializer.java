/**
 * 
 */
package com.app.init;

import org.springframework.lang.Nullable;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/**
 * @author RizkiAAzmi
 *
 */
public class AppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	@Nullable
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] {
				AppContext.class
		};
	}

	@Override
	@Nullable
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] {
				WebMVCConfig.class
		};
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] {
				"/"
		};
	}

	// @Override
	// public void onStartup(ServletContext servletContext) throws ServletException
	// {
	// AnnotationConfigWebApplicationContext webCtx = new
	// AnnotationConfigWebApplicationContext();
	// webCtx.register(MVCConfig.class);
	// webCtx.setServletContext(servletContext);

	// ServletRegistration.Dynamic servlet = servletContext.addServlet("dispatcher",
	// new DispatcherServlet(webCtx));
	// servlet.setLoadOnStartup(1);
	// servlet.addMapping("/");
	// }

}
