package cn.mengcms.domain.shared;

import java.util.UUID;

/**
 * 
 * @author zp
 *
 */
public abstract class GuidGenerator {


    /**
     * private constructor
     */
    private GuidGenerator() {
    }

    public static String generate() {
        return UUID.randomUUID().toString().replaceAll("-", "");
    }
}