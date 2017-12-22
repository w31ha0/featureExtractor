.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$25;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

.field final synthetic val$movieId:J


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;J)V
    .locals 0

    .prologue
    .line 1670
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$25;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iput-wide p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$25;->val$movieId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$25;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$5400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$25;->val$movieId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    return-void
.end method
