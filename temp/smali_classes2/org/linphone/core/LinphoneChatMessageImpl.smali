.class public Lorg/linphone/core/LinphoneChatMessageImpl;
.super Ljava/lang/Object;
.source "LinphoneChatMessageImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphoneChatMessage;


# instance fields
.field protected nativePtr:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    .line 25
    return-void
.end method

.method private native addCustomHeader(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native cancelFileTransfer(J)V
.end method

.method private native downloadFile(J)I
.end method

.method private native getAppData(J)Ljava/lang/String;
.end method

.method private native getCustomHeader(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native getErrorInfo(J)J
.end method

.method private native getExternalBodyUrl(J)Ljava/lang/String;
.end method

.method private native getFileTransferInformation(J)Ljava/lang/Object;
.end method

.method private native getFrom(J)J
.end method

.method private native getPeerAddress(J)J
.end method

.method private native getReason(J)I
.end method

.method private native getStatus(J)I
.end method

.method private native getStorageId(J)I
.end method

.method private native getText(J)[B
.end method

.method private native getTime(J)J
.end method

.method private native getTo(J)J
.end method

.method private native isOutgoing(J)Z
.end method

.method private native isRead(J)Z
.end method

.method private native isSecured(J)Z
.end method

.method private native putChar(JJ)V
.end method

.method private native setAppData(JLjava/lang/String;)V
.end method

.method private native setExternalBodyUrl(JLjava/lang/String;)V
.end method

.method private native setFileTransferFilepath(JLjava/lang/String;)V
.end method

.method private native setListener(JLorg/linphone/core/LinphoneChatMessage$LinphoneChatMessageListener;)V
.end method

.method private native store(J)V
.end method

.method private native unref(J)V
.end method


# virtual methods
.method public addCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneChatMessageImpl;->addCustomHeader(JLjava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public cancelFileTransfer()V
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatMessageImpl;->cancelFileTransfer(J)V

    .line 141
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 164
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 165
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatMessageImpl;->unref(J)V

    .line 166
    iput-wide v2, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    .line 168
    :cond_0
    return-void
.end method

.method public downloadFile()I
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatMessageImpl;->downloadFile(J)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneChatMessageImpl;->destroy()V

    .line 116
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 117
    return-void
.end method

.method public getAppData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatMessageImpl;->getAppData(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneChatMessageImpl;->getCustomHeader(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorInfo()Lorg/linphone/core/ErrorInfo;
    .locals 4

    .prologue
    .line 112
    new-instance v0, Lorg/linphone/core/ErrorInfoImpl;

    iget-wide v2, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneChatMessageImpl;->getErrorInfo(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/linphone/core/ErrorInfoImpl;-><init>(J)V

    return-object v0
.end method

.method public getExternalBodyUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatMessageImpl;->getExternalBodyUrl(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileTransferInformation()Lorg/linphone/core/LinphoneContent;
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatMessageImpl;->getFileTransferInformation(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneContent;

    return-object v0
.end method

.method public getFrom()Lorg/linphone/core/LinphoneAddress;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v2, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneChatMessageImpl;->getFrom(J)J

    move-result-wide v2

    sget-object v1, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v0, v2, v3, v1}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    return-object v0
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    return-wide v0
.end method

.method public getPeerAddress()Lorg/linphone/core/LinphoneAddress;
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v2, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneChatMessageImpl;->getPeerAddress(J)J

    move-result-wide v2

    sget-object v1, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v0, v2, v3, v1}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    return-object v0
.end method

.method public getReason()Lorg/linphone/core/Reason;
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatMessageImpl;->getReason(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/Reason;->fromInt(I)Lorg/linphone/core/Reason;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lorg/linphone/core/LinphoneChatMessage$State;
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatMessageImpl;->getStatus(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneChatMessage$State;->fromInt(I)Lorg/linphone/core/LinphoneChatMessage$State;

    move-result-object v0

    return-object v0
.end method

.method public getStorageId()I
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatMessageImpl;->getStorageId(J)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatMessageImpl;->getText(J)[B

    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTime()J
    .locals 4

    .prologue
    .line 81
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatMessageImpl;->getTime(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTo()Lorg/linphone/core/LinphoneAddress;
    .locals 4

    .prologue
    .line 66
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v2, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneChatMessageImpl;->getTo(J)J

    move-result-wide v2

    sget-object v1, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v0, v2, v3, v1}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    return-object v0
.end method

.method public isOutgoing()Z
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatMessageImpl;->isOutgoing(J)Z

    move-result v0

    return v0
.end method

.method public isRead()Z
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatMessageImpl;->isRead(J)Z

    move-result v0

    return v0
.end method

.method public isSecured()Z
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatMessageImpl;->isSecured(J)Z

    move-result v0

    return v0
.end method

.method public putChar(J)V
    .locals 3

    .prologue
    .line 161
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneChatMessageImpl;->putChar(JJ)V

    .line 162
    return-void
.end method

.method public setAppData(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneChatMessageImpl;->setAppData(JLjava/lang/String;)V

    .line 129
    return-void
.end method

.method public setExternalBodyUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneChatMessageImpl;->setExternalBodyUrl(JLjava/lang/String;)V

    .line 56
    return-void
.end method

.method public setFileTransferFilepath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneChatMessageImpl;->setFileTransferFilepath(JLjava/lang/String;)V

    .line 146
    return-void
.end method

.method public setListener(Lorg/linphone/core/LinphoneChatMessage$LinphoneChatMessageListener;)V
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneChatMessageImpl;->setListener(JLorg/linphone/core/LinphoneChatMessage$LinphoneChatMessageListener;)V

    .line 156
    return-void
.end method

.method public store()V
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/linphone/core/LinphoneChatMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneChatMessageImpl;->store(J)V

    .line 98
    return-void
.end method
