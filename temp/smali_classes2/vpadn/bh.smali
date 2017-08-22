.class public Lvpadn/bh;
.super Ljava/lang/Object;
.source "HttpClientUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvpadn/bh$a;
    }
.end annotation


# direct methods
.method public static a(Lorg/apache/http/impl/client/DefaultHttpClient;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lvpadn/bh$1;

    invoke-direct {v0}, Lvpadn/bh$1;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 54
    new-instance v0, Lvpadn/bh$2;

    invoke-direct {v0}, Lvpadn/bh$2;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 73
    return-object p0
.end method
