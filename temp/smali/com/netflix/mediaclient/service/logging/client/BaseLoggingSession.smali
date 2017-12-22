.class public abstract Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;
.super Ljava/lang/Object;
.source "BaseLoggingSession.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/client/LoggingSession;


# instance fields
.field protected mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

.field protected mKey:Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;

.field protected mStarted:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;->mStarted:J

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;->mKey:Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;

    .line 32
    return-void
.end method


# virtual methods
.method public abstract getCategory()Ljava/lang/String;
.end method

.method public getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    return-object v0
.end method

.method public getKey()Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;->mKey:Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;

    return-object v0
.end method

.method public getStarted()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;->mStarted:J

    return-wide v0
.end method

.method public setId(J)V
    .locals 5

    .prologue
    .line 35
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;-><init>(J)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;->mKey:Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;

    .line 37
    return-void
.end method

.method public setStarted(J)V
    .locals 1

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;->mStarted:J

    .line 77
    return-void
.end method
