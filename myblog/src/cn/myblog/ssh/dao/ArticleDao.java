package cn.myblog.ssh.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import cn.myblog.ssh.entity.Article;

@Repository
@Scope("prototype")
public class ArticleDao {
	@Resource
	private HibernateTemplate hibernateTemplate;

	public void save(Article article) {
		hibernateTemplate.save(article);
	}

	public List<Article> find() {
		List<Article> list = (List<Article>) hibernateTemplate.find("from Article");
		if(list!=null&&list.size()>0)
		return list;
		return null;
	}
}
