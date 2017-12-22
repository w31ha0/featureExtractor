.class public Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;
.super Lcom/netflix/mediaclient/service/logging/suspend/BaseSuspendSession;
.source "ResumingSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "resuming"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/suspend/BaseSuspendSession;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public createEndedEvent()Lcom/netflix/mediaclient/service/logging/suspend/model/ResumingSessionEndedEvent;
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;->mStarted:J

    sub-long/2addr v0, v2

    .line 26
    new-instance v2, Lcom/netflix/mediaclient/service/logging/suspend/model/ResumingSessionEndedEvent;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/suspend/model/ResumingSessionEndedEvent;-><init>(J)V

    .line 27
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/suspend/model/ResumingSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/suspend/ResumingSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/suspend/model/ResumingSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 29
    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "resuming"

    return-object v0
.end method
