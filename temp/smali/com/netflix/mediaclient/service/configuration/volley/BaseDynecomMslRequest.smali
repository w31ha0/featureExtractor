.class public abstract Lcom/netflix/mediaclient/service/configuration/volley/BaseDynecomMslRequest;
.super Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;
.source "BaseDynecomMslRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_dynecom"


# instance fields
.field protected mCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getMSLUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;->getMSLUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected injectUrl()V
    .locals 5

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseDynecomMslRequest;->getMSLClient()Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getConfigUrl()Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string/jumbo v1, "nf_dynecom"

    const-string/jumbo v2, "Dynecom configuration uRL: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 24
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseDynecomMslRequest;->initUrl(Ljava/lang/String;)V

    .line 25
    return-void
.end method
