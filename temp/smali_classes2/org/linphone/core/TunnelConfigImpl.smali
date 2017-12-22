.class public Lorg/linphone/core/TunnelConfigImpl;
.super Ljava/lang/Object;
.source "TunnelConfigImpl.java"

# interfaces
.implements Lorg/linphone/core/TunnelConfig;


# instance fields
.field mNativePtr:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lorg/linphone/core/TunnelConfigImpl;->mNativePtr:J

    .line 7
    return-void
.end method

.method private native destroy(J)V
.end method

.method private native enableSip(JZ)V
.end method

.method private native getDelay(J)I
.end method

.method private native getHost(J)Ljava/lang/String;
.end method

.method private native getHost2(J)Ljava/lang/String;
.end method

.method private native getPort(J)I
.end method

.method private native getPort2(J)I
.end method

.method private native getRemoteUdpMirrorPort(J)I
.end method

.method private native setDelay(JI)V
.end method

.method private native setHost(JLjava/lang/String;)V
.end method

.method private native setHost2(JLjava/lang/String;)V
.end method

.method private native setPort(JI)V
.end method

.method private native setPort2(JI)V
.end method

.method private native setRemoteUdpMirrorPort(JI)V
.end method


# virtual methods
.method protected finalize()V
    .locals 4

    .prologue
    .line 71
    iget-wide v0, p0, Lorg/linphone/core/TunnelConfigImpl;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/linphone/core/TunnelConfigImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/TunnelConfigImpl;->destroy(J)V

    .line 72
    :cond_0
    return-void
.end method

.method public getDelay()I
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/linphone/core/TunnelConfigImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/TunnelConfigImpl;->getDelay(J)I

    move-result v0

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Lorg/linphone/core/TunnelConfigImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/TunnelConfigImpl;->getHost(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lorg/linphone/core/TunnelConfigImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/TunnelConfigImpl;->getHost2(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lorg/linphone/core/TunnelConfigImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/TunnelConfigImpl;->getPort(J)I

    move-result v0

    return v0
.end method

.method public getPort2()I
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lorg/linphone/core/TunnelConfigImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/TunnelConfigImpl;->getPort2(J)I

    move-result v0

    return v0
.end method

.method public getRemoteUdpMirrorPort()I
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/linphone/core/TunnelConfigImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/TunnelConfigImpl;->getRemoteUdpMirrorPort(J)I

    move-result v0

    return v0
.end method

.method public setDelay(I)V
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/linphone/core/TunnelConfigImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/TunnelConfigImpl;->setDelay(JI)V

    .line 67
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lorg/linphone/core/TunnelConfigImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/TunnelConfigImpl;->setHost(JLjava/lang/String;)V

    .line 17
    return-void
.end method

.method public setHost2(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lorg/linphone/core/TunnelConfigImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/TunnelConfigImpl;->setHost2(JLjava/lang/String;)V

    .line 37
    return-void
.end method

.method public setPort(I)V
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lorg/linphone/core/TunnelConfigImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/TunnelConfigImpl;->setPort(JI)V

    .line 27
    return-void
.end method

.method public setPort2(I)V
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/linphone/core/TunnelConfigImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/TunnelConfigImpl;->setPort2(JI)V

    .line 47
    return-void
.end method

.method public setRemoteUdpMirrorPort(I)V
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/linphone/core/TunnelConfigImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/TunnelConfigImpl;->setRemoteUdpMirrorPort(JI)V

    .line 57
    return-void
.end method
