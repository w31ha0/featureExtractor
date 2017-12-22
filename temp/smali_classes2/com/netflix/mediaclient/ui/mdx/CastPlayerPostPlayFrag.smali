.class public Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "CastPlayerPostPlayFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/common/PlayContextProvider;


# static fields
.field public static final CAST_PLAYER_POST_PLAY_ACTION_HIDE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.CAST_PLAYER_POST_HIDE"

.field public static final CAST_PLAYER_POST_PLAY_ACTION_TITLE_END:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.CAST_PLAYER_POST_PLAY_TITLE_END"

.field public static final CAST_PLAYER_POST_PLAY_ACTION_TITLE_NEXT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.CAST_PLAYER_POST_PLAY_TITLE_NEXT"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private backToBrowsingButton:Landroid/widget/TextView;

.field private countdown:Landroid/widget/TextView;

.field private countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

.field private episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

.field private episodeTitle:Landroid/widget/TextView;

.field private episodesButton:Landroid/widget/ImageView;

.field private final miniPlayerPostPlay:Landroid/content/BroadcastReceiver;

.field private playButton:Landroid/widget/Button;

.field private postPlayNextContainer:Landroid/view/ViewGroup;

.field private postPlayRatingContainer:Landroid/view/ViewGroup;

.field private ratingThumbDown:Landroid/widget/ImageView;

.field private ratingThumbUp:Landroid/widget/ImageView;

.field private ratingThumbsContainer:Landroid/view/ViewGroup;

.field private showTitle:Landroid/widget/TextView;

.field private stopButton:Landroid/widget/ImageView;

.field private synopsis:Landroid/widget/TextView;

.field private targetName:Landroid/widget/TextView;

.field private video:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 357
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$8;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->miniPlayerPostPlay:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->handlePlayNow()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->showPostPlayViewsForNext()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->showTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->video:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->ratingThumbUp:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;ILandroid/view/View;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->toggleThumb(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;ILandroid/view/View;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->ratingThumbDown:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->showPostPlayViewsWithRatings()V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->hidePostPlayViews()V

    return-void
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    return-object p1
.end method

.method private createIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->isMdxAgentAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgentApiUtils;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 95
    const v0, 0x7f100125

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->episodeTitle:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f10011e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->showTitle:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f100124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->targetName:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f100123

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->countdown:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f100126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->synopsis:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f100127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->playButton:Landroid/widget/Button;

    .line 102
    const v0, 0x7f100128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->stopButton:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f100129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->episodesButton:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f10011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->backToBrowsingButton:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f10011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->postPlayRatingContainer:Landroid/view/ViewGroup;

    .line 107
    const v0, 0x7f100122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->postPlayNextContainer:Landroid/view/ViewGroup;

    .line 108
    const v0, 0x7f10011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->ratingThumbsContainer:Landroid/view/ViewGroup;

    .line 109
    const v0, 0x7f100120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->ratingThumbUp:Landroid/widget/ImageView;

    .line 110
    const v0, 0x7f100121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->ratingThumbDown:Landroid/widget/ImageView;

    .line 111
    return-void
.end method

.method private handlePlayNow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayContext;->DFLT_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgentApiUtils;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;Z)Z

    .line 264
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->sendShowAndDisableIntent(Landroid/content/Context;)V

    .line 266
    :cond_0
    return-void
.end method

.method private hidePostPlayViews()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->postPlayRatingContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->postPlayRatingContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->postPlayNextContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->postPlayNextContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 196
    :cond_1
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->setMDXTargetName()V

    .line 269
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->setClickListeners()V

    .line 270
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->initReceivers()V

    .line 271
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->setupCountdownTimer()V

    .line 272
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->setupRating()V

    .line 273
    return-void
.end method

