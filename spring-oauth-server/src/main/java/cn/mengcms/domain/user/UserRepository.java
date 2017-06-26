package cn.mengcms.domain.user;

import cn.mengcms.domain.shared.Repository;

/**
 * @author zp
 */

public interface UserRepository extends Repository {

    User findByGuid(String guid);

    void saveUser(User user);

    void updateUser(User user);

    User findByUsername(String username);

}