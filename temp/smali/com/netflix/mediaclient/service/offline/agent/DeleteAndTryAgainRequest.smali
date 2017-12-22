.class Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;
.super Ljava/lang/Object;
.source "DeleteAndTryAgainRequest.java"


# instance fields
.field public final mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field public final mPlayableId:Ljava/lang/String;

.field public final mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;->mPlayableId:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 24
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 25
    return-void
.end method
