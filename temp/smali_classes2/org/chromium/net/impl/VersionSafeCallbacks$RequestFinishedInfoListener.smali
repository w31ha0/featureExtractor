.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;
.super Lorg/chromium/net/RequestFinishedInfo$Listener;
.source "VersionSafeCallbacks.java"


# instance fields
.field private final mWrappedListener:Lorg/chromium/net/RequestFinishedInfo$Listener;


# direct methods
.method public constructor <init>(Lorg/chromium/net/RequestFinishedInfo$Listener;)V
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo$Listener;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/net/RequestFinishedInfo$Listener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 186
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;->mWrappedListener:Lorg/chromium/net/RequestFinishedInfo$Listener;

    .line 187
    return-void
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;->mWrappedListener:Lorg/chromium/net/RequestFinishedInfo$Listener;

    invoke-virtual {v0}, Lorg/chromium/net/RequestFinishedInfo$Listener;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public onRequestFinished(Lorg/chromium/net/RequestFinishedInfo;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;->mWrappedListener:Lorg/chromium/net/RequestFinishedInfo$Listener;

    invoke-virtual {v0, p1}, Lorg/chromium/net/RequestFinishedInfo$Listener;->onRequestFinished(Lorg/chromium/net/RequestFinishedInfo;)V

    .line 192
    return-void
.end method
