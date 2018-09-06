package com.cufflink.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectLogic {

	@Autowired
	ProjectDao projectDao;
}
