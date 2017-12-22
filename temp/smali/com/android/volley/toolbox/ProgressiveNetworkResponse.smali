.class public Lcom/android/volley/toolbox/ProgressiveNetworkResponse;
.super Lcom/android/volley/NetworkResponse;
.source "ProgressiveNetworkResponse.java"


# instance fields
.field private final mHttpEntity:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(ILorg/apache/http/HttpEntity;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    .line 33
    iput-object p2, p0, Lcom/android/volley/toolbox/ProgressiveNetworkResponse;->mHttpEntity:Lorg/apache/http/HttpEntity;

    .line 34
    return-void
.end method


# virtual methods
.method public getHttpEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/volley/toolbox/ProgressiveNetworkResponse;->mHttpEntity:Lorg/apache/http/HttpEntity;

    return-object v0
.end method
