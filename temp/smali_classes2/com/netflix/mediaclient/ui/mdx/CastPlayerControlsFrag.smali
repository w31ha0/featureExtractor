.class public Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "CastPlayerControlsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;
.implements Lcom/netflix/mediaclient/ui/details/IHandleBackPress;
.implements Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;
.implements Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;


# static fields
.field private static final DISABLED:Z = false

.field private static final EXTRA_SAVED_POSITION_SECONDS:Ljava/lang/String; = "saved_position_seconds"

.field private static final NOTIFY_SHOW_AND_DISABLE_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.ui.mdx.NOTIFY_SHOW_AND_DISABLE_INTENT"

.field private static final SEEKBAR_UPDATE_DELAY_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "CastPlayerHelper"

.field private static final state:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;


# instance fields
.field private activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private boxArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field private draggingInProgress:Z

.field private episodeEndContainer:Landroid/view/ViewGroup;

.field private gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private final handler:Landroid/os/Handler;

.field private isEndOfPlayback:Z

.field private isInBackground:Z

.field private isShowing:Z

.field private languageSelector:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

.field private final languageSelectorCallback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

.field private mdxErrorHandler:Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

.field private final mdxKeyEventCallbacks:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;

.field private mdxKeyEventHandler:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;

.field private final mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

.field private mementoGroup:Landroid/view/View;

.field numColumns:I

.field private parentActivityClass:Ljava/lang/String;

.field private relatedAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

.field private relatedGridGroup:Landroid/view/View;

.field private relatedGridTitle:Landroid/widget/TextView;

.field private relatedRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private relatedViewHeight:I

.field private relatedViewWidth:I

.field private remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

.field private final remoteTargetUiListener:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

.field private savedPositionSeconds:I

.field private simulatedCurrentTimelinePositionMs:J

.field private simulatedVideoPositionTimeFiredMs:J

.field private titleEndContainer:Landroid/view/ViewGroup;

.field private final updateSeekBarRunnable:Ljava/lang/Runnable;

.field private views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$1;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 85
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->handler:Landroid/os/Handler;

    .line 125
    const/4 v0, 0x3

    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->numColumns:I

    .line 271
    iput v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedViewWidth:I

    .line 272
    iput v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedViewHeight:I

    .line 884
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$3;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->updateSeekBarRunnable:Ljava/lang/Runnable;

    .line 908
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$4;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->languageSelectorCallback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

    .line 939
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remoteTargetUiListener:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    .line 1163
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$6;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    .line 1327
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$7;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->mdxKeyEventCallbacks:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->showAndDisable()V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->updateSeekBarRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->updateLanguage()V

    return-void
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->updateVideoMetadata(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    return-void
.end method

.method static synthetic access$1802(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Z)Z
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isShowing:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Z)Z
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isEndOfPlayback:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedViewWidth:I

    return v0
.end method

.method static synthetic access$2000()Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;I)I
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedViewWidth:I

    return p1
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;ZZZ)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->updateVisibility(ZZZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->stopSimulatedVideoPositionUpdate()V

    return-void
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;J)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->startSimulatedVideoPositionUpdate(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isInBackground:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->mdxErrorHandler:Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideSelf()V

    return-void
.end method

.method static synthetic access$2700(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Z)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->updateVolumeState(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/common/LanguageSelector;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->languageSelector:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->updateMementoFrag(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedViewHeight:I

    return v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;I)I
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedViewHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->draggingInProgress:Z

    return v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Z)Z
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->draggingInProgress:Z

    return p1
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->simulatedVideoPositionTimeFiredMs:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;J)J
    .locals 1

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->simulatedVideoPositionTimeFiredMs:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->simulatedCurrentTimelinePositionMs:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;J)J
    .locals 1

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->simulatedCurrentTimelinePositionMs:J

    return-wide p1
.end method

