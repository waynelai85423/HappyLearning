//package fourth.dao;
//
//import java.util.List;
//
//import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
//import org.springframework.data.jpa.repository.Query;
//
//import fourth.bean.document.OrderUser;
//
//
//
//public interface OrderElaticSearchRepository extends ElasticsearchRepository<fourth.bean.OrderUser, String> {
//	
//	@Query(value ="select * from order_user where user_id = ?1 and status = ?2 ",nativeQuery = true)
//	public List<OrderUser> findUserByOrderStatus_Id(Integer user ,Integer status);
//	
//	public List<OrderUser> findByMemberBean_userId(int id);
//	
//}
