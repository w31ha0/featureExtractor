.class public final Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;
.super Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;
.source "UIBrowseStartupSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "uiBrowseStartup"

.field private static final TAG:Ljava/lang/String; = "UIBrowseStartupSession"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public createEndedEvent(JZLcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;
    .locals 5

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;->mStarted:J

    sub-long/2addr v0, v2

    .line 36
    new-instance v2, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;-><init>(JJ)V

    .line 37
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 39
    invoke-virtual {v2, p4}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->setError(Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 40
    invoke-virtual {v2, p3}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;->setSuccess(Z)V

    .line 46
    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "uiBrowseStartup"

    return-object v0
.end method
