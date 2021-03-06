package cn.myblog.ssh.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.myblog.ssh.dao.ArticleDao;
import cn.myblog.ssh.entity.Article;

@Service
@Scope("prototype")
@Transactional
public class ArticleService {
@Resource
private ArticleDao articleDao;

public void save(Article article) {
	articleDao.save(article);
}

public List<Article> find() {
	return articleDao.find();
}

public Article findByAid(Article article) {
	return articleDao.findByAid(article);
}
}
