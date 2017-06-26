package cn.mengcms.service.impl;

import cn.mengcms.domain.oauth.OauthClientDetails;
import cn.mengcms.domain.oauth.OauthRepository;
import cn.mengcms.service.OauthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author zp
 */
@Service("oauthService")
public class OauthServiceImpl implements OauthService {

    @Autowired
    private OauthRepository oauthRepository;

    @Override
    public OauthClientDetails loadOauthClientDetails(String clientId) {
        return oauthRepository.findOauthClientDetails(clientId);
    }
}