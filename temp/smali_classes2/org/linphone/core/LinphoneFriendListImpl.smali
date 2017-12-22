.class Lorg/linphone/core/LinphoneFriendListImpl;
.super Ljava/lang/Object;
.source "LinphoneFriendListImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/linphone/core/LinphoneFriendList;


# instance fields
.field protected final nativePtr:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-wide p1, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    .line 150
    return-void
.end method

.method protected constructor <init>(Lorg/linphone/core/LinphoneCoreImpl;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-wide v0, p1, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendListImpl;->newLinphoneFriendList(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    .line 42
    return-void
.end method

.method private native addFriend(JJ)V
.end method

.method private native addLocalFriend(JJ)V
.end method

.method private native enableSubscriptions(JZ)V
.end method

.method private native exportFriendsToVCardFile(JLjava/lang/String;)V
.end method

.method private native finalize(J)V
.end method

.method private native findFriendByUri(JLjava/lang/String;)Lorg/linphone/core/LinphoneFriend;
.end method

.method private native getCore(J)Ljava/lang/Object;
.end method

.method private native getFriendList(J)[Lorg/linphone/core/LinphoneFriend;
.end method

.method private native getRLSUri(J)Ljava/lang/String;
.end method

.method private getSyncObject()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 164
    return-object p0
.end method

.method private native importFriendsFromVCardBuffer(JLjava/lang/String;)I
.end method

.method private native importFriendsFromVCardFile(JLjava/lang/String;)I
.end method

.method private native newLinphoneFriendList(J)J
.end method

.method private native setListener(JLorg/linphone/core/LinphoneFriendList$LinphoneFriendListListener;)V
.end method

.method private native setRLSAddress(JJ)V
.end method

.method private native setRLSUri(JLjava/lang/String;)V
.end method

.method private native setUri(JLjava/lang/String;)V
.end method

.method private native synchronizeFriendsFromServer(J)V
.end method

.method private native updateSubscriptions(J)V
.end method


# virtual methods
.method public addFriend(Lorg/linphone/core/LinphoneFriend;)V
    .locals 6

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendListImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 68
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/LinphoneFriend;->getNativePtr()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/linphone/core/LinphoneFriendListImpl;->addFriend(JJ)V

    .line 69
    monitor-exit v1

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addLocalFriend(Lorg/linphone/core/LinphoneFriend;)V
    .locals 6

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendListImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 75
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/LinphoneFriend;->getNativePtr()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/linphone/core/LinphoneFriendListImpl;->addLocalFriend(JJ)V

    .line 76
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableSubscriptions(Z)V
    .locals 4

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendListImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 96
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-direct {p0, v2, v3, p1}, Lorg/linphone/core/LinphoneFriendListImpl;->enableSubscriptions(JZ)V

    .line 97
    monitor-exit v1

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public exportFriendsToVCardFile(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneFriendListImpl;->exportFriendsToVCardFile(JLjava/lang/String;)V

    .line 139
    return-void
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 153
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 154
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendListImpl;->finalize(J)V

    .line 156
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 157
    return-void
.end method

.method public findFriendByUri(Ljava/lang/String;)Lorg/linphone/core/LinphoneFriend;
    .locals 4

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendListImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 103
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-direct {p0, v2, v3, p1}, Lorg/linphone/core/LinphoneFriendListImpl;->findFriendByUri(JLjava/lang/String;)Lorg/linphone/core/LinphoneFriend;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFriendList()[Lorg/linphone/core/LinphoneFriend;
    .locals 4

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendListImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 82
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneFriendListImpl;->getFriendList(J)[Lorg/linphone/core/LinphoneFriend;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    return-wide v0
.end method

.method public getRLSUri()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendListImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 61
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneFriendListImpl;->getRLSUri(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public importFriendsFromVCardBuffer(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneFriendListImpl;->importFriendsFromVCardBuffer(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public importFriendsFromVCardFile(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneFriendListImpl;->importFriendsFromVCardFile(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setListener(Lorg/linphone/core/LinphoneFriendList$LinphoneFriendListListener;)V
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneFriendListImpl;->setListener(JLorg/linphone/core/LinphoneFriendList$LinphoneFriendListListener;)V

    .line 144
    return-void
.end method

.method public setRLSAddress(Lorg/linphone/core/LinphoneAddress;)V
    .locals 6

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendListImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 47
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v4, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/linphone/core/LinphoneFriendListImpl;->setRLSAddress(JJ)V

    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRLSUri(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendListImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 54
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-direct {p0, v2, v3, p1}, Lorg/linphone/core/LinphoneFriendListImpl;->setRLSUri(JLjava/lang/String;)V

    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendListImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 111
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-direct {p0, v2, v3, p1}, Lorg/linphone/core/LinphoneFriendListImpl;->setUri(JLjava/lang/String;)V

    .line 112
    monitor-exit v1

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synchronizeFriendsFromServer()V
    .locals 4

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendListImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 119
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneFriendListImpl;->synchronizeFriendsFromServer(J)V

    .line 120
    monitor-exit v1

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateSubscriptions()V
    .locals 4

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendListImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 89
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneFriendListImpl;->updateSubscriptions(J)V

    .line 90
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
