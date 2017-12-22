.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$1;
.super Landroid/content/BroadcastReceiver;
.source "FalkorAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$1;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 180
    if-nez p2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$1;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {p2}, Lcom/netflix/mediaclient/servicemgr/Asset;->fromIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchEpisodesForSeason(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    goto :goto_0

    .line 197
    :cond_2
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "Refreshing CW for LOCAL_PLAYER_PLAY_STOP..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$1;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$100(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)Lcom/netflix/falkor/CachedModelProxy;

    move-result-object v0

    invoke-static {p2}, Lcom/netflix/mediaclient/servicemgr/Asset;->fromIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->updateBookmarkPosition(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$1;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->refreshCw(ZZ)V

    goto :goto_0
.end method
