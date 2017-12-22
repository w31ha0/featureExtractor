.class Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$1;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "LolomoRecyclerViewAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$requestIdClone:J


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Ljava/lang/String;Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$1;->val$context:Landroid/content/Context;

    iput-wide p4, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$1;->val$requestIdClone:J

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGenreLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 329
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onGenreLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 330
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->access$002(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Z)Z

    .line 332
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 334
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$1;->val$requestIdClone:J

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->access$100(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 335
    const-string/jumbo v0, "LolomoRecyclerViewAdapter"

    const-string/jumbo v1, "Request IDs do not match - skipping prefetch callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    instance-of v1, p1, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    if-eqz v1, :cond_2

    .line 341
    check-cast p1, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->wasAllDataLocalToCache()Z

    move-result v0

    .line 344
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->access$200(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Landroid/content/Context;Z)V

    goto :goto_0
.end method
