package com.hilltop.personalize;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import com.wabacus.config.Config;
import com.wabacus.config.component.container.page.PageBean;
import com.wabacus.system.commoninterface.IPagePersonalizePersistence;

/**
 * 加载,保存用户主体的方法
 * @author yushan
 *
 */
public class PagePersonalizePersistenceImpl implements IPagePersonalizePersistence
{
    /**
     * 加载某个页面或整个项目的SKIN
     * 如果返回null，则框架会自动取在wabacus.cfg.xml中配置的skin值
     */
	
	//加载用户主题
    public String loadSkin(HttpServletRequest request,PageBean pbean)
    {
        if(request!=null&&request.getSession()!=null)
        {
            if(pbean!=null)
            {//加载某个页面的主题风格
                return (String)request.getSession().getAttribute("dynskin_"+pbean.getId());
            }else
            {//加载整个项目的主题风格
                try {
					return getUserSkin(request);
				} catch (SQLException e) {
					e.printStackTrace();
				}
                
            }
        }
        return null;
    }

    //保存用户主题
    public void storeSkin(HttpServletRequest request,PageBean pbean,String skin)
    {
        if(request!=null&&request.getSession()!=null)
        {
            if(pbean!=null)
            {//保存某个页面的主题风格
                request.getSession().setAttribute("dynskin_"+pbean.getId(),skin);
            }else
            {//保存整个项目的主题风格
                request.getSession().setAttribute("dynskin",skin);
                try {
					setUserSkin(request,skin);
				} catch (SQLException e) {
					e.printStackTrace();
				}
            }
        }
    }
    
    /**
     * 从user表中获取用户主题
     */
    public String getUserSkin(HttpServletRequest request) throws SQLException{
    	String user_id=(String)request.getSession().getAttribute("user_id");
    	Connection conn = Config.getInstance().getDataSource("").getConnection();
		String sql = " select user_id,skin from sys_c_sec_user where user_id=? ";
		PreparedStatement pstmt = null;
		String skin=null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				skin = rs.getString("skin");
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}
    	return skin;
    }
    
	/**
	 * 更新user表中用户主题
	 */
    public void setUserSkin(HttpServletRequest request,String skin) throws SQLException{
    	String user_id=(String)request.getSession().getAttribute("user_id");
    	Connection conn = Config.getInstance().getDataSource("").getConnection();
		String sql = " update sys_c_sec_user set skin=? where user_id=? ";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,skin);
			pstmt.setString(2,user_id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}
    }
}

