.class Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;
.super Ljava/lang/Object;
.source "VideoDetailsViewGroup.java"

# interfaces
.implements Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;


# instance fields
.field private mUserRated:Z

.field private mUsingDrag:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

.field final synthetic val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field final synthetic val$netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic val$provider:Lcom/netflix/mediaclient/ui/common/PlayContextProvider;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 579
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->val$netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->val$provider:Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->mUsingDrag:Z

    .line 582
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->mUserRated:Z

    return-void
.end method


# virtual methods
.method public onAlphaAnimate(F)V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->videoActionsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->videoActionsContainer:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 610
    :cond_0
    return-void
.end method

.method public onDismissed(Lcom/netflix/android/widgetry/widget/UserRatingButton;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 614
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->mUserRated:Z

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->mUsingDrag:Z

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/rating/Ratings$CL;->reportDialogDismissed(Landroid/content/Context;ZZ)V

    .line 616
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->mUsingDrag:Z

    .line 617
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->mUserRated:Z

    .line 618
    return-void
.end method

.method public onOpened(Lcom/netflix/android/widgetry/widget/UserRatingButton;Z)V
    .locals 0

    .prologue
    .line 586
    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->mUsingDrag:Z

    .line 587
    return-void
.end method

.method public onRate(Lcom/netflix/android/widgetry/widget/UserRatingButton;I)V
    .locals 7

    .prologue
    .line 591
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->val$netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->val$netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportRateActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 592
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->val$provider:Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->val$provider:Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->val$provider:Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v4

    .line 593
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->val$netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->access$000(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    new-instance v5, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4$1;

    const-string/jumbo v3, "VideoDetailsViewGroup"

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-direct {v5, p0, v3, v6}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4$1;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->setVideoThumbRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->mUserRated:Z

    .line 603
    return-void

    .line 592
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method
