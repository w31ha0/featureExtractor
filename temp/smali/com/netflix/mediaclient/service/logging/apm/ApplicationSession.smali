.class public Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;
.super Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;
.source "ApplicationSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "appSession"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public createEndedEvent()Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionEndedEvent;
    .locals 4

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;->mStarted:J

    sub-long/2addr v0, v2

    .line 45
    new-instance v2, Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionEndedEvent;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionEndedEvent;-><init>(J)V

    .line 46
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 48
    return-object v2
.end method

.method public createStartEvent(Z)Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionStartedEvent;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionStartedEvent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionStartedEvent;-><init>()V

    .line 36
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionStartedEvent;->setLastShutdownGraceful(Z)V

    .line 37
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionStartedEvent;->setCategory(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 39
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "appSession"

    return-object v0
.end method
