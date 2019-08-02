package site.layne666.gym.pojo;

import lombok.Data;

/**
 * 用户课时
 *
 * @author layne666
 * @date 2019/05/07
 */
@Data
public class Ks {
    /** 编号 **/
    private String bh;

    /** 剩余上课时 **/
    private String sysks;

    /** 课时价格 **/
    private String ksjg;

    /** 创建时间 **/
    private String cjsj;

    /** 会员信息 **/
    private User user;

    /** 课时分类 **/
    private Course course;

    /** 教练编号 **/
    private Coach coach;

}
