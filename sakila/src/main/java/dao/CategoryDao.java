import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import vo.FilmList;

public class FilmDao {
	public List<FilmList> selectFilmListSearch(int beginRow, int rowPerPage, String category, String rating, double price, int length, String title, String actor) {		
		List<FilmList> list = new ArrayList<FilmList>();
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		conn = DBUtil.getConnection();
		try {
			// 동적쿼리
			String sql = "SELECT fid,title,description,category,price,length,rating,actors FROM film_list WHERE title LIKE ? AND actors LIKE ?";
			if(category.equals("") && rating.equals("") && price==-1 && length==-1) {
				sql += " ORDER BY fid LIMIT ?, ?";
				stmt = conn.prepareStatement(sql);
				stmt.setString(1, "%"+title+"%");
				stmt.setString(2, "%"+actor+"%");
				stmt.setInt(3, beginRow);
				stmt.setInt(4, rowPerPage);
			} else if(category.equals("") && rating.equals("") && price==-1 && length!=-1) { // length만 입력되었다
				if(length == 0) {
					sql += " AND length<60 ORDER BY fid LIMIT ?, ?";
				} else if(length == 1) {
					sql += " AND length>=60 ORDER BY fid LIMIT ?, ?";
				}
				stmt = conn.prepareStatement(sql);
				stmt.setString(1, "%"+title+"%");
				stmt.setString(2, "%"+actor+"%");
				stmt.setInt(3, beginRow);
				stmt.setInt(4, rowPerPage);
			} else if(category.equals("") && rating.equals("") && price!=-1 && length==-1) {
				sql += " AND price=? ORDER BY fid LIMIT ?, ?";
				stmt = conn.prepareStatement(sql);
				stmt.setString(1, "%"+title+"%");
				stmt.setString(2, "%"+actor+"%");
				stmt.setDouble(3, price);
				stmt.setInt(4, beginRow);
				stmt.setInt(5, rowPerPage);
			} // 13(+알파)개의 쿼리 분기
			rs = stmt.executeQuery();
			while(rs.next()) {
				FilmList f = new FilmList();
				f.setFid(rs.getInt("fid"));
				f.setTitle(rs.getString("title"));
				f.setDesciption(rs.getString("description"));
				f.setCategory(rs.getString("category"));
				f.setPrice(rs.getDouble("price"));
				f.setLength(rs.getInt("length"));
				f.setRating(rs.getString("rating"));
				f.setActors(rs.getString("actors"));
				list.add(f);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}