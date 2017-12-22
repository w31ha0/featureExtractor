.class public Lorg/linphone/core/LinphoneFriendImpl;
.super Ljava/lang/Object;
.source "LinphoneFriendImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/linphone/core/LinphoneFriend;


# instance fields
.field protected final nativePtr:J

.field private userdData:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/linphone/core/LinphoneFriendImpl;->newLinphoneFriend(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    .line 54
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p1, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    .line 62
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneFriendImpl;->newLinphoneFriend(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    .line 57
    return-void
.end method

.method private native addAddress(JJ)V
.end method

.method private native addPhoneNumber(JLjava/lang/String;)V
.end method

.method private native done(J)V
.end method

.method private native edit(J)V
.end method

.method private native enableSubscribes(JZ)V
.end method

.method private native finalize(J)V
.end method

.method private native getAddress(J)J
.end method

.method private native getAddresses(J)[J
.end method

.method private native getCore(J)Ljava/lang/Object;
.end method

.method private native getFamilyName(J)Ljava/lang/String;
.end method

.method private native getGivenName(J)Ljava/lang/String;
.end method

.method private native getIncSubscribePolicy(J)I
.end method

.method private native getName(J)Ljava/lang/String;
.end method

.method private native getOrganization(J)Ljava/lang/String;
.end method

.method private native getPhoneNumbers(J)[Ljava/lang/Object;
.end method

.method private native getPresenceModel(J)Ljava/lang/Object;
.end method

.method private native getPresenceModelForUri(JLjava/lang/String;)Ljava/lang/Object;
.end method

.method private native getRefKey(J)Ljava/lang/String;
.end method

.method private native getStatus(J)I
.end method

.method private getSyncObject()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getCore(J)Ljava/lang/Object;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    move-object p0, v0

    .line 132
    :cond_0
    return-object p0
.end method

.method private native isAlreadyPresentInFriendList(J)Z
.end method

.method private native isPresenceReceived(J)Z
.end method

.method private native isSubscribesEnabled(J)Z
.end method

.method private native newLinphoneFriend(Ljava/lang/String;)J
.end method

.method private native removeAddress(JJ)V
.end method

.method private native removePhoneNumber(JLjava/lang/String;)V
.end method

.method private native setAddress(JJ)V
.end method

.method private native setFamilyName(JLjava/lang/String;)V
.end method

.method private native setGivenName(JLjava/lang/String;)V
.end method

.method private native setIncSubscribePolicy(JI)V
.end method

.method private native setName(JLjava/lang/String;)V
.end method

.method private native setOrganization(JLjava/lang/String;)V
.end method

.method private native setPresenceModel(JJ)V
.end method

.method private native setRefKey(JLjava/lang/String;)V
.end method


# virtual methods
.method public addAddress(Lorg/linphone/core/LinphoneAddress;)V
    .locals 4

    .prologue
    .line 207
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneFriendImpl;->addAddress(JJ)V

    .line 208
    return-void
.end method

.method public addPhoneNumber(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneFriendImpl;->addPhoneNumber(JLjava/lang/String;)V

    .line 233
    return-void
.end method

.method public done()V
    .locals 4

    .prologue
    .line 116
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 117
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneFriendImpl;->done(J)V

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public edit()V
    .locals 4

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 112
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneFriendImpl;->edit(J)V

    .line 113
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableSubscribes(Z)V
    .locals 4

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 89
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v2, v3, p1}, Lorg/linphone/core/LinphoneFriendImpl;->enableSubscribes(JZ)V

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

.method protected finalize()V
    .locals 4

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 65
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->finalize(J)V

    .line 67
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 68
    return-void
.end method

.method public getAddress()Lorg/linphone/core/LinphoneAddress;
    .locals 4

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getAddress(J)J

    move-result-wide v2

    .line 74
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl;

    sget-object v1, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v0, v2, v3, v1}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddresses()[Lorg/linphone/core/LinphoneAddress;
    .locals 7

    .prologue
    .line 194
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getAddresses(J)[J

    move-result-object v2

    .line 195
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    .line 197
    :cond_0
    array-length v0, v2

    new-array v1, v0, [Lorg/linphone/core/LinphoneAddress;

    .line 198
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 199
    new-instance v3, Lorg/linphone/core/LinphoneAddressImpl;

    aget-wide v4, v2, v0

    sget-object v6, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v3, v4, v5, v6}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    aput-object v3, v1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 201
    goto :goto_0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getFamilyName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getGivenName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncSubscribePolicy()Lorg/linphone/core/LinphoneFriend$SubscribePolicy;
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getIncSubscribePolicy(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneFriend$SubscribePolicy;->fromInt(I)Lorg/linphone/core/LinphoneFriend$SubscribePolicy;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    return-wide v0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getOrganization(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumbers()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 219
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getPhoneNumbers(J)[Ljava/lang/Object;

    move-result-object v2

    .line 220
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    .line 222
    :cond_0
    array-length v0, v2

    new-array v1, v0, [Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 224
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 226
    goto :goto_0
.end method

.method public getPresenceModel()Lorg/linphone/core/PresenceModel;
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getPresenceModel(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/PresenceModel;

    return-object v0
.end method

.method public getPresenceModelForUri(Ljava/lang/String;)Lorg/linphone/core/PresenceModel;
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneFriendImpl;->getPresenceModelForUri(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/PresenceModel;

    return-object v0
.end method

.method public getRefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getRefKey(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lorg/linphone/core/OnlineStatus;
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->getStatus(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/OnlineStatus;->fromInt(I)Lorg/linphone/core/OnlineStatus;

    move-result-object v0

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->userdData:Ljava/lang/Object;

    return-object v0
.end method

.method public isAlreadyPresentInFriendList()Z
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->isAlreadyPresentInFriendList(J)Z

    move-result v0

    return v0
.end method

.method public isPresenceReceived()Z
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->isPresenceReceived(J)Z

    move-result v0

    return v0
.end method

.method public isSubscribesEnabled()Z
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneFriendImpl;->isSubscribesEnabled(J)Z

    move-result v0

    return v0
.end method

.method public removeAddress(Lorg/linphone/core/LinphoneAddress;)V
    .locals 4

    .prologue
    .line 213
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneFriendImpl;->removeAddress(JJ)V

    .line 214
    return-void
.end method

.method public removePhoneNumber(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 238
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneFriendImpl;->removePhoneNumber(JLjava/lang/String;)V

    .line 239
    return-void
.end method

.method public setAddress(Lorg/linphone/core/LinphoneAddress;)V
    .locals 4

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneFriendImpl;->setAddress(JJ)V

    .line 71
    return-void
.end method

.method public setFamilyName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneFriendImpl;->setFamilyName(JLjava/lang/String;)V

    .line 161
    return-void
.end method

.method public setGivenName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneFriendImpl;->setGivenName(JLjava/lang/String;)V

    .line 172
    return-void
.end method

.method public setIncSubscribePolicy(Lorg/linphone/core/LinphoneFriend$SubscribePolicy;)V
    .locals 4

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 81
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    iget v0, p1, Lorg/linphone/core/LinphoneFriend$SubscribePolicy;->mValue:I

    invoke-direct {p0, v2, v3, v0}, Lorg/linphone/core/LinphoneFriendImpl;->setIncSubscribePolicy(JI)V

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneFriendImpl;->setName(JLjava/lang/String;)V

    .line 149
    return-void
.end method

.method public setOrganization(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneFriendImpl;->setOrganization(JLjava/lang/String;)V

    .line 183
    return-void
.end method

.method public setPresenceModel(Lorg/linphone/core/PresenceModel;)V
    .locals 4

    .prologue
    .line 108
    iget-wide v0, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/PresenceModelImpl;

    invoke-virtual {p1}, Lorg/linphone/core/PresenceModelImpl;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneFriendImpl;->setPresenceModel(JJ)V

    .line 109
    return-void
.end method

.method public setRefKey(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 136
    invoke-direct {p0}, Lorg/linphone/core/LinphoneFriendImpl;->getSyncObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 137
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v2, v3, p1}, Lorg/linphone/core/LinphoneFriendImpl;->setRefKey(JLjava/lang/String;)V

    .line 138
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lorg/linphone/core/LinphoneFriendImpl;->userdData:Ljava/lang/Object;

    .line 50
    return-void
.end method
