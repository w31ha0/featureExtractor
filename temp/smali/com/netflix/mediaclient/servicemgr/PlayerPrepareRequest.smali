.class public Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;
.super Ljava/lang/Object;
.source "PlayerPrepareRequest.java"


# instance fields
.field public final mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field public final mPlayableId:J

.field public final mPrefetchSource:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field public final mVideo:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mVideo:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    .line 23
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mPlayableId:J

    .line 24
    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mPrefetchSource:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 25
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 26
    return-void
.end method
