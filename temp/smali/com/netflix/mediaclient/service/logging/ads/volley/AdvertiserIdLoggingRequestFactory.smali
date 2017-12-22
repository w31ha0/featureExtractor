.class public final Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingRequestFactory;
.super Ljava/lang/Object;
.source "AdvertiserIdLoggingRequestFactory.java"


# instance fields
.field private mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingRequestFactory;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 17
    return-void
.end method


# virtual methods
.method public createAdvertiserIdLoggingRequest(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingRequestFactory;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->useMslForDataRequests()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingMslRequest;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingMslRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;)V

    .line 30
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingWebRequest;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/ads/volley/AdvertiserIdLoggingWebRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;)V

    goto :goto_0
.end method
