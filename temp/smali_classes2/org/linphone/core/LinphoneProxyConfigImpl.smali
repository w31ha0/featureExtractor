.class Lorg/linphone/core/LinphoneProxyConfigImpl;
.super Ljava/lang/Object;
.source "LinphoneProxyConfigImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphoneProxyConfig;


# instance fields
.field protected mCore:Lorg/linphone/core/LinphoneCoreImpl;

.field protected final nativePtr:J

.field userData:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lorg/linphone/core/LinphoneCoreImpl;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->mCore:Lorg/linphone/core/LinphoneCoreImpl;

    .line 46
    iget-wide v0, p1, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->createProxyConfig(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    .line 47
    return-void
.end method

.method protected constructor <init>(Lorg/linphone/core/LinphoneCoreImpl;J)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->mCore:Lorg/linphone/core/LinphoneCoreImpl;

    .line 51
    iput-wide p2, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    .line 52
    return-void
.end method

.method protected constructor <init>(Lorg/linphone/core/LinphoneCoreImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->mCore:Lorg/linphone/core/LinphoneCoreImpl;

    .line 37
    iget-wide v0, p1, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->createProxyConfig(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    .line 38
    invoke-virtual {p0, p2}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setIdentity(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p3}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setProxy(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p4}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setRoute(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p5}, Lorg/linphone/core/LinphoneProxyConfigImpl;->enableRegister(Z)Lorg/linphone/core/LinphoneProxyConfig;

    .line 42
    return-void
.end method

.method private native avpfEnabled(J)Z
.end method

.method private native createProxyConfig(J)J
.end method

.method private native done(J)V
.end method

.method private native edit(J)V
.end method

.method private native enableAvpf(JZ)V
.end method

.method private native enablePublish(JZ)V
.end method

.method private native enableQualityReporting(JZ)V
.end method

.method private native enableRegister(JZ)V
.end method

.method private native finalize(J)V
.end method

.method private native getAddress(J)J
.end method

.method private native getAvpfRRInterval(J)I
.end method

.method private native getContactParameters(J)Ljava/lang/String;
.end method

.method private native getContactUriParameters(J)Ljava/lang/String;
.end method

.method private native getCustomHeader(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native getDialEscapePlus(J)Z
.end method

.method private native getDialPrefix(J)Ljava/lang/String;
.end method

.method private native getDomain(J)Ljava/lang/String;
.end method

.method private native getError(J)I
.end method

.method private native getErrorInfo(J)J
.end method

.method private native getExpires(J)I
.end method

.method private native getIdentity(J)Ljava/lang/String;
.end method

.method private native getPrivacy(J)I
.end method

.method private native getProxy(J)Ljava/lang/String;
.end method

.method private native getPublishExpires(J)I
.end method

.method private native getQualityReportingCollector(J)Ljava/lang/String;
.end method

.method private native getQualityReportingInterval(J)I
.end method

.method private native getRealm(J)Ljava/lang/String;
.end method

.method private native getRoute(J)Ljava/lang/String;
.end method

.method private native getState(J)I
.end method

.method private native isPhoneNumber(JLjava/lang/String;)Z
.end method

.method private native isRegisterEnabled(J)Z
.end method

.method private native isRegistered(J)Z
.end method

.method private isValid()V
    .locals 4

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "proxy config removed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    return-void
.end method

.method private native lookupCCCFromE164(JLjava/lang/String;)I
.end method

.method private native lookupCCCFromIso(JLjava/lang/String;)I
.end method

.method private native newLinphoneProxyConfig()J
.end method

.method private native normalizePhoneNumber(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native normalizeSipUri(JLjava/lang/String;)J
.end method

.method private native pauseRegister(J)V
.end method

.method private native publishEnabled(J)Z
.end method

.method private native qualityReportingEnabled(J)Z
.end method

.method private native refreshRegister(J)V
.end method

.method private native setAddress(JJ)V
.end method

.method private native setAvpfRRInterval(JI)V
.end method

.method private native setContactParameters(JLjava/lang/String;)V
.end method

.method private native setContactUriParameters(JLjava/lang/String;)V
.end method

.method private native setCustomHeader(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native setDialEscapePlus(JZ)V
.end method

.method private native setDialPrefix(JLjava/lang/String;)V
.end method

.method private native setExpires(JI)V
.end method

.method private native setIdentity(JLjava/lang/String;)V
.end method

.method private native setPrivacy(JI)V
.end method

.method private native setProxy(JLjava/lang/String;)I
.end method

.method private native setPublishExpires(JI)V
.end method

.method private native setQualityReportingCollector(JLjava/lang/String;)V
.end method

.method private native setQualityReportingInterval(JI)V
.end method

.method private native setRealm(JLjava/lang/String;)V
.end method

.method private native setRoute(JLjava/lang/String;)I
.end method


# virtual methods
.method public avpfEnabled()Z
    .locals 2

    .prologue
    .line 277
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 278
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->avpfEnabled(J)Z

    move-result v0

    return v0
.end method

.method public done()V
    .locals 4

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 112
    iget-object v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->mCore:Lorg/linphone/core/LinphoneCoreImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->mCore:Lorg/linphone/core/LinphoneCoreImpl;

    .line 113
    :goto_0
    monitor-enter v0

    .line 114
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneProxyConfigImpl;->done(J)V

    .line 115
    monitor-exit v0

    .line 116
    return-void

    :cond_0
    move-object v0, p0

    .line 112
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public edit()Lorg/linphone/core/LinphoneProxyConfig;
    .locals 4

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 120
    iget-object v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->mCore:Lorg/linphone/core/LinphoneCoreImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->mCore:Lorg/linphone/core/LinphoneCoreImpl;

    .line 121
    :goto_0
    monitor-enter v0

    .line 122
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneProxyConfigImpl;->edit(J)V

    .line 123
    monitor-exit v0

    .line 124
    return-object p0

    :cond_0
    move-object v0, p0

    .line 120
    goto :goto_0

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableAvpf(Z)V
    .locals 2

    .prologue
    .line 270
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 271
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->enableAvpf(JZ)V

    .line 272
    return-void
.end method

.method public enablePublish(Z)V
    .locals 2

    .prologue
    .line 212
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 213
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->enablePublish(JZ)V

    .line 214
    return-void
.end method

.method public enableQualityReporting(Z)V
    .locals 2

    .prologue
    .line 326
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 327
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->enableQualityReporting(JZ)V

    .line 328
    return-void
.end method

.method public enableRegister(Z)Lorg/linphone/core/LinphoneProxyConfig;
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 106
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->enableRegister(JZ)V

    .line 107
    return-object p0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 62
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->finalize(J)V

    .line 64
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 65
    return-void
.end method

.method public getAddress()Lorg/linphone/core/LinphoneAddress;
    .locals 4

    .prologue
    .line 181
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 182
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getAddress(J)J

    move-result-wide v2

    .line 183
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl;

    sget-object v1, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v0, v2, v3, v1}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    goto :goto_0
.end method

.method public getAvpfRRInterval()I
    .locals 2

    .prologue
    .line 291
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 292
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getAvpfRRInterval(J)I

    move-result v0

    return v0
.end method

.method public getContactParameters()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 299
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getContactParameters(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactUriParameters()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 313
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getContactUriParameters(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 415
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getCustomHeader(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDialEscapePlus()Z
    .locals 2

    .prologue
    .line 173
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 174
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getDialEscapePlus(J)Z

    move-result v0

    return v0
.end method

.method public getDialPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 162
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getDialPrefix(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 166
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getDomain(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lorg/linphone/core/Reason;
    .locals 2

    .prologue
    .line 250
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 251
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getError(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/Reason;->fromInt(I)Lorg/linphone/core/Reason;

    move-result-object v0

    return-object v0
.end method

.method public getErrorInfo()Lorg/linphone/core/ErrorInfo;
    .locals 4

    .prologue
    .line 320
    new-instance v0, Lorg/linphone/core/ErrorInfoImpl;

    iget-wide v2, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getErrorInfo(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/linphone/core/ErrorInfoImpl;-><init>(J)V

    return-object v0
.end method

.method public getExpires()I
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 226
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getExpires(J)I

    move-result v0

    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 178
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getIdentity(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacy()I
    .locals 2

    .prologue
    .line 263
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 264
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getPrivacy(J)I

    move-result v0

    return v0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 191
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getProxy(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublishExpires()I
    .locals 2

    .prologue
    .line 387
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 388
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getPublishExpires(J)I

    move-result v0

    return v0
.end method

.method public getQualityReportingCollector()Ljava/lang/String;
    .locals 2

    .prologue
    .line 360
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 361
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getQualityReportingCollector(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualityReportingInterval()I
    .locals 2

    .prologue
    .line 346
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 347
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getQualityReportingInterval(J)I

    move-result v0

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 375
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getRealm(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoute()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 203
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getRoute(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lorg/linphone/core/LinphoneCore$RegistrationState;
    .locals 2

    .prologue
    .line 216
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 217
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->getState(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$RegistrationState;->fromInt(I)Lorg/linphone/core/LinphoneCore$RegistrationState;

    move-result-object v0

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public isPhoneNumber(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 394
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isPhoneNumber(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRegistered()Z
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 195
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isRegistered(J)Z

    move-result v0

    return v0
.end method

.method public lookupCCCFromE164(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 244
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 245
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->lookupCCCFromE164(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lookupCCCFromIso(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 239
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 240
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->lookupCCCFromIso(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public normalizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 145
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->normalizePhoneNumber(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public normalizeSipUri(Ljava/lang/String;)Lorg/linphone/core/LinphoneAddress;
    .locals 4

    .prologue
    .line 148
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 149
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->normalizeSipUri(JLjava/lang/String;)J

    move-result-wide v2

    .line 150
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl;

    sget-object v1, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v0, v2, v3, v1}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    goto :goto_0
.end method

.method public pauseRegister()V
    .locals 2

    .prologue
    .line 427
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->pauseRegister(J)V

    .line 428
    return-void
.end method

.method public publishEnabled()Z
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 230
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->publishEnabled(J)Z

    move-result v0

    return v0
.end method

.method public qualityReportingEnabled()Z
    .locals 2

    .prologue
    .line 333
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 334
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->avpfEnabled(J)Z

    move-result v0

    return v0
.end method

.method public refreshRegister()V
    .locals 2

    .prologue
    .line 421
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->refreshRegister(J)V

    .line 422
    return-void
.end method

.method public registerEnabled()Z
    .locals 2

    .prologue
    .line 198
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 199
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isRegisterEnabled(J)Z

    move-result v0

    return v0
.end method

.method public setAddress(Lorg/linphone/core/LinphoneAddress;)V
    .locals 4

    .prologue
    .line 133
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 134
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setAddress(JJ)V

    .line 135
    return-void
.end method

.method public setAvpfRRInterval(I)V
    .locals 2

    .prologue
    .line 284
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 285
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setAvpfRRInterval(JI)V

    .line 286
    return-void
.end method

.method public setContactParameters(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 234
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 235
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setContactParameters(JLjava/lang/String;)V

    .line 236
    return-void
.end method

.method public setContactUriParameters(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 305
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 306
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setContactUriParameters(JLjava/lang/String;)V

    .line 307
    return-void
.end method

.method public setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 409
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setCustomHeader(JLjava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public setDialEscapePlus(Z)V
    .locals 2

    .prologue
    .line 169
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 170
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setDialEscapePlus(JZ)V

    .line 171
    return-void
.end method

.method public setDialPrefix(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 157
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 158
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setDialPrefix(JLjava/lang/String;)V

    .line 159
    return-void
.end method

.method public setExpires(I)V
    .locals 2

    .prologue
    .line 221
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 222
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setExpires(JI)V

    .line 223
    return-void
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 129
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setIdentity(JLjava/lang/String;)V

    .line 130
    return-void
.end method

.method public setPrivacy(I)V
    .locals 2

    .prologue
    .line 256
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 257
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setPrivacy(JI)V

    .line 258
    return-void
.end method

.method public setProxy(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 138
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 139
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setProxy(JLjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad proxy address ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    return-void
.end method

.method public setPublishExpires(I)V
    .locals 2

    .prologue
    .line 381
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 382
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setPublishExpires(JI)V

    .line 383
    return-void
.end method

.method public setQualityReportingCollector(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 353
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 354
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setQualityReportingCollector(JLjava/lang/String;)V

    .line 355
    return-void
.end method

.method public setQualityReportingInterval(I)V
    .locals 2

    .prologue
    .line 340
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 341
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setQualityReportingInterval(JI)V

    .line 342
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 367
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 368
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setRealm(JLjava/lang/String;)V

    .line 369
    return-void
.end method

.method public setRoute(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 206
    invoke-direct {p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;->isValid()V

    .line 207
    iget-wide v0, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneProxyConfigImpl;->setRoute(JLjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cannot set route ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lorg/linphone/core/LinphoneProxyConfigImpl;->userData:Ljava/lang/Object;

    .line 400
    return-void
.end method
