.class public Lorg/linphone/core/LinphoneAddressImpl;
.super Ljava/lang/Object;
.source "LinphoneAddressImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphoneAddress;


# instance fields
.field protected final nativePtr:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {p0, p1, p2, v0}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    .line 62
    return-void
.end method

.method protected constructor <init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lorg/linphone/core/LinphoneAddressImpl$1;->$SwitchMap$org$linphone$core$LinphoneAddressImpl$WrapMode:[I

    invoke-virtual {p3}, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    .line 77
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iput-wide p1, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneAddressImpl;->clone(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    goto :goto_0

    .line 72
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneAddressImpl;->ref(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/linphone/core/LinphoneAddressImpl;->newLinphoneAddressImpl(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    .line 49
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot create LinphoneAdress from ["

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

    .line 52
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Lorg/linphone/core/LinphoneAddressImpl;->newLinphoneAddressImpl(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    .line 56
    invoke-virtual {p0, p1}, Lorg/linphone/core/LinphoneAddressImpl;->setUserName(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p2}, Lorg/linphone/core/LinphoneAddressImpl;->setDomain(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private native clone(J)J
.end method

.method private native getDisplayName(J)Ljava/lang/String;
.end method

.method private native getDomain(J)Ljava/lang/String;
.end method

.method private native getPort(J)I
.end method

.method private native getTransport(J)I
.end method

.method private native getUserName(J)Ljava/lang/String;
.end method

.method private native newLinphoneAddressImpl(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native ref(J)J
.end method

.method private native setDisplayName(JLjava/lang/String;)V
.end method

.method private native setDomain(JLjava/lang/String;)V
.end method

.method private native setPort(JI)V
.end method

.method private native setTransport(JI)V
.end method

.method private native setUserName(JLjava/lang/String;)V
.end method

.method private native toString(J)Ljava/lang/String;
.end method

.method private native toUri(J)Ljava/lang/String;
.end method

.method private native unref(J)V
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneAddressImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asStringUriOnly()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAddressImpl;->toUri(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clean()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAddressImpl;->unref(J)V

    .line 81
    :cond_0
    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAddressImpl;->getDisplayName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAddressImpl;->getDomain(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAddressImpl;->getPort(J)I

    move-result v0

    return v0
.end method

.method public getTransport()Lorg/linphone/core/LinphoneAddress$TransportType;
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAddressImpl;->getTransport(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneAddress$TransportType;->fromInt(I)Lorg/linphone/core/LinphoneAddress$TransportType;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAddressImpl;->getUserName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAddressImpl;->setDisplayName(JLjava/lang/String;)V

    .line 116
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAddressImpl;->setDomain(JLjava/lang/String;)V

    .line 119
    return-void
.end method

.method public setPort(I)V
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAddressImpl;->setPort(JI)V

    return-void
.end method

.method public setTransport(Lorg/linphone/core/LinphoneAddress$TransportType;)V
    .locals 3

    .prologue
    .line 125
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-virtual {p1}, Lorg/linphone/core/LinphoneAddress$TransportType;->toInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/LinphoneAddressImpl;->setTransport(JI)V

    .line 126
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneAddressImpl;->setUserName(JLjava/lang/String;)V

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAddressImpl;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneAddressImpl;->toUri(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
