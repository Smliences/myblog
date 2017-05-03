package cn.myblog.ssh.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.myblog.ssh.dao.CommentDao;
import cn.myblog.ssh.entity.Comment;

@Service
@Transactional
public class CommentService {
	@Resource
	private CommentDao commentDao;

	public void save(Comment comment) {
		commentDao.save(comment);
		
	}

	public List<Comment> findAll() {
		return commentDao.findAll();
	}
}
