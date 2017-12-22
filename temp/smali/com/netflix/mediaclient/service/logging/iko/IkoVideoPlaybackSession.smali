.class public Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;
.super Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;
.source "IkoVideoPlaybackSession.java"


# static fields
.field protected static final CATEGORY:Ljava/lang/String; = "iko"

.field protected static final NAME:Ljava/lang/String; = "ikoVideoPlayback"


# instance fields
.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;->mUrl:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;II)Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoPlaybackEndedEvent;
    .locals 10

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;->mStarted:J

    sub-long v4, v0, v2

    .line 37
    new-instance v1, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoPlaybackEndedEvent;

    const-string/jumbo v2, "ikoVideoPlayback"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/logging/iko/IkoVideoPlaybackSession;->mUrl:Ljava/lang/String;

    move-object v6, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/service/logging/iko/model/IkoVideoPlaybackEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Ljava/lang/String;II)V

    return-object v1
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "iko"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "ikoVideoPlayback"

    return-object v0
.end method
