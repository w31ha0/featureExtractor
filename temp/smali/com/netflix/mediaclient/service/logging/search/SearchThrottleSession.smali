.class public Lcom/netflix/mediaclient/service/logging/search/SearchThrottleSession;
.super Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;
.source "SearchThrottleSession.java"


# static fields
.field private static final CATEGORY:Ljava/lang/String; = "search"

.field public static final NAME:Ljava/lang/String; = "searchThrottle"


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;-><init>()V

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/search/SearchThrottleSession;->setId(J)V

    .line 16
    return-void
.end method


# virtual methods
.method public createEndedEvent()Lcom/netflix/mediaclient/service/logging/client/model/BasicSessionEndedEvent;
    .locals 7

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/search/SearchThrottleSession;->mStarted:J

    sub-long v4, v0, v2

    .line 38
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/BasicSessionEndedEvent;

    const-string/jumbo v2, "searchThrottle"

    const-string/jumbo v3, "search"

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->search:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/service/logging/client/model/BasicSessionEndedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/SearchThrottleSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/BasicSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 40
    return-object v1
.end method

.method public createStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/BasicSessionStartedEvent;
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/BasicSessionStartedEvent;

    const-string/jumbo v1, "searchThrottle"

    const-string/jumbo v2, "search"

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->search:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/BasicSessionStartedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 31
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/search/SearchThrottleSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/BasicSessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 32
    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "search"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "searchThrottle"

    return-object v0
.end method
