.class Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataMslRequest;
.super Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;
.source "FetchConfigDataMslRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_config_data"


# instance fields
.field private final mPqls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataMslRequest;->mPqls:Ljava/util/List;

    .line 23
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataMslRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    .line 28
    return-void
.end method


# virtual methods
.method protected getPQLQueries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataMslRequest;->mPqls:Ljava/util/List;

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataMslRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataMslRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;->onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 52
    :cond_0
    return-void
.end method

.method protected onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataMslRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataMslRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;->onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 45
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataMslRequest;->onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V

    return-void
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;
    .locals 1

    .prologue
    .line 37
    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->parseConfigString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/FetchConfigDataMslRequest;->parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

    move-result-object v0

    return-object v0
.end method
