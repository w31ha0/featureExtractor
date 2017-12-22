.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;
.super Lorg/chromium/net/NetworkQualityThroughputListener;
.source "VersionSafeCallbacks.java"


# instance fields
.field private final mWrappedListener:Lorg/chromium/net/NetworkQualityThroughputListener;


# direct methods
.method public constructor <init>(Lorg/chromium/net/NetworkQualityThroughputListener;)V
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p1}, Lorg/chromium/net/NetworkQualityThroughputListener;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkQualityThroughputListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 248
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;->mWrappedListener:Lorg/chromium/net/NetworkQualityThroughputListener;

    .line 249
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 268
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;

    if-nez v0, :cond_1

    .line 269
    :cond_0
    const/4 v0, 0x0

    .line 271
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;->mWrappedListener:Lorg/chromium/net/NetworkQualityThroughputListener;

    check-cast p1, Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;

    iget-object v1, p1, Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;->mWrappedListener:Lorg/chromium/net/NetworkQualityThroughputListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;->mWrappedListener:Lorg/chromium/net/NetworkQualityThroughputListener;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkQualityThroughputListener;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;->mWrappedListener:Lorg/chromium/net/NetworkQualityThroughputListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onThroughputObservation(IJI)V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;->mWrappedListener:Lorg/chromium/net/NetworkQualityThroughputListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/net/NetworkQualityThroughputListener;->onThroughputObservation(IJI)V

    .line 254
    return-void
.end method
