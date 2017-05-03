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
		SimpleDateFormat s = new SimpleDateFormat();
		long date = new Date().getTime();
		String time = s.format(date);
		article.setWtime(time);
			articleService.save(article);
		
			
			
		return "success";
	}
	public String find() throws Exception{
			List<Article> list = articleService.find();
			request.getSession().setAttribute("articleList", list);
			
		return NONE;
	}
	
	public String show() throws Exception{
		Article existArticle = articleService.findByAid(article);
		request.getSession().setAttribute("article", existArticle);
		return "sarticle";
	}
	
}
