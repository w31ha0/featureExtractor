.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackError;
.super Ljava/lang/Object;
.source "StreamingPlaybackError.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;


# instance fields
.field private mCode:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

.field private mErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackError;->mCode:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackError;->mErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    .line 18
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackError;->mErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackError;->mErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->getUiDisplayErrorString()Ljava/lang/String;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getUiDisplayErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackError;->mErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackError;->mErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "100"

    goto :goto_0
.end method
