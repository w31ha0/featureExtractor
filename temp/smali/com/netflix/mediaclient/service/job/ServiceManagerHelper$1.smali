.class Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$1;
.super Ljava/lang/Object;
.source "ServiceManagerHelper.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$1;->this$0:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$1;->this$0:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->access$000(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 34
    const-string/jumbo v0, "nf_job_svcmgr_helper"

    const-string/jumbo v1, "got a callback even after the mServiceManager release"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$1;->this$0:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    sget-object v1, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->ServiceManagerReady:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->access$102(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$1;->this$0:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->access$200(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;->serviceManagerReady()V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$1;->this$0:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    sget-object v1, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->ServiceManagerFailed:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->access$102(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$1;->this$0:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->access$200(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;->serviceManagerFailed()V

    goto :goto_0
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$1;->this$0:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    sget-object v1, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->ServiceManagerFailed:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->access$102(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    .line 65
    return-void
.end method
