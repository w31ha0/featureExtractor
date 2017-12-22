.class Lcom/netflix/mediaclient/ui/search/SearchActivity$6;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$6;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$6;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$902(Lcom/netflix/mediaclient/ui/search/SearchActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 345
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$6;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$1000(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$6;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$1000(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$6;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$1100(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    const-string/jumbo v0, "SPY-8468 - Voice search not available. The device has no voice search capabilities"

    .line 351
    const-string/jumbo v1, "SearchActivity"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$6;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 354
    :cond_1
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 358
    return-void
.end method
