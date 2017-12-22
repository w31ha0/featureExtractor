.class public Lorg/linphone/core/LinphoneNatPolicyImpl;
.super Ljava/lang/Object;
.source "LinphoneNatPolicyImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphoneNatPolicy;


# instance fields
.field protected final mNativePtr:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lorg/linphone/core/LinphoneNatPolicyImpl;->mNativePtr:J

    .line 42
    return-void
.end method

.method private native clear(J)V
.end method

.method private native enableIce(JZ)V
.end method

.method private native enableStun(JZ)V
.end method

.method private native enableTurn(JZ)V
.end method

.method private native enableUpnp(JZ)V
.end method

.method private native getCore(J)Ljava/lang/Object;
.end method

.method private declared-synchronized getCore()Lorg/linphone/core/LinphoneCore;
    .locals 2

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneNatPolicyImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneNatPolicyImpl;->getCore(J)Ljava/lang/Object;

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

.method private native getStunServer(J)Ljava/lang/String;
.end method

.method private native getStunServerUsername(J)Ljava/lang/String;
.end method

.method private native iceEnabled(J)Z
.end method

.method private native setStunServer(JLjava/lang/String;)V
.end method

.method private native setStunServerUsername(JLjava/lang/String;)V
.end method

.method private native stunEnabled(J)Z
.end method

.method private native turnEnabled(J)Z
.end method

.method private native upnpEnabled(J)Z
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/linphone/core/LinphoneNatPolicyImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 50
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneNatPolicyImpl;->mNativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneNatPolicyImpl;->clear(J)V

    .line 51
    monitor-exit v1

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableIce(Z)V
    .locals 4

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/linphone/core/LinphoneNatPolicyImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 86
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneNatPolicyImpl;->mNativePtr:J

    invoke-direct {p0, v2, v3, p1}, Lorg/linphone/core/LinphoneNatPolicyImpl;->enableIce(JZ)V

    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableStun(Z)V
    .locals 4

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/linphone/core/LinphoneNatPolicyImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 62
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneNatPolicyImpl;->mNativePtr:J

    invoke-direct {p0, v2, v3, p1}, Lorg/linphone/core/LinphoneNatPolicyImpl;->enableStun(JZ)V

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

.method public enableTurn(Z)V
    .locals 4

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/linphone/core/LinphoneNatPolicyImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 74
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneNatPolicyImpl;->mNativePtr:J

    invoke-direct {p0, v2, v3, p1}, Lorg/linphone/core/LinphoneNatPolicyImpl;->enableTurn(JZ)V

    .line 75
    monitor-exit v1

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableUpnp(Z)V
    .locals 4

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/linphone/core/LinphoneNatPolicyImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 98
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneNatPolicyImpl;->mNativePtr:J

    invoke-direct {p0, v2, v3, p1}, Lorg/linphone/core/LinphoneNatPolicyImpl;->enableUpnp(JZ)V

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStunServer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/linphone/core/LinphoneNatPolicyImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 104
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneNatPolicyImpl;->mNativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneNatPolicyImpl;->getStunServer(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStunServerUsername()Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/linphone/core/LinphoneNatPolicyImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 116
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneNatPolicyImpl;->mNativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneNatPolicyImpl;->getStunServerUsername(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iceEnabled()Z
    .locals 4

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/linphone/core/LinphoneNatPolicyImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 80
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneNatPolicyImpl;->mNativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneNatPolicyImpl;->iceEnabled(J)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStunServer(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/linphone/core/LinphoneNatPolicyImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 110
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneNatPolicyImpl;->mNativePtr:J

    invoke-direct {p0, v2, v3, p1}, Lorg/linphone/core/LinphoneNatPolicyImpl;->setStunServer(JLjava/lang/String;)V

    .line 111
    monitor-exit v1

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStunServerUsername(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/linphone/core/LinphoneNatPolicyImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 122
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneNatPolicyImpl;->mNativePtr:J

    invoke-direct {p0, v2, v3, p1}, Lorg/linphone/core/LinphoneNatPolicyImpl;->setStunServerUsername(JLjava/lang/String;)V

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stunEnabled()Z
    .locals 4

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/linphone/core/LinphoneNatPolicyImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 56
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneNatPolicyImpl;->mNativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneNatPolicyImpl;->stunEnabled(J)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnEnabled()Z
    .locals 4

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/linphone/core/LinphoneNatPolicyImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 68
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneNatPolicyImpl;->mNativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneNatPolicyImpl;->turnEnabled(J)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public upnpEnabled()Z
    .locals 4

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/linphone/core/LinphoneNatPolicyImpl;->getCore()Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    monitor-enter v1

    .line 92
    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneNatPolicyImpl;->mNativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneNatPolicyImpl;->upnpEnabled(J)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
