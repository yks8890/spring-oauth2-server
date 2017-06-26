package cn.mengcms.service;

import cn.mengcms.domain.oauth.OauthClientDetails;

/**
 * @author zp
 */

public interface OauthService {

    OauthClientDetails loadOauthClientDetails(String clientId);
}