package cn.mengcms.domain.oauth;

import cn.mengcms.domain.shared.Repository;

/**
 * @author zp
 */
public interface OauthRepository extends Repository {

    OauthClientDetails findOauthClientDetails(String clientId);
}