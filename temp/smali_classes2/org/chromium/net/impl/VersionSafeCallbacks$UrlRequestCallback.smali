.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;
.super Lorg/chromium/net/UrlRequest$Callback;
.source "VersionSafeCallbacks.java"


# instance fields
.field private final mWrappedCallback:Lorg/chromium/net/UrlRequest$Callback;


# direct methods
.method public constructor <init>(Lorg/chromium/net/UrlRequest$Callback;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->mWrappedCallback:Lorg/chromium/net/UrlRequest$Callback;

    .line 41
    return-void
.end method


# virtual methods
.method public onCanceled(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->mWrappedCallback:Lorg/chromium/net/UrlRequest$Callback;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/UrlRequest$Callback;->onCanceled(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V

    .line 73
    return-void
.end method

.method public onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->mWrappedCallback:Lorg/chromium/net/UrlRequest$Callback;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/net/UrlRequest$Callback;->onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V

    .line 68
    return-void
.end method

.method public onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->mWrappedCallback:Lorg/chromium/net/UrlRequest$Callback;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/net/UrlRequest$Callback;->onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V

    .line 58
    return-void
.end method

.method public onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->mWrappedCallback:Lorg/chromium/net/UrlRequest$Callback;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/net/UrlRequest$Callback;->onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->mWrappedCallback:Lorg/chromium/net/UrlRequest$Callback;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/UrlRequest$Callback;->onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V

    .line 52
    return-void
.end method

.method public onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->mWrappedCallback:Lorg/chromium/net/UrlRequest$Callback;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/UrlRequest$Callback;->onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V

    .line 63
    return-void
.end method
