.class public Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "BillboardView.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 1

    .prologue
    .line 672
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    .line 673
    const-string/jumbo v0, "BillboardView"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method private updateMyListState(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 3

    .prologue
    .line 689
    if-eqz p1, :cond_0

    .line 690
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 691
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isInQueue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->updateMyListState(Ljava/lang/String;Z)V

    .line 693
    :cond_0
    return-void
.end method


# virtual methods
.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 678
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 679
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;->updateMyListState(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 680
    return-void
.end method

.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 684
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 685
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;->updateMyListState(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 686
    return-void
.end method
