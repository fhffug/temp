package cn.edu.wspc.model.dao;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.QueryRunner;

import javax.sql.DataSource;

public class BaseDao {
    private static DataSource ds = null;
    protected static QueryRunner runner = null;

    static {
        ComboPooledDataSource cpds = new ComboPooledDataSource();
        ds = cpds;
        runner = new QueryRunner(ds);
    }
}
