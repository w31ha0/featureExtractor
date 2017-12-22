.class Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity$1;
.super Ljava/lang/Object;
.source "BarkerKidsDetailsActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$DPTTRTracker;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$DPTTRTracker;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity;->access$000(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity;)Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity;->setupInteractiveTracking(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;)V

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity;->registerLoadingStatusCallback()V

    .line 103
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 108
    return-void
.end method
