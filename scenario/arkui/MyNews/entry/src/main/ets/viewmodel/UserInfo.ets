/**
 * Type definition for user information.
 * 用户信息的类型定义。
 */
@Observed
export class UserInfo {
  username: string
  userId: string
  brief: string
  avatar: Resource
  isFollowing: boolean // Is followed by current user?

  constructor(username: string, userId: string, brief: string, avatar: Resource, isFollowing: boolean) {
    this.username = username
    this.userId = userId
    this.brief = brief
    this.avatar = avatar
    this.isFollowing = isFollowing
  }
}
