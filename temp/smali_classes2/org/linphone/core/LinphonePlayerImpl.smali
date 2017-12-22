.class public Lorg/linphone/core/LinphonePlayerImpl;
.super Ljava/lang/Object;
.source "LinphonePlayerImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphonePlayer;


# instance fields
.field private nativePtr:J


# direct methods
.method constructor <init>(J)V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    .line 14
    iput-wide p1, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    .line 15
    return-void
.end method

.method private native close(J)V
.end method

.method private native destroy(J)V
.end method

.method private native getCurrentPosition(J)I
.end method

.method private native getDuration(J)I
.end method

.method private native getState(J)I
.end method

.method private native open(JLjava/lang/String;Lorg/linphone/core/LinphonePlayer$Listener;)I
.end method

.method private native pause(J)I
.end method

.method private native seek(JI)I
.end method

.method private native start(J)I
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphonePlayerImpl;->close(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphonePlayerImpl;->destroy(J)V

    .line 69
    return-void
.end method

.method public declared-synchronized getCurrentPosition()I
    .locals 2

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphonePlayerImpl;->getCurrentPosition(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDuration()I
    .locals 2

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphonePlayerImpl;->getDuration(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()Lorg/linphone/core/LinphonePlayer$State;
    .locals 2

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphonePlayerImpl;->getState(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphonePlayer$State;->fromValue(I)Lorg/linphone/core/LinphonePlayer$State;
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

.method public declared-synchronized open(Ljava/lang/String;Lorg/linphone/core/LinphonePlayer$Listener;)I
    .locals 2

    .prologue
    .line 20
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphonePlayerImpl;->open(JLjava/lang/String;Lorg/linphone/core/LinphonePlayer$Listener;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()I
    .locals 2

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphonePlayerImpl;->pause(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seek(I)I
    .locals 2

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphonePlayerImpl;->seek(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()I
    .locals 2

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphonePlayerImpl;->start(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
