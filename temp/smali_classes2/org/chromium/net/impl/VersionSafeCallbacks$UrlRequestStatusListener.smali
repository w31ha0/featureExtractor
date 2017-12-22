.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;
.super Lorg/chromium/net/UrlRequest$StatusListener;
.source "VersionSafeCallbacks.java"


# instance fields
.field private final mWrappedListener:Lorg/chromium/net/UrlRequest$StatusListener;


# direct methods
.method public constructor <init>(Lorg/chromium/net/UrlRequest$StatusListener;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$StatusListener;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;->mWrappedListener:Lorg/chromium/net/UrlRequest$StatusListener;

    .line 84
    return-void
.end method


# virtual methods
.method public onStatus(I)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;->mWrappedListener:Lorg/chromium/net/UrlRequest$StatusListener;

    invoke-virtual {v0, p1}, Lorg/chromium/net/UrlRequest$StatusListener;->onStatus(I)V

    .line 89
    return-void
.end method
