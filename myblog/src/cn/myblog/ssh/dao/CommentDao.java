package cn.myblog.ssh.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import cn.myblog.ssh.entity.Comment;

@Repository
public class CommentDao {
	@Resource
	private HibernateTemplate hibernateTemplate;

	public void save(Comment comment) {
		hibernateTemplate.save(comment);
		
	}

	public List<Comment> findAll() {
		List<Comment> list = (List<Comment>) hibernateTemplate.find("from Comment"); 
		if(list!=null&&list.size()>0)
			return list;
		return null;
	}
}
