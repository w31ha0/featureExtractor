.class public abstract Lcom/netflix/mediaclient/service/player/exoplayback/logblob/OfflinePlaybackBaseLogblob;
.super Lcom/netflix/mediaclient/service/logging/offline/OfflineBaseLogblob;
.source "OfflinePlaybackBaseLogblob.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/service/logging/offline/OfflineBaseLogblob;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/OfflinePlaybackBaseLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "xid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    return-void
.end method


# virtual methods
.method public updateSeverity(Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;)V
    .locals 2

    .prologue
    .line 17
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->getLevel()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->INFO:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->getLevel()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 18
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/OfflinePlaybackBaseLogblob;->mSeverity:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 19
    :cond_0
    return-void
.end method
