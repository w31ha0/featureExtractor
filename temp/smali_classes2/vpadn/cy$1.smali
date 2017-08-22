.class final Lvpadn/cy$1;
.super Ljava/lang/Object;
.source "HttpClients.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cy;->a(Lorg/apache/http/client/HttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/apache/http/client/HttpClient;


# direct methods
.method constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 0

    .prologue
    .line 7
    iput-object p1, p0, Lvpadn/cy$1;->a:Lorg/apache/http/client/HttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lvpadn/cy$1;->a:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cy$1;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lvpadn/cy$1;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 13
    :cond_0
    return-void
.end method
