.class public Lorg/chromium/net/urlconnection/CronetURLStreamHandlerFactory;
.super Ljava/lang/Object;
.source "CronetURLStreamHandlerFactory.java"

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;


# instance fields
.field private final mCronetEngine:Lorg/chromium/net/impl/CronetEngineBase;


# direct methods
.method public constructor <init>(Lorg/chromium/net/impl/CronetEngineBase;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "CronetEngine is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iput-object p1, p0, Lorg/chromium/net/urlconnection/CronetURLStreamHandlerFactory;->mCronetEngine:Lorg/chromium/net/impl/CronetEngineBase;

    .line 57
    return-void
.end method


# virtual methods
.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 2

    .prologue
    .line 65
    const-string/jumbo v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    new-instance v0, Lorg/chromium/net/urlconnection/CronetHttpURLStreamHandler;

    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetURLStreamHandlerFactory;->mCronetEngine:Lorg/chromium/net/impl/CronetEngineBase;

    invoke-direct {v0, v1}, Lorg/chromium/net/urlconnection/CronetHttpURLStreamHandler;-><init>(Lorg/chromium/net/impl/CronetEngineBase;)V

    .line 68
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
