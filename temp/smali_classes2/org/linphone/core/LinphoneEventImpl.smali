.class public Lorg/linphone/core/LinphoneEventImpl;
.super Ljava/lang/Object;
.source "LinphoneEventImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphoneEvent;


# instance fields
.field private mNativePtr:J

.field private mUserContext:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    .line 10
    return-void
.end method

.method private native acceptSubscription(J)I
.end method

.method private native addCustomHeader(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native denySubscription(JI)I
.end method

.method private native getCore(J)Ljava/lang/Object;
.end method

.method private native getCustomHeader(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native getErrorInfo(J)J
.end method

.method private native getEventName(J)Ljava/lang/String;
.end method

.method private native getReason(J)I
.end method

.method private native getSubscriptionDir(J)I
.end method

.method private native getSubscriptionState(J)I
.end method

.method private native notify(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I
.end method

.method private native sendPublish(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
.end method

.method private native sendSubscribe(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
.end method

.method private native terminate(J)I
.end method

.method private native unref(J)V
.end method

.method private native updatePublish(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I
.end method

.method private native updateSubscribe(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I
.end method


# virtual methods
.method public declared-synchronized acceptSubscription()V
    .locals 4

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneEventImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    iget-wide v2, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneEventImpl;->acceptSubscription(J)I

    .line 23
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    .line 23
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneEventImpl;->addCustomHeader(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized denySubscription(Lorg/linphone/core/Reason;)V
    .locals 4

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneEventImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    :try_start_1
    iget-wide v2, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    iget v0, p1, Lorg/linphone/core/Reason;->mValue:I

    invoke-direct {p0, v2, v3, v0}, Lorg/linphone/core/LinphoneEventImpl;->denySubscription(JI)I

    .line 31
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneEventImpl;->unref(J)V

    .line 102
    return-void
.end method

.method public declared-synchronized getCore()Lorg/linphone/core/LinphoneCore;
    .locals 2

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneEventImpl;->getCore(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCustomHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneEventImpl;->getCustomHeader(JLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getErrorInfo()Lorg/linphone/core/ErrorInfo;
    .locals 4

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/linphone/core/ErrorInfoImpl;

    iget-wide v2, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneEventImpl;->getErrorInfo(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/linphone/core/ErrorInfoImpl;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 15
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneEventImpl;->getEventName(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReason()Lorg/linphone/core/Reason;
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneEventImpl;->getReason(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/Reason;->fromInt(I)Lorg/linphone/core/Reason;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSubscriptionDir()Lorg/linphone/core/SubscriptionDir;
    .locals 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneEventImpl;->getSubscriptionDir(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/SubscriptionDir;->fromInt(I)Lorg/linphone/core/SubscriptionDir;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSubscriptionState()Lorg/linphone/core/SubscriptionState;
    .locals 2

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneEventImpl;->getSubscriptionState(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/SubscriptionState;->fromInt(I)Lorg/linphone/core/SubscriptionState;
    :try_end_0
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 97
    :goto_0
    monitor-exit p0

    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 95
    :try_start_1
    invoke-virtual {v0}, Lorg/linphone/core/LinphoneCoreException;->printStackTrace()V

    .line 97
    sget-object v0, Lorg/linphone/core/SubscriptionState;->Error:Lorg/linphone/core/SubscriptionState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/linphone/core/LinphoneEventImpl;->mUserContext:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notify(Lorg/linphone/core/LinphoneContent;)V
    .locals 9

    .prologue
    .line 37
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneEventImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v8

    monitor-enter v8

    .line 38
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getSubtype()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getData()[B

    move-result-object v6

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneEventImpl;->notify(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I

    .line 39
    monitor-exit v8

    .line 40
    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendPublish(Lorg/linphone/core/LinphoneContent;)V
    .locals 9

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneEventImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v8

    monitor-enter v8

    .line 131
    if-eqz p1, :cond_0

    .line 132
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getSubtype()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getData()[B

    move-result-object v6

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneEventImpl;->sendPublish(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 135
    :goto_0
    monitor-exit v8

    .line 136
    return-void

    .line 134
    :cond_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneEventImpl;->sendPublish(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendSubscribe(Lorg/linphone/core/LinphoneContent;)V
    .locals 9

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneEventImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v8

    monitor-enter v8

    .line 120
    if-eqz p1, :cond_0

    .line 121
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getSubtype()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getData()[B

    move-result-object v6

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneEventImpl;->sendSubscribe(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 124
    :goto_0
    monitor-exit v8

    .line 125
    return-void

    .line 123
    :cond_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneEventImpl;->sendSubscribe(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized setUserContext(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/linphone/core/LinphoneEventImpl;->mUserContext:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public terminate()V
    .locals 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneEventImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 62
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneEventImpl;->terminate(J)I

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updatePublish(Lorg/linphone/core/LinphoneContent;)V
    .locals 9

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneEventImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v8

    monitor-enter v8

    .line 54
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getSubtype()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getData()[B

    move-result-object v6

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneEventImpl;->updatePublish(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I

    .line 55
    monitor-exit v8

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateSubscribe(Lorg/linphone/core/LinphoneContent;)V
    .locals 9

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneEventImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v8

    monitor-enter v8

    .line 46
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneEventImpl;->mNativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getSubtype()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getData()[B

    move-result-object v6

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneEventImpl;->updateSubscribe(JLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I

    .line 47
    monitor-exit v8

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
