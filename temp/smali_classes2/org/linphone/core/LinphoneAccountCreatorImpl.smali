.class public Lorg/linphone/core/LinphoneAccountCreatorImpl;
.super Ljava/lang/Object;
.source "LinphoneAccountCreatorImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphoneAccountCreator;


# instance fields
.field protected nativePtr:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    check-cast p1, Lorg/linphone/core/LinphoneCoreImpl;

    iget-wide v0, p1, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p2}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->newLinphoneAccountCreator(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    .line 32
    return-void
.end method

.method private native activateAccount(J)I
.end method

.method private native activatePhoneNumberLink(J)I
.end method

.method private native configure(J)Lorg/linphone/core/LinphoneProxyConfig;
.end method

.method private native createAccount(J)I
.end method

.method private native getDisplayName(J)Ljava/lang/String;
.end method

.method private native getDomain(J)Ljava/lang/String;
.end method

.method private native getEmail(J)Ljava/lang/String;
.end method

.method private native getHa1(J)Ljava/lang/String;
.end method

.method private native getPassword(J)Ljava/lang/String;
.end method

.method private native getPhoneNumber(J)Ljava/lang/String;
.end method

.method private native getPrefix(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native getRoute(J)Ljava/lang/String;
.end method

.method private native getTransport(J)I
.end method

.method private native getUsername(J)Ljava/lang/String;
.end method

.method private native isAccountActivated(J)I
.end method

.method private native isAccountLinked(J)I
.end method

.method private native isAccountUsed(J)I
.end method

.method private native isPhoneNumberUsed(J)I
.end method

.method private native linkPhoneNumberWithAccount(J)I
.end method

.method private native newLinphoneAccountCreator(JLjava/lang/String;)J
.end method

.method private native recoverPhoneAccount(J)I
.end method

.method private native setActivationCode(JLjava/lang/String;)I
.end method

.method private native setDisplayName(JLjava/lang/String;)I
.end method

.method private native setDomain(JLjava/lang/String;)I
.end method

.method private native setEmail(JLjava/lang/String;)I
.end method

.method private native setHa1(JLjava/lang/String;)I
.end method

.method private native setLanguage(JLjava/lang/String;)I
.end method

.method private native setListener(JLorg/linphone/core/LinphoneAccountCreator$LinphoneAccountCreatorListener;)V
.end method

.method private native setPassword(JLjava/lang/String;)I
.end method

.method private native setPhoneNumber(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native setRoute(JLjava/lang/String;)I
.end method

.method private native setTransport(JI)I
.end method

.method private native setUsername(JLjava/lang/String;)I
.end method

.method private native unref(J)V
.end method

.method private native updatePassword(JLjava/lang/String;)I
.end method


# virtual methods
.method public activateAccount()Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->activateAccount(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public activatePhoneNumberLink()Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 220
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->activatePhoneNumberLink(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public configure()Lorg/linphone/core/LinphoneProxyConfig;
    .locals 2

    .prologue
    .line 238
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->configure(J)Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object v0

    return-object v0
.end method

.method public createAccount()Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->createAccount(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->unref(J)V

    .line 41
    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->getDisplayName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->getDomain(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->getEmail(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHa1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->getHa1(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    return-wide v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->getPassword(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->getPhoneNumber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->getPrefix(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoute()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->getRoute(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransport()Lorg/linphone/core/LinphoneAddress$TransportType;
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->getTransport(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAddress$TransportType;->fromInt(I)Lorg/linphone/core/LinphoneAddress$TransportType;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->getUsername(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAccountActivated()Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->isAccountActivated(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public isAccountLinked()Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->isAccountLinked(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public isAccountUsed()Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->isAccountUsed(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public isPhoneNumberUsed()Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->isPhoneNumberUsed(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public linkPhoneNumberWithAccount()Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->linkPhoneNumberWithAccount(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public recoverPhoneAccount()Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->recoverPhoneAccount(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public setActivationCode(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->setActivationCode(JLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->setDisplayName(JLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->setDomain(JLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->setEmail(JLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public setHa1(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->setHa1(JLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->setLanguage(JLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Lorg/linphone/core/LinphoneAccountCreator$LinphoneAccountCreatorListener;)V
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->setListener(JLorg/linphone/core/LinphoneAccountCreator$LinphoneAccountCreatorListener;)V

    .line 47
    return-void
.end method

.method public setPassword(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->setPassword(JLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public setPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->setPhoneNumber(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public setRoute(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->setRoute(JLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public setTransport(Lorg/linphone/core/LinphoneAddress$TransportType;)Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 3

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-virtual {p1}, Lorg/linphone/core/LinphoneAddress$TransportType;->toInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->setTransport(JI)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public setUsername(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->setUsername(JLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method

.method public updatePassword(Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator$Status;
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAccountCreatorImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAccountCreatorImpl;->updatePassword(JLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAccountCreator$Status;->fromInt(I)Lorg/linphone/core/LinphoneAccountCreator$Status;

    move-result-object v0

    return-object v0
.end method
