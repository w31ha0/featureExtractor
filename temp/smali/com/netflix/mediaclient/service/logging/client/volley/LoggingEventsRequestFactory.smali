.class public final Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequestFactory;
.super Ljava/lang/Object;
.source "LoggingEventsRequestFactory.java"


# instance fields
.field private mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequestFactory;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 17
    return-void
.end method


# virtual methods
.method public createLoggingEventsRequest(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsRequestFactory;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->useMslForDataRequests()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsMslRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsMslRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;)V

    .line 33
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsWebRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/client/volley/LoggingEventsWebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;)V

    goto :goto_0
.end method
