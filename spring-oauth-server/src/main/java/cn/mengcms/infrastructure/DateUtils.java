package cn.mengcms.infrastructure;

import java.util.Date;

/**
 * 
 * @author zp
 *
 */
public abstract class DateUtils {


    /**
     * Private constructor
     */
    private DateUtils() {
    }

    public static Date now() {
        return new Date();
    }

}