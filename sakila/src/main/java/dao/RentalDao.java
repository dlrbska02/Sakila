package dao;

import java.util.List;
import java.util.Map;

public class RentalDao {
	public List<Map<String, Object>> selectRentalSearchList(
										int storeId, String customerName, String beginDate, String endDate) {
		/*
		SELECT 
		r.*, 
		CONCAT(c.first_name,' ',c.last_name) cName, 
		s.store_id storeId, 
		i.film_id filmId,
		f.title
		FROM rental r INNER JOIN customer c
		ON r.customer_id = c.customer_id
			INNER JOIN staff s
			ON r.staff_id = s.staff_id
				INNER JOIN inventory i
				ON r.inventory_id = i.inventory_id
					INNER JOIN film f
					ON i.film_id = f.film_id
		WHERE s.store_id=? AND CONCAT(c.first_name,' ',c.last_name) LIKE ?
		AND r.rental_date BETWEEN STR_TO_DATE(?,'%Y-%m-%d') 
		AND STR_TO_DATE(?,'%Y-%m-%d');
		*/
		return null; // 수정
	}
}