.method private canShowMemento(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 1

    .prologue
    .line 771
    const/4 v0, 0x0

    return v0
.end method

.method private findViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 194
    const v0, 0x7f100101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 195
    const v0, 0x7f100100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedGridTitle:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f1000ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedGridGroup:Landroid/view/View;

    .line 197
    const v0, 0x7f1000fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->boxArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 198
    const v0, 0x7f1000f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->mementoGroup:Landroid/view/View;

    .line 199
    return-void
.end method

.method private hideDialogFragmentIfNecessary()V
    .locals 3

    .prologue
    .line 671
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v0

    .line 672
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$MdxMiniPlayerDialog;

    if-eqz v1, :cond_0

    .line 673
    const-string/jumbo v1, "CastPlayerHelper"

    const-string/jumbo v2, "MDX mini player dialog frag currently shown - hiding"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    .line 680
    :cond_1
    return-void
.end method

.method private hideMementoLoading()V
    .locals 2

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 556
    if-eqz v0, :cond_0

    .line 557
    const v1, 0x7f1000fa

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    .line 558
    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->hideLoading()V

    goto :goto_0
.end method

.method private declared-synchronized hideSelf()V
    .locals 2

    .prologue
    .line 638
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "hideSelf()"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isShowing:Z

    .line 640
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->shouldShowSelf:Z

    .line 641
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->stopSimulatedVideoPositionUpdate()V

    .line 642
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateMdxMenu()V

    .line 644
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isInBackground:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    :cond_0
    const-string/jumbo v0, "Frag is in BG - should just hide self on resume"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    :goto_0
    monitor-exit p0

    return-void

    .line 649
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideSelfInternal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized hideSelfInternal()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    .line 655
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Hiding MDX Player frag (internal)"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 658
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 659
    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 660
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 661
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 663
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideDialogFragmentIfNecessary()V

    .line 664
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideVisibleDialogIfNecessary()V

    .line 666
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideRDP()Z

    .line 667
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyCastPlayerHidden()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    monitor-exit p0

    return-void

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hideVisibleDialogIfNecessary()V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 684
    instance-of v0, v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$MdxMiniPlayerDialog;

    if-eqz v0, :cond_0

    .line 685
    const-string/jumbo v0, "CastPlayerHelper"

    const-string/jumbo v1, "MDX dialog currently shown - hiding"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    .line 688
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 882
    return-void
.end method

.method public static sendShowAndDisableIntent(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.ui.mdx.NOTIFY_SHOW_AND_DISABLE_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    return-void
.end method

.method private setupRecyclerViewItemDecoration()V
    .locals 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    .line 322
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->numColumns:I

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;-><init>(II)V

    .line 321
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 324
    return-void
.end method

.method private showAndDisable()V
    .locals 2

    .prologue
    .line 427
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->showSelf(Z)V

    .line 428
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->stopSimulatedVideoPositionUpdate()V

    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setControlsEnabled(Z)V

    .line 430
    return-void
.end method

.method private declared-synchronized showSelf(Z)V
    .locals 2

    .prologue
    .line 691
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "showSelf()"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 692
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->shouldShowSelf:Z

    .line 694
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isInBackground:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    :cond_0
    const-string/jumbo v0, "Frag is in BG - should just show self on resume"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 699
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-nez v0, :cond_3

    .line 700
    const-string/jumbo v0, "currentVideo is null - show self failed"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 691
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 703
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateMdxMenu()V

    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isShowing:Z

    .line 706
    const-string/jumbo v0, "Showing MDX Player frag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 708
    if-eqz v0, :cond_1

    .line 710
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 711
    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 712
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 713
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 715
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyCastPlayerShown(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private startSimulatedVideoPositionUpdate(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x3e8

    .line 725
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->updateSeekBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 727
    mul-long v0, p1, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->simulatedCurrentTimelinePositionMs:J

    .line 728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->simulatedVideoPositionTimeFiredMs:J

    .line 729
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->updateSeekBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 730
    const-string/jumbo v0, "Simulated position update +started+"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 732
    :cond_0
    return-void
.end method

.method private stopSimulatedVideoPositionUpdate()V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->updateSeekBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 737
    const-string/jumbo v0, "Simulated position update -stopped-"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 739
    :cond_0
    return-void
.end method

.method private updateLanguage()V
    .locals 2

    .prologue
    .line 720
    const-string/jumbo v0, "updateLanguage()"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->isLanguageReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setLanguageButtonEnabled(Z)V

    .line 722
    return-void
.end method

.method private updateMementoFrag(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1000fe

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    .line 866
    if-eqz v0, :cond_0

    .line 867
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->setVideo(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 870
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->updateLanguage()V

    .line 871
    return-void
.end method

.method private updateVideoMetadata(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 10

    .prologue
    const/4 v1, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 785
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 787
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->canShowMemento(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 788
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->mementoGroup:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 789
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->boxArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 810
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Updating metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_6

    .line 813
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateTitleText(Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f09010b

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 815
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 814
    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateSubtitleText(Ljava/lang/String;)V

    .line 820
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->getCurrentDeviceFriendlyName(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateDeviceNameText(Ljava/lang/String;)V

    .line 821
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v0, v2, :cond_7

    move v0, v6

    :goto_2
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setEpisodesButtonVisibile(Z)V

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Setting seek bar max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setProgressMax(I)V

    .line 826
    const-string/jumbo v1, "updating seek pos - remote pos: %d, playable bookmark pos: %d, saved pos: %d"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-nez v0, :cond_8

    move v0, v9

    .line 827
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 828
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->savedPositionSeconds:I

    .line 829
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    .line 826
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 831
    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->savedPositionSeconds:I

    .line 832
    const/4 v1, -0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->savedPositionSeconds:I

    .line 833
    if-gtz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-nez v0, :cond_9

    move v0, v9

    .line 835
    :goto_4
    if-gtz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v0

    .line 840
    :cond_0
    if-lez v0, :cond_1

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting seek progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 842
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setProgress(I)V

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_a

    .line 846
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$FetchDetailsCallback;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$FetchDetailsCallback;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 850
    :cond_2
    :goto_5
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isShowing:Z

    if-nez v0, :cond_3

    .line 851
    const-string/jumbo v0, "updateVideoMetadata showself"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isPanelExpanded()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->showSelf(Z)V

    .line 854
    :cond_3
    return-void

    .line 791
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->mementoGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->boxArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v9}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 794
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->boxArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 796
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 798
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    .line 794
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 803
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v7

    :goto_6
    div-int v0, v1, v0

    .line 804
    int-to-float v1, v0

    const v2, 0x3fb70a3d    # 1.43f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 806
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->boxArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 807
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->boxArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_0

    :cond_5
    move v0, v8

    .line 803
    goto :goto_6

    .line 817
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateTitleText(Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateSubtitleText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    move v0, v9

    .line 821
    goto/16 :goto_2

    .line 826
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    .line 827
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getPositionInSeconds()I

    move-result v0

    goto/16 :goto_3

    .line 834
    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getPositionInSeconds()I

    move-result v0

    goto/16 :goto_4

    .line 847
    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_2

    .line 848
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getShowId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$FetchDetailsCallback;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$FetchDetailsCallback;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V

    invoke-interface {v1, v0, v2, v9, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_5
.end method

.method private updateVisibility(ZZZ)V
    .locals 2

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isShowing:Z

    if-eq v0, p1, :cond_0

    .line 747
    if-eqz p1, :cond_1

    .line 749
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->showSelf(Z)V

    .line 754
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isShowing:Z

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->sync()V

    .line 763
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updatePlayPauseButton(Z)V

    .line 764
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->isVolumeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setVolumeButtonVisibility(Z)V

    .line 765
    return-void

    .line 759
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideSelf()V

    goto :goto_0
.end method

.method private updateVolumeState(Z)V
    .locals 1

    .prologue
    .line 874
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    iput-boolean p1, v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->isVolumeEnabled:Z

    .line 875
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setVolumeButtonVisibility(Z)V

    .line 876
    return-void
.end method


# virtual methods
.method public attachMenuItem(Lcom/netflix/mediaclient/ui/mdx/CastMenu;)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->attachMenuItem(Lcom/netflix/mediaclient/ui/mdx/CastMenu;)V

    .line 434
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->mdxKeyEventHandler:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;->handleKeyEvent(Landroid/view/KeyEvent;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;)Z

    move-result v0

    return v0
.end method

.method public getCurrentPositionMs()J
    .locals 2

    .prologue
    .line 464
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->simulatedCurrentTimelinePositionMs:J

    return-wide v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 477
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isPlayingRemotely()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    .line 472
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayer()Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    return-object v0
.end method

.method public getSlidingPanelDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->getSlidingPanelDragView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTargetSelection()Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;
    .locals 4

    .prologue
    .line 453
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    .line 454
    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getTargetList()[Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;-><init>([Landroid/util/Pair;Ljava/lang/String;Z)V

    return-object v1
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 514
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    iget v0, v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->mostRecentVolume:I

    return v0
.end method

.method public handleBackPressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 355
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedGridGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 357
    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 359
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedGridGroup:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 360
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideMementoLoading()V

    .line 362
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->rotateCaretTo(I)V

    .line 363
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setSlidingEnabled(Z)V

    .line 365
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedGridGroup:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move v0, v1

    .line 375
    :goto_0
    return v0

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f1000fe

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    .line 370
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->isShowingTitleEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.netflix.mediaclient.service.ACTION_CLOSE_CAST_PLAYER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v1

    .line 372
    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideRDP()Z

    move-result v0

    goto :goto_0
.end method

.method public hideRDP()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 332
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f100103

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 333
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 337
    const v3, 0x7f050003

    const v4, 0x7f050004

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 339
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 340
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->resetScroll()V

    .line 342
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 343
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setSlidingEnabled(Z)V

    move v0, v1

    .line 347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideRelatedGroup()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedGridGroup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 352
    return-void
.end method

.method public initMdxComponents()V
    .locals 3

    .prologue
    .line 591
    const-string/jumbo v0, "initMdxComponents()"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    .line 593
    if-eqz v0, :cond_2

    .line 594
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    .line 595
    if-eqz v1, :cond_0

    .line 596
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->updateVideoMetadata(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 597
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    sget-object v2, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    iget-boolean v2, v2, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->controlsEnabled:Z

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setControlsEnabled(Z)V

    .line 598
    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->shouldShowSelf:Z

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->isPaused()Z

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->updateVisibility(ZZZ)V

    .line 601
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remoteTargetUiListener:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    .line 603
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 604
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->controlsEnabled:Z

    if-eqz v0, :cond_1

    .line 605
    const-string/jumbo v0, "Controls are enabled & mini player is showing. Requesting subs and dubs..."

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->requestAudioAndSubtitleData()V

    .line 608
    :cond_1
    const-string/jumbo v0, "Syncing with remote player..."

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->sync()V

    .line 613
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->languageSelectorCallback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->createInstance(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->languageSelector:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    .line 615
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 616
    return-void
.end method

.method public isCastMenuEnabled()Z
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->controlsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->computeMdxMenuEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayingLocally()Z
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayingRemotely()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isEndOfPlayback:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isShowing:Z

    return v0
.end method

.method public notifyPlayingBackLocal()V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideSelf()V

    .line 493
    return-void
.end method

.method public notifyPlayingBackRemote()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setControlsEnabled(Z)V

    .line 498
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 159
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->parentActivityClass:Ljava/lang/String;

    .line 161
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 162
    const-string/jumbo v0, "onCreate()"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 164
    if-nez p1, :cond_0

    move v0, v1

    .line 165
    :goto_0
    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->savedPositionSeconds:I

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "savedPositionSeconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->savedPositionSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V

    const-string/jumbo v2, "com.netflix.mediaclient.ui.mdx.NOTIFY_SHOW_AND_DISABLE_INTENT"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->mdxKeyEventCallbacks:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->mdxKeyEventHandler:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;

    .line 176
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

    const-string/jumbo v1, "CastPlayerHelper"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->mdxErrorHandler:Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

    .line 177
    return-void

    .line 164
    :cond_0
    const-string/jumbo v0, "saved_position_seconds"

    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 181
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-direct {v0, v1, v2, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViews;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Updating to empty state, controls enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->controlsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->controlsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateToEmptyState(Z)V

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->findViews(Landroid/view/View;)V

    .line 187
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideRDP()Z

    .line 189
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->setupRecyclerView()V

    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->destroy()V

    .line 423
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroy()V

    .line 424
    return-void
.end method

.method public onEpisodeSelectedForPlayback(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 2

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideDialogFragmentIfNecessary()V

    .line 633
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 634
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 572
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 573
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 575
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    :cond_0
    const-string/jumbo v0, "Activity is null or destroyed - bailing early"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 588
    :goto_0
    return-void

    .line 580
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1000fa

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    .line 581
    if-eqz v0, :cond_2

    .line 582
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 585
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->initMdxComponents()V

    .line 587
    const-string/jumbo v0, "manager ready"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->destroy()V

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateToEmptyState(Z)V

    .line 627
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideSelf()V

    .line 628
    return-void
.end method

.method public onPanelCollapsed()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->onPanelCollapsed()V

    .line 537
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isEndOfPlayback:Z

    if-eqz v0, :cond_0

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isEndOfPlayback:Z

    .line 539
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideSelf()V

    .line 540
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideRDP()Z

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedGridGroup:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedGridGroup:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 545
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideMementoLoading()V

    .line 548
    :cond_1
    return-void
.end method

.method public onPanelExpanded()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->onPanelExpanded()V

    .line 533
    return-void
.end method

.method public onPanelSlide(F)V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->onPanelSlide(F)V

    .line 529
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 380
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 381
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->onResume()V

    .line 382
    return-void
.end method

.method public onResumeFragments()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 388
    const-string/jumbo v0, "onResumeFragments"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 389
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isInBackground:Z

    .line 391
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideSelfInternal()V

    .line 408
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 401
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->shouldShowSelf:Z

    if-nez v0, :cond_3

    .line 402
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideSelf()V

    goto :goto_0

    .line 396
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 405
    :cond_3
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->showSelf(Z)V

    goto :goto_0
.end method

.method public declared-synchronized onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 413
    const-string/jumbo v0, "saved_position_seconds"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isInBackground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendDialogResponse(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->sendDialogResponse(Ljava/lang/String;)V

    .line 440
    :cond_0
    return-void
.end method

.method public setIsShowing(Z)V
    .locals 0

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isShowing:Z

    .line 151
    return-void
.end method

.method public setVolume(I)V
    .locals 1

    .prologue
    .line 521
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    iput p1, v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->mostRecentVolume:I

    .line 522
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->setVolume(I)V

    .line 525
    :cond_0
    return-void
.end method

.method protected setupRecyclerView()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedGridGroup:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->hideMementoLoading()V

    .line 210
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_1
    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->numColumns:I

    .line 212
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->setupRecyclerViewLayoutManager()V

    .line 213
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->setupRecyclerViewAdapter()V

    .line 214
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->setupRecyclerViewItemDecoration()V

    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method

.method protected setupRecyclerViewAdapter()V
    .locals 4

    .prologue
    .line 276
    new-instance v0, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;

    const/4 v1, 0x1

    iget v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->numColumns:I

    new-instance v3, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$2;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$2;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;-><init>(ZILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 303
    return-void
.end method

.method protected setupRecyclerViewLayoutManager()V
    .locals 3

    .prologue
    .line 327
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->numColumns:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 328
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->relatedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 329
    return-void
.end method
