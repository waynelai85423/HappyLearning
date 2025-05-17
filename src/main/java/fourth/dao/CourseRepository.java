package fourth.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import fourth.bean.CourseBean;
import fourth.bean.CourseComments;

public interface CourseRepository extends JpaRepository<CourseBean, Integer> {
	
	@Query(value = "from CourseBean where course_name like concat('%',?1,'%') ")
	public List<CourseBean> findByNameLike(String course_name);
	
	@Query(value = "from CourseBean where education_id like concat('%',?1,'%') ")
	public List<CourseBean> findByEduIdLike(String education_id);
	
	@Query(value = "from CourseBean where subject_id like concat('%',?1,'%') ")
	public List<CourseBean> findBySubIdLike(String subject_id);
	
	@Query(value = "from CourseBean where lecturer_name like concat('%',?1,'%') order by course_date desc ")
	public List<CourseBean> findByLecturerName(String lecturer_name);
	
	@Query(value = "select top 4 * from Course order by enrollment desc" ,nativeQuery = true)
	public List<CourseBean> orderByEnrollment();
	
	@Query(value = "select  * from Course order by course_date desc" ,nativeQuery = true)
	public List<CourseBean> listByCourseDate();
	
	

}
