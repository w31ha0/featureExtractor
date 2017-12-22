.class public abstract Lcom/netflix/mediaclient/ui/details/DetailsFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "DetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;
.implements Lcom/netflix/mediaclient/ui/details/DetailsActivity$Reloader;
.implements Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$VideoDetailsViewGroupProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;",
        ">",
        "Lcom/netflix/mediaclient/android/fragment/NetflixFrag;",
        "Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;",
        "Lcom/netflix/mediaclient/ui/details/DetailsActivity$Reloader;",
        "Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$VideoDetailsViewGroupProvider;"
    }
.end annotation


# static fields
.field public static final EXTRA_IS_MOVIE:Ljava/lang/String; = "extra_is_movie"

.field private static final TAG:Ljava/lang/String; = "DetailsFrag"


# instance fields
.field private addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

.field public detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

.field protected final errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field protected leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field private mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected modalViewId:I

.field private playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field protected primaryView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->modalViewId:I

    .line 213
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsFrag$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag$2;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    return-void
.end method

.method protected static addToMyListWrapper(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 170
    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getAddToMyListButton()Landroid/widget/TextView;

    move-result-object v1

    .line 177
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v2

    if-nez v2, :cond_1

    .line 180
    const-string/jumbo v1, "SPY-8691 - current profile is null"

    .line 181
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    const-string/jumbo v2, "DetailsFrag"

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    :goto_0
    return-object v0

    .line 183
    :cond_1
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isKidsParity(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    :cond_2
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isCurrentProfileInstantQueueEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 185
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setMyListVisibility(I)V

    goto :goto_0

    .line 187
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getAddToMyListButtonLabel()Landroid/widget/TextView;

    move-result-object v0

    .line 188
    check-cast p1, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {p2, p1, v1, v0, v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->createAddToMyListWrapper(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Landroid/widget/TextView;Landroid/widget/TextView;Z)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    move-result-object v0

    .line 189
    invoke-virtual {p2, p3, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->registerAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract getDetailsStringProvider(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;"
        }
    .end annotation
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f03011a

    return v0
.end method

.method protected getPrimaryViewId()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f1003c5

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getVideoDetails()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method public getVideoDetailsViewGroup()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    return-object v0
.end method

.method protected abstract getVideoId()Ljava/lang/String;
.end method

.method protected abstract initDetailsViewGroup(Landroid/view/View;)V
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    const-string/jumbo v0, "DetailsFrag"

    const-string/jumbo v1, "Creating new frag view..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->initDetailsViewGroup(Landroid/view/View;)V

    .line 49
    new-instance v1, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v1, v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    .line 50
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getPrimaryViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    .line 51
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 54
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setBackgroundIfApplicable(Landroid/view/View;)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "extra_model_view_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->modalViewId:I

    .line 57
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroy()V

    .line 112
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getVideoId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->unregisterAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 117
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 105
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->updateMyListState()V

    .line 106
    return-void
.end method

.method public onRetryRequested()V
    .locals 0

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->showLoadingView()V

    .line 199
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->reloadData()V

    .line 200
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 204
    const-string/jumbo v0, "DetailsFrag"

    const-string/jumbo v1, "reload()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->reloadData()V

    .line 206
    return-void
.end method

.method protected abstract reloadData()V
.end method

.method protected showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 151
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 152
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->modalViewId:I

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->search:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getPrepareHelper()Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->DetailsPageFromSearch:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v0, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;->playerPrepare(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getDetailsStringProvider(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    .line 164
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->addToMyListWrapper(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setupDownloadButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 167
    return-void
.end method

.method protected showErrorView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/details/DetailsFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 141
    :cond_1
    return-void
.end method

.method protected showLoadingView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 148
    :cond_0
    return-void
.end method

.method protected updateMyListState()V
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->refreshImagesIfNecessary()V

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    instance-of v1, v1, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getVideoId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isInQueue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->updateMyListState(Ljava/lang/String;Z)V

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 100
    :cond_2
    return-void
.end method
