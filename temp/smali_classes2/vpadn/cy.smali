.class public Lvpadn/cy;
.super Ljava/lang/Object;
.source "HttpClients.java"


# direct methods
.method public static a(Lorg/apache/http/client/HttpClient;)V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lvpadn/cy$1;

    invoke-direct {v1, p0}, Lvpadn/cy$1;-><init>(Lorg/apache/http/client/HttpClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 15
    return-void
.end method