.method private initReceivers()V
    .locals 3

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->miniPlayerPostPlay:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.CAST_PLAYER_POST_PLAY_TITLE_END"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->miniPlayerPostPlay:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.CAST_PLAYER_POST_PLAY_TITLE_NEXT"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->miniPlayerPostPlay:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.CAST_PLAYER_POST_HIDE"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method private setClickListeners()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->playButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->playButton:Landroid/widget/Button;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$1;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->stopButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->stopButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$2;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->backToBrowsingButton:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->backToBrowsingButton:Landroid/widget/TextView;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$3;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->episodesButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->episodesButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$4;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_3
    return-void
.end method

.method private setMDXTargetName()V
    .locals 5

    .prologue
    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->targetName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->isMdxAgentAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->getCurrentDeviceFriendlyName(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->targetName:Landroid/widget/TextView;

    const v2, 0x7f090173

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_0
    return-void
.end method

.method private setupCountdownTimer()V
    .locals 3

    .prologue
    .line 340
    new-instance v0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    .line 341
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$7;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$7;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->setOnTick(Ljava/lang/Runnable;)V

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->setTime(I)V

    .line 348
    return-void
.end method

.method private setupRating()V
    .locals 2

    .prologue
    .line 276
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$5;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)V

    .line 296
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->ratingThumbUp:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->ratingThumbDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    return-void
.end method

.method private showPostPlayViewsForNext()V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->postPlayNextContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->postPlayNextContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->postPlayRatingContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 235
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.service.ACTION_EXPAND_CAST_PLAYER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->setTime(I)V

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->startTimer()V

    .line 242
    :cond_1
    return-void
.end method

.method private showPostPlayViewsWithRatings()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->postPlayRatingContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->postPlayRatingContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->postPlayNextContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->postPlayNextContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 206
    :cond_1
    return-void
.end method

.method private stopAllNotifications()V
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->stopAllNotifications()V

    .line 258
    :cond_0
    return-void
.end method

.method private toggleThumb(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;ILandroid/view/View;I)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportRateActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 303
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->ratingThumbUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->ratingThumbDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 308
    instance-of v0, p2, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getShowId()Ljava/lang/String;

    move-result-object v0

    .line 311
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-object v6, v0

    move-object v7, v1

    .line 317
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v8

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$6;

    sget-object v2, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->video:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$6;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;)V

    move-object v1, v8

    move-object v2, v6

    move-object v3, v7

    move v4, p5

    move v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->setVideoThumbRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 337
    return-void

    .line 313
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    move-object v6, v0

    move-object v7, v1

    goto :goto_0
.end method

.method private updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 6

    .prologue
    .line 397
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->episodeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->episodeTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09010d

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 399
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getEpisodeNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 398
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->synopsis:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->synopsis:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSynopsis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->setMDXTargetName()V

    .line 407
    return-void
.end method

.method private updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 410
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->showTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 411
    instance-of v0, p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 412
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 413
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->showTitle:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getUserThumbRating()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 433
    :goto_1
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->showTitle:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 421
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->ratingThumbUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 422
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->ratingThumbDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 425
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->ratingThumbUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 426
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->ratingThumbDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 429
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->ratingThumbUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 430
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->ratingThumbDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 441
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->NFLX_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public handleStop()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 174
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->isMdxAgentAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->stopAllNotifications()V

    .line 180
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_STOP"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 181
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->hidePostPlayViews()V

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->stopTimer()V

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->countdown:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->targetName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    :cond_0
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method public isShowingForNext()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->postPlayNextContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingTitleEnd()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->postPlayRatingContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 87
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Creating new frag view..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const v0, 0x7f030030

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->findViews(Landroid/view/View;)V

    .line 90
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->init()V

    .line 91
    return-object v0
.end method

.method public refreshTimerText()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 209
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->getTime()I

    move-result v1

    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->getTime()I

    move-result v0

    if-le v0, v3, :cond_2

    const v0, 0x7f09016a

    .line 216
    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->countdown:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->countdown:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->countdown:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->targetName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 214
    :cond_2
    const v0, 0x7f090169

    goto :goto_1
.end method

.method public setVideo(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->video:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 437
    return-void
.end method
