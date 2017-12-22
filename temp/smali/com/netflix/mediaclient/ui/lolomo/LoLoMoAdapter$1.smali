.class Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter$1;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "LoLoMoAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;

.field final synthetic val$requestIdClone:J


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;

    iput-wide p3, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter$1;->val$requestIdClone:J

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 55
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 57
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter$1;->val$requestIdClone:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->access$000(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 58
    const-string/jumbo v0, "LoLoMoAdapter"

    const-string/jumbo v1, "Request IDs do not match - skipping prefetch callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 63
    instance-of v1, p1, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    if-eqz v1, :cond_1

    .line 64
    check-cast p1, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->wasAllDataLocalToCache()Z

    move-result v0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->access$100(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;Z)V

    goto :goto_0
.end method
