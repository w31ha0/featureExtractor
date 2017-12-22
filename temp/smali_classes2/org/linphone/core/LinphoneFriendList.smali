.class public interface abstract Lorg/linphone/core/LinphoneFriendList;
.super Ljava/lang/Object;
.source "LinphoneFriendList.java"


# virtual methods
.method public abstract addFriend(Lorg/linphone/core/LinphoneFriend;)V
.end method

.method public abstract addLocalFriend(Lorg/linphone/core/LinphoneFriend;)V
.end method

.method public abstract enableSubscriptions(Z)V
.end method

.method public abstract exportFriendsToVCardFile(Ljava/lang/String;)V
.end method

.method public abstract findFriendByUri(Ljava/lang/String;)Lorg/linphone/core/LinphoneFriend;
.end method

.method public abstract getFriendList()[Lorg/linphone/core/LinphoneFriend;
.end method

.method public abstract getNativePtr()J
.end method

.method public abstract getRLSUri()Ljava/lang/String;
.end method

.method public abstract importFriendsFromVCardBuffer(Ljava/lang/String;)I
.end method

.method public abstract importFriendsFromVCardFile(Ljava/lang/String;)I
.end method

.method public abstract setListener(Lorg/linphone/core/LinphoneFriendList$LinphoneFriendListListener;)V
.end method

.method public abstract setRLSAddress(Lorg/linphone/core/LinphoneAddress;)V
.end method

.method public abstract setRLSUri(Ljava/lang/String;)V
.end method

.method public abstract setUri(Ljava/lang/String;)V
.end method

.method public abstract synchronizeFriendsFromServer()V
.end method

.method public abstract updateSubscriptions()V
.end method
