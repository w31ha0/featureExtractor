.class Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;
.super Ljava/lang/Object;
.source "CreateRequest.java"


# instance fields
.field public final mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field public final mPlayableId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->mPlayableId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 21
    return-void
.end method
