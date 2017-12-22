.class Lorg/linphone/core/LinphoneAuthInfoImpl;
.super Ljava/lang/Object;
.source "LinphoneAuthInfoImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphoneAuthInfo;


# instance fields
.field protected final nativePtr:J

.field ownPtr:Z


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->ownPtr:Z

    .line 61
    iput-wide p1, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    .line 62
    iput-boolean v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->ownPtr:Z

    .line 63
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/linphone/core/LinphoneAuthInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->ownPtr:Z

    .line 51
    invoke-direct {p0}, Lorg/linphone/core/LinphoneAuthInfoImpl;->newLinphoneAuthInfo()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    .line 52
    invoke-virtual {p0, p1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->setUsername(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p2}, Lorg/linphone/core/LinphoneAuthInfoImpl;->setUserId(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p3}, Lorg/linphone/core/LinphoneAuthInfoImpl;->setPassword(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p4}, Lorg/linphone/core/LinphoneAuthInfoImpl;->setHa1(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p6}, Lorg/linphone/core/LinphoneAuthInfoImpl;->setDomain(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p5}, Lorg/linphone/core/LinphoneAuthInfoImpl;->setRealm(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->ownPtr:Z

    .line 59
    return-void
.end method

.method private native delete(J)V
.end method

.method private native getDomain(J)Ljava/lang/String;
.end method

.method private native getHa1(J)Ljava/lang/String;
.end method

.method private native getPassword(J)Ljava/lang/String;
.end method

.method private native getRealm(J)Ljava/lang/String;
.end method

.method private native getTlsCertificate(J)Ljava/lang/String;
.end method

.method private native getTlsCertificatePath(J)Ljava/lang/String;
.end method

.method private native getTlsKey(J)Ljava/lang/String;
.end method

.method private native getTlsKeyPath(J)Ljava/lang/String;
.end method

.method private native getUserId(J)Ljava/lang/String;
.end method

.method private native getUsername(J)Ljava/lang/String;
.end method

.method private native newLinphoneAuthInfo()J
.end method

.method private native setDomain(JLjava/lang/String;)V
.end method

.method private native setHa1(JLjava/lang/String;)V
.end method

.method private native setPassword(JLjava/lang/String;)V
.end method

.method private native setRealm(JLjava/lang/String;)V
.end method

.method private native setTlsCertificate(JLjava/lang/String;)V
.end method

.method private native setTlsCertificatePath(JLjava/lang/String;)V
.end method

.method private native setTlsKey(JLjava/lang/String;)V
.end method

.method private native setTlsKeyPath(JLjava/lang/String;)V
.end method

.method private native setUserId(JLjava/lang/String;)V
.end method

.method private native setUsername(JLjava/lang/String;)V
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneAuthInfoImpl;->clone()Lorg/linphone/core/LinphoneAuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/linphone/core/LinphoneAuthInfo;
    .locals 7

    .prologue
    .line 113
    invoke-static {}, Lorg/linphone/core/LinphoneCoreFactory;->instance()Lorg/linphone/core/LinphoneCoreFactory;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneAuthInfoImpl;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneAuthInfoImpl;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneAuthInfoImpl;->getPassword()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneAuthInfoImpl;->getHa1()Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneAuthInfoImpl;->getRealm()Ljava/lang/String;

    move-result-object v5

    .line 119
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneAuthInfoImpl;->getDomain()Ljava/lang/String;

    move-result-object v6

    .line 113
    invoke-virtual/range {v0 .. v6}, Lorg/linphone/core/LinphoneCoreFactory;->createAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneAuthInfo;

    move-result-object v0

    .line 120
    return-object v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->ownPtr:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->delete(J)V

    .line 66
    :cond_0
    return-void
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->getDomain(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHa1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->getHa1(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->getPassword(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->getRealm(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTlsCertificate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->getTlsCertificate(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTlsCertificatePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->getTlsCertificatePath(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTlsKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->getTlsKey(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTlsKeyPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->getTlsKeyPath(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->getUserId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->getUsername(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->setDomain(JLjava/lang/String;)V

    .line 106
    return-void
.end method

.method public setHa1(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->setHa1(JLjava/lang/String;)V

    .line 102
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->setPassword(JLjava/lang/String;)V

    .line 78
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->setRealm(JLjava/lang/String;)V

    .line 81
    return-void
.end method

.method public setTlsCertificate(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->setTlsCertificate(JLjava/lang/String;)V

    .line 146
    return-void
.end method

.method public setTlsCertificatePath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->setTlsCertificatePath(JLjava/lang/String;)V

    .line 156
    return-void
.end method

.method public setTlsKey(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->setTlsKey(JLjava/lang/String;)V

    .line 151
    return-void
.end method

.method public setTlsKeyPath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->setTlsKeyPath(JLjava/lang/String;)V

    .line 161
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->setUserId(JLjava/lang/String;)V

    .line 93
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAuthInfoImpl;->setUsername(JLjava/lang/String;)V

    .line 84
    return-void
.end method
