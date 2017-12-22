.class public Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;
.super Lcom/netflix/mediaclient/ui/details/DetailsFrag;
.source "ShowDetailsFrag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/details/DetailsFrag",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;",
        ">;"
    }
.end annotation


# static fields
.field protected static final EXTRA_EPISODE_ID:Ljava/lang/String; = "extra_episode_id"

.field protected static final EXTRA_VIDEO_ID:Ljava/lang/String; = "extra_video_id"

.field private static final TAG:Ljava/lang/String; = "ShowDetailsFrag"


# instance fields
.field private episodeId:Ljava/lang/String;

.field private isLoading:Z

.field private requestId:J

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->isLoading:Z

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;I)Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;-><init>()V

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string/jumbo v2, "extra_video_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v2, "extra_episode_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v2, "extra_model_view_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method

.method private onShowDataReady(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 4

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string/jumbo v0, "ShowDetailsFrag"

    const-string/jumbo v1, "Activity state is invalid"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->requestId:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->requestId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    :cond_1
    const-string/jumbo v0, "ShowDetailsFrag"

    const-string/jumbo v1, "Ignoring stale callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->isLoading:Z

    .line 168
    if-nez p1, :cond_3

    .line 169
    const-string/jumbo v0, "ShowDetailsFrag"

    const-string/jumbo v1, "No details in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->showErrorView()V

    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    goto :goto_0
.end method


# virtual methods
.method protected dataReady(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->onShowDataReady(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    .line 99
    return-void
.end method

.method protected getDetailsStringProvider(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    return-object v0
.end method

.method protected bridge synthetic getDetailsStringProvider(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->getDetailsStringProvider(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;

    move-result-object v0

    return-object v0
.end method

.method protected getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method protected initDetailsViewGroup(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f1003c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 79
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->isLoading:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_video_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->videoId:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_episode_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->episodeId:Ljava/lang/String;

    .line 49
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->onCreate(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 63
    const v0, 0x7f1003d2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 64
    if-eqz v0, :cond_0

    .line 65
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 67
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 68
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    const/4 v5, 0x0

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 70
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 73
    :cond_0
    return-object v3
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 84
    return-void
.end method

.method protected reloadData()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->videoId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method protected showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setCopyright(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 95
    return-void
.end method

.method protected bridge synthetic showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    return-void
.end method
