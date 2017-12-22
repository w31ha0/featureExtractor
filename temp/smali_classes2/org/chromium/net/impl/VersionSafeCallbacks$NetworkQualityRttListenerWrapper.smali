.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;
.super Lorg/chromium/net/NetworkQualityRttListener;
.source "VersionSafeCallbacks.java"


# instance fields
.field private final mWrappedListener:Lorg/chromium/net/NetworkQualityRttListener;


# direct methods
.method public constructor <init>(Lorg/chromium/net/NetworkQualityRttListener;)V
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p1}, Lorg/chromium/net/NetworkQualityRttListener;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkQualityRttListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 210
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;->mWrappedListener:Lorg/chromium/net/NetworkQualityRttListener;

    .line 211
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 230
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;

    if-nez v0, :cond_1

    .line 231
    :cond_0
    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;->mWrappedListener:Lorg/chromium/net/NetworkQualityRttListener;

    check-cast p1, Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;

    iget-object v1, p1, Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;->mWrappedListener:Lorg/chromium/net/NetworkQualityRttListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;->mWrappedListener:Lorg/chromium/net/NetworkQualityRttListener;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkQualityRttListener;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;->mWrappedListener:Lorg/chromium/net/NetworkQualityRttListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onRttObservation(IJI)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;->mWrappedListener:Lorg/chromium/net/NetworkQualityRttListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/net/NetworkQualityRttListener;->onRttObservation(IJI)V

    .line 216
    return-void
.end method
