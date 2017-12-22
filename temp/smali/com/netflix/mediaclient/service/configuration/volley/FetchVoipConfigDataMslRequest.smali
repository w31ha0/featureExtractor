.class public Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataMslRequest;
.super Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;
.source "FetchVoipConfigDataMslRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;",
        ">;"
    }
.end annotation


# static fields
.field private static final PARAM_SUPPORTED_SDKS:Ljava/lang/String; = "supportedSdks"

.field private static final PARAM_VOIP_SDK_TYPE:Ljava/lang/String; = "sdkType"


# instance fields
.field private mPqls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseCallback:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

.field private final mSdkType:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataMslRequest;->mPqls:Ljava/util/List;

    .line 36
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataMslRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

    .line 37
    iput-object p3, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataMslRequest;->mSdkType:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic getMSLUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;->getMSLUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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
    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataMslRequest;->mPqls:Ljava/util/List;

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const-string/jumbo v2, "VAIL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string/jumbo v2, ",DIRECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string/jumbo v2, "supportedSdks"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-object v0
.end method

.method public bridge synthetic getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataMslRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataMslRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;->onVoipConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 96
    :cond_0
    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataMslRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

    .line 97
    return-void
.end method

.method protected onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataMslRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataMslRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;->onVoipConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 88
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataMslRequest;->mResponseCallback:Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;

    .line 89
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataMslRequest;->onSuccess(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V

    return-void
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;
    .locals 1

    .prologue
    .line 80
    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->parseVoipConfigString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/FetchVoipConfigDataMslRequest;->parseFalkorResponse(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    move-result-object v0

    return-object v0
.end method
