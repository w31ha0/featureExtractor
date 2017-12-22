.class Lorg/linphone/core/LinphoneChatRoomImpl;
.super Ljava/lang/Object;
.source "LinphoneChatRoomImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphoneChatRoom;


# instance fields
.field protected final nativePtr:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    .line 58
    return-void
.end method

.method private native compose(J)V
.end method

.method private native createFileTransferMessage(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
.end method

.method private native createLinphoneChatMessage(JLjava/lang/String;)J
.end method

.method private native createLinphoneChatMessage2(JLjava/lang/String;Ljava/lang/String;IJZZ)J
.end method

.method private native deleteHistory(J)V
.end method

.method private native deleteMessage(JJ)V
.end method

.method private native destroy(J)V
.end method

.method private native finalize(J)V
.end method

.method private native getCall(J)Ljava/lang/Object;
.end method

.method private native getChar(J)J
.end method

.method private native getCore(J)Ljava/lang/Object;
.end method

.method private native getHistory(JI)[Ljava/lang/Object;
.end method

.method private getHistoryPrivate([Ljava/lang/Object;)[Lorg/linphone/core/LinphoneChatMessage;
    .locals 0

    .prologue
    .line 162
    check-cast p1, [Lorg/linphone/core/LinphoneChatMessage;

    check-cast p1, [Lorg/linphone/core/LinphoneChatMessage;

    return-object p1
.end method

.method private native getHistoryRange(JII)[Ljava/lang/Object;
.end method

.method private native getHistorySize(J)I
.end method

.method private native getPeerAddress(J)J
.end method

.method private native getUnreadMessagesCount(J)I
.end method

.method private native isRemoteComposing(J)Z
.end method

.method private native islimeAvailable(J)Z
.end method

.method private native markAsRead(J)V
.end method

.method private native sendChatMessage(JLjava/lang/Object;J)V
.end method

.method private native sendMessage(JLjava/lang/String;)V
.end method

.method private native sendMessage2(JLjava/lang/Object;JLorg/linphone/core/LinphoneChatMessage$StateListener;)V
.end method


# virtual methods
.method public compose()V
    .locals 4

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneChatRoomImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 124
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneChatRoomImpl;->compose(J)V

    .line 125
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createFileTransferMessage(Lorg/linphone/core/LinphoneContent;)Lorg/linphone/core/LinphoneChatMessage;
    .locals 9

    .prologue
    .line 168
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneChatRoomImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v8

    monitor-enter v8

    .line 169
    :try_start_0
    new-instance v0, Lorg/linphone/core/LinphoneChatMessageImpl;

    iget-wide v2, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getSubtype()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lorg/linphone/core/LinphoneContent;->getRealSize()I

    move-result v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneChatRoomImpl;->createFileTransferMessage(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/linphone/core/LinphoneChatMessageImpl;-><init>(J)V

    monitor-exit v8

    return-object v0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createLinphoneChatMessage(Ljava/lang/String;)Lorg/linphone/core/LinphoneChatMessage;
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneChatRoomImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 80
    :try_start_0
    new-instance v0, Lorg/linphone/core/LinphoneChatMessageImpl;

    iget-wide v2, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    invoke-direct {p0, v2, v3, p1}, Lorg/linphone/core/LinphoneChatRoomImpl;->createLinphoneChatMessage(JLjava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/linphone/core/LinphoneChatMessageImpl;-><init>(J)V

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createLinphoneChatMessage(Ljava/lang/String;Ljava/lang/String;Lorg/linphone/core/LinphoneChatMessage$State;JZZ)Lorg/linphone/core/LinphoneChatMessage;
    .locals 12

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneChatRoomImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v10

    monitor-enter v10

    .line 152
    :try_start_0
    new-instance v11, Lorg/linphone/core/LinphoneChatMessageImpl;

    iget-wide v1, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    .line 153
    invoke-virtual {p3}, Lorg/linphone/core/LinphoneChatMessage$State;->value()I

    move-result v5

    const-wide/16 v6, 0x3e8

    div-long v6, p4, v6

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v8, p6

    move/from16 v9, p7

    .line 152
    invoke-direct/range {v0 .. v9}, Lorg/linphone/core/LinphoneChatRoomImpl;->createLinphoneChatMessage2(JLjava/lang/String;Ljava/lang/String;IJZZ)J

    move-result-wide v0

    invoke-direct {v11, v0, v1}, Lorg/linphone/core/LinphoneChatMessageImpl;-><init>(J)V

    monitor-exit v10

    return-object v11

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteHistory()V
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneChatRoomImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 118
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneChatRoomImpl;->deleteHistory(J)V

    .line 119
    monitor-exit v1

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteMessage(Lorg/linphone/core/LinphoneChatMessage;)V
    .locals 6

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneChatRoomImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 142
    if-eqz p1, :cond_0

    .line 143
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneChatMessageImpl;

    invoke-virtual {p1}, Lorg/linphone/core/LinphoneChatMessageImpl;->getNativePtr()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/linphone/core/LinphoneChatRoomImpl;->deleteMessage(JJ)V

    .line 144
    :cond_0
    monitor-exit v1

    .line 145
    return-void

    .line 144
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
    .line 50
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 51
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatRoomImpl;->finalize(J)V

    .line 53
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 54
    return-void
.end method

.method public getCall()Lorg/linphone/core/LinphoneCall;
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatRoomImpl;->getCall(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCall;

    return-object v0
.end method

.method public getChar()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatRoomImpl;->getChar(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getCore()Lorg/linphone/core/LinphoneCore;
    .locals 2

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatRoomImpl;->getCore(J)Ljava/lang/Object;

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

.method public getHistory()[Lorg/linphone/core/LinphoneChatMessage;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneChatRoomImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 86
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/linphone/core/LinphoneChatRoomImpl;->getHistory(I)[Lorg/linphone/core/LinphoneChatMessage;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistory(I)[Lorg/linphone/core/LinphoneChatMessage;
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneChatRoomImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 99
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    invoke-direct {p0, v2, v3, p1}, Lorg/linphone/core/LinphoneChatRoomImpl;->getHistory(JI)[Ljava/lang/Object;

    move-result-object v0

    .line 100
    invoke-direct {p0, v0}, Lorg/linphone/core/LinphoneChatRoomImpl;->getHistoryPrivate([Ljava/lang/Object;)[Lorg/linphone/core/LinphoneChatMessage;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistoryRange(II)[Lorg/linphone/core/LinphoneChatMessage;
    .locals 4

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneChatRoomImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 92
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/linphone/core/LinphoneChatRoomImpl;->getHistoryRange(JII)[Ljava/lang/Object;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lorg/linphone/core/LinphoneChatRoomImpl;->getHistoryPrivate([Ljava/lang/Object;)[Lorg/linphone/core/LinphoneChatMessage;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistorySize()I
    .locals 4

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneChatRoomImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 112
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneChatRoomImpl;->getHistorySize(J)I

    move-result v0

    monitor-exit v1

    return v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPeerAddress()Lorg/linphone/core/LinphoneAddress;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v2, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneChatRoomImpl;->getPeerAddress(J)J

    move-result-wide v2

    sget-object v1, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v0, v2, v3, v1}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    return-object v0
.end method

.method public getUnreadMessagesCount()I
    .locals 4

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneChatRoomImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 106
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneChatRoomImpl;->getUnreadMessagesCount(J)I

    move-result v0

    monitor-exit v1

    return v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isRemoteComposing()Z
    .locals 4

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneChatRoomImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneChatRoomImpl;->isRemoteComposing(J)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public islimeAvailable()Z
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatRoomImpl;->islimeAvailable(J)Z

    move-result v0

    return v0
.end method

.method public markAsRead()V
    .locals 4

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneChatRoomImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 136
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneChatRoomImpl;->markAsRead(J)V

    .line 137
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendChatMessage(Lorg/linphone/core/LinphoneChatMessage;)V
    .locals 6

    .prologue
    .line 174
    iget-wide v1, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    move-object v0, p1

    check-cast v0, Lorg/linphone/core/LinphoneChatMessageImpl;

    invoke-virtual {v0}, Lorg/linphone/core/LinphoneChatMessageImpl;->getNativePtr()J

    move-result-wide v4

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/linphone/core/LinphoneChatRoomImpl;->sendChatMessage(JLjava/lang/Object;J)V

    .line 175
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneChatRoomImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 66
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    invoke-direct {p0, v2, v3, p1}, Lorg/linphone/core/LinphoneChatRoomImpl;->sendMessage(JLjava/lang/String;)V

    .line 67
    monitor-exit v1

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendMessage(Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneChatMessage$StateListener;)V
    .locals 9

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneChatRoomImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v8

    monitor-enter v8

    .line 73
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneChatRoomImpl;->nativePtr:J

    move-object v0, p1

    check-cast v0, Lorg/linphone/core/LinphoneChatMessageImpl;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/linphone/core/LinphoneChatMessageImpl;->getNativePtr()J

    move-result-wide v5

    move-object v1, p0

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneChatRoomImpl;->sendMessage2(JLjava/lang/Object;JLorg/linphone/core/LinphoneChatMessage$StateListener;)V

    .line 74
    monitor-exit v8

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
