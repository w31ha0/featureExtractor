.class Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "EpisodesFrag.java"


# instance fields
.field private final requestId:J

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;J)V
    .locals 2

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    .line 1069
    const-string/jumbo v0, "EpisodesFrag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 1070
    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->requestId:J

    .line 1071
    return-void
.end method


# virtual methods
.method public onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1075
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1083
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->requestId:J

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-wide v4, v4, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->requestId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1084
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Stale response - ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iput-boolean v1, v2, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isLoading:Z

    .line 1090
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1091
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Error status code fetching data - showing errors view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showErrorView()V

    goto :goto_0

    .line 1096
    :cond_2
    if-nez p1, :cond_3

    .line 1097
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "No details in response!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showErrorView()V

    goto :goto_0

    .line 1102
    :cond_3
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->isPreRelease()Z

    move-result v2

    .line 1103
    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-static {v2, p2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->access$500(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1104
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "No seasons in response!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showErrorView()V

    goto :goto_0

    .line 1109
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1114
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->updateShowDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    .line 1115
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->reportDPMetadataFetchedEvent(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1117
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-static {v2, p2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->access$500(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1118
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v2, p2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->updateSeasonData(Ljava/util/List;)V

    .line 1128
    :cond_5
    :goto_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->shouldRefreshVolatileData()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    .line 1129
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1131
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v3

    .line 1132
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1133
    :cond_6
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Manager is null/notReady - can\'t reload data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1120
    :cond_7
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isListVisible()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1121
    const-string/jumbo v2, "EpisodesFrag"

    const-string/jumbo v3, "Showing recycler view"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    .line 1123
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    goto :goto_1

    .line 1137
    :cond_8
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1138
    const-string/jumbo v4, "EpisodesFrag"

    const-string/jumbo v5, "Fetching volatile data for video ID: %s"

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v2, v6, v1

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1140
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v8

    new-instance v9, Lcom/netflix/falkor/task/FetchVideoVolatileNodesTask;

    .line 1141
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v3, v4, :cond_9

    :goto_2
    invoke-direct {v9, v2, v0}, Lcom/netflix/falkor/task/FetchVideoVolatileNodesTask;-><init>(Ljava/lang/String;Z)V

    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchVideoVolatileNodesCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    .line 1142
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getUserThumbRating()I

    move-result v3

    .line 1143
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getMatchPercentage()I

    move-result v4

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->isInQueue()Z

    move-result v5

    .line 1144
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSeasonCount()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchVideoVolatileNodesCallback;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Ljava/lang/String;IIZILcom/netflix/mediaclient/ui/details/EpisodesFrag$1;)V

    .line 1140
    invoke-interface {v8, v9, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchTask(Lcom/netflix/falkor/task/CmpTaskDetails;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 1141
    goto :goto_2
.end method
