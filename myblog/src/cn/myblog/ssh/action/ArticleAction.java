package cn.myblog.ssh.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.myblog.ssh.entity.Article;
import cn.myblog.ssh.service.ArticleService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Controller
@Scope("prototype")
public class ArticleAction extends ActionSupport implements ModelDriven<Article>{
	HttpServletRequest request = ServletActionContext.getRequest();
	private Article article = new Article();
	@Resource
	private ArticleService articleService;
	public Article getModel() {
		return article;
	}

	public String save() throws Exception{
		request.setCharacterEncoding("utf-8");
		SimpleDateFormat s = new SimpleDateFormat();
		long date = new Date().getTime();
		String time = s.format(date);
		article.setWtime(time);
			articleService.save(article);
			String testString = article.getContent();
			System.out.println(new String(testString.getBytes("ISO-8859-1"),"gb2312"));
			System.out.println(new String(testString.getBytes("UTF8"),"gb2312"));
			System.out.println(new String(testString.getBytes("GB2312"),"gb2312"));
			System.out.println(new String(testString.getBytes("GBK"),"gb2312"));
			System.out.println(new String(testString.getBytes("BIG5"),"gb2312"));
			
			
		return "success";
	}
	public String find() throws Exception{
		request.setCharacterEncoding("utf-8");
			List<Article> list = articleService.find();
			request.getSession().setAttribute("articleList", list);
			
		return NONE;
	}
	
	public String show() throws Exception{
		request.setCharacterEncoding("utf-8");
		Article existArticle = articleService.findByTitle(article);
		request.getSession().setAttribute("article", existArticle);
		return "sarticle";
	}
}
