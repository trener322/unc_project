package ru.unc6.promeets.model.entity;

import javax.persistence.*;

/**
 * Created by Vladimir on 30.01.2016.
 */
@Entity
@Table(name = "user_groups", schema = "public", catalog = "promeets_db")
public class UserGroup {
    private UserGroupPK userGroupPK;
    private short createMeetPermission;
    private short invitePermission;

    @EmbeddedId
    public UserGroupPK getUserGroupPK() {
        return userGroupPK;
    }

    public void setUserGroupPK(UserGroupPK userGroupPK) {
        this.userGroupPK = userGroupPK;
    }

    @Basic
    @Column(name = "create_meet_permission", nullable = false)
    public short getCreateMeetPermission() {
        return createMeetPermission;
    }

    public void setCreateMeetPermission(short createMeetPermission) {
        this.createMeetPermission = createMeetPermission;
    }

    @Basic
    @Column(name = "invite_permission", nullable = false)
    public short getInvitePermission() {
        return invitePermission;
    }

    public void setInvitePermission(short invitePermission) {
        this.invitePermission = invitePermission;
    }

    @Transient
    public User getUser() {
        return userGroupPK.getUser();
    }

    public void setUser(User user) {
        userGroupPK.setUser(user);
    }

    @Transient
    public Group getGroup() {
        return userGroupPK.getGroup();
    }

    public void setGroup(Group group) {
        userGroupPK.setGroup(group);
    }

}
