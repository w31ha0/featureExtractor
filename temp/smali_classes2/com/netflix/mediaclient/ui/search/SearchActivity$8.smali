.class Lcom/netflix/mediaclient/ui/search/SearchActivity$8;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$8;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 561
    const-string/jumbo v0, "SearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleQueryUpdateRunnable: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$8;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$800(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\", request id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$8;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$500(Lcom/netflix/mediaclient/ui/search/SearchActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$8;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$800(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$8;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$1202(Lcom/netflix/mediaclient/ui/search/SearchActivity;Z)Z

    .line 570
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$8;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$1300(Lcom/netflix/mediaclient/ui/search/SearchActivity;Z)V

    .line 571
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$8;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$500(Lcom/netflix/mediaclient/ui/search/SearchActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$8;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$8;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$8;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v5}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$800(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSearchActionStarted(JLandroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$8;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$900(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$8;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$800(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$8;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$8;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$500(Lcom/netflix/mediaclient/ui/search/SearchActivity;)J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;J)V

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->searchNetflix(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method
