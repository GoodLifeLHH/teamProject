package com.team.mybatis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ProjectService {
	@Autowired
	ProjectMapper mapper;
	
	@Autowired
	PlatformTransactionManager manager;
	
	TransactionStatus status;
}
