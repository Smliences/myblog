package cn.myblog.ssh.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;

import cn.myblog.ssh.entity.Comment;
import cn.myblog.ssh.service.CommentService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
@Controller
@Scope("prototype")
public class CommentAction extends ActionSupport implements ModelDriven<Comment>{
	@Resource
	private CommentService commentService;
	private Comment comment= new Comment();
	public Comment getModel() {
		return comment;
	}
	public String save() throws Exception{
		commentService.save(comment);
		return "index";
	}
	
	public String findAll() throws Exception{
			HttpServletRequest request =  ServletActionContext.getRequest();
			List<Comment> existList = commentService.findAll();
			request.getSession().setAttribute("list", existList);
				return NONE;
	}
}
