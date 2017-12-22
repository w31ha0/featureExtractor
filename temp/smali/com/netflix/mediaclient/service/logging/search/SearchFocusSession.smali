.class public Lcom/netflix/mediaclient/service/logging/search/SearchFocusSession;
.super Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;
.source "SearchFocusSession.java"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "uiView"

.field public static final NAME:Ljava/lang/String; = "focus"


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;-><init>()V

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/search/SearchFocusSession;->setId(J)V

    .line 14
    return-void
.end method


# virtual methods
.method public createEndedEvent()Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionEndedEvent;
    .locals 4

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/search/SearchFocusSession;->mStarted:J

    sub-long/2addr v0, v2

    .line 37
    new-instance v2, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionEndedEvent;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionEndedEvent;-><init>(J)V

    .line 38
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/search/SearchFocusSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/search/SearchFocusSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 40
    return-object v2
.end method

.method public createStartEvent(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionStartedEvent;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionStartedEvent;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionStartedEvent;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/search/SearchFocusSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionStartedEvent;->setCategory(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/search/SearchFocusSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 31
    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "uiView"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "focus"

    return-object v0
.end method
