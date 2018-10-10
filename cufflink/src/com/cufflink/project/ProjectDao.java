package com.cufflink.project;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cufflink.partners.PartnersDao;

@Service
public class ProjectDao {
   Logger logger = Logger.getLogger(ProjectDao.class);

   @Autowired
   SqlSessionTemplate sqlSessionTemplate;

   List<Map<String, Object>> list; //
   Map<String, Map> map;


   public Map<String, Map> Project_1(Map<String, Object> pMap) {

      Map<String, Map> rMap = new HashMap<>();
      map = sqlSessionTemplate.selectOne("Project",map);
      rMap.put("Project", map);
      

      map = sqlSessionTemplate.selectOne("P_Project",map);
      rMap.put("P_Project", map);

      map = sqlSessionTemplate.selectOne("Partners_history",map);
      rMap.put("Partners_history", map);
      

      map = sqlSessionTemplate.selectOne("Partners_AVG",map);
      rMap.put("Partners_AVG", map);
      
     
      map = sqlSessionTemplate.selectOne("Partners_AllAVG",map);
      rMap.put("Partners_AllAVG", map);
      

      map = sqlSessionTemplate.selectOne("Partners_aboutme",map);
      rMap.put("Partners_aboutme", map);
      

       return rMap;
       
   }

      public List<Map<String, Object>> getProject_CATE() {
         List<Map<String, Object>> list = new ArrayList<>();
         List<Object> lists = new ArrayList<Object>();
         list = sqlSessionTemplate.selectList("getProject_CATE");
         lists.add(list);

         return list;
      }

   public List<Map<String, Object>> getProjectFind1() {
      List<Map<String, Object>> list = new ArrayList<>();
      List<Object> lists = new ArrayList<Object>();
      list = sqlSessionTemplate.selectList("ProjectCate_sub1");
      lists.add(list);

      return list;
   }
  
   public List<Map<String, Object>> getProjectFind2() {
      List<Map<String, Object>> list = new ArrayList<>();
      List<Object> lists = new ArrayList<Object>();
      list = sqlSessionTemplate.selectList("ProjectCate_sub2");
      lists.add(list);
     
      return list;
   }

   public List<Map<String, Object>> getProjectseach() {
      List<Map<String, Object>> list = new ArrayList<>();
      List<Object> lists = new ArrayList<Object>();
      list = sqlSessionTemplate.selectList("Pro_seach"); 
      lists.add(list);

      return list;
   }

      public Map<String, Object> getProAll(int pagenum) {
         Map<String,Object> map1 = new HashMap<>();
         map1.put("pagenumber", pagenum);
         map1.put("pagecount", 10);
         sqlSessionTemplate.selectOne("test",map1); 
         logger.info(map1);
      
         return map1;
   }

}