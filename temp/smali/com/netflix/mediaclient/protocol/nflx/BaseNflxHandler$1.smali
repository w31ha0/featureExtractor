.class Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$1;
.super Ljava/lang/Object;
.source "BaseNflxHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;

.field final synthetic val$tinyUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$1;->this$0:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$1;->val$tinyUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 100
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Resolving tiny URL in background"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$1;->this$0:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$1;->val$tinyUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$1;->this$0:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;

    iget-object v0, v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->mParamsMap:Ljava/util/Map;

    const-string/jumbo v3, "targetid"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->extractJustUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$1;->this$0:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;

    iget-object v3, v3, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->mParamsMap:Ljava/util/Map;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getTrackId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->handleTinyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
