.class Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking;
.super Ljava/lang/Object;
.source "LolomoTracking.java"


# static fields
.field static final DEBUG_TRACKING:Z = false

.field private static final TAG:Ljava/lang/String; = "LolomoTracking"

.field private static final VISIBLE_RATIO_FOR_VALID_PRESENTATION:F = 0.5f

.field private static locationInWindowHelper:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking;->locationInWindowHelper:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking;->locationInWindowHelper:[I

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;I)V
    .locals 0

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking;->reportPresentation(Landroid/content/Context;Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;I)V

    return-void
.end method

.method static doTracking(Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;)V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->basicVideo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->lomoContext:Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 90
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->basicVideo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;-><init>(Ljava/lang/Object;Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->lastPresentationReportingCallback:Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$PresentationReportingCallback;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/util/ThreadUtils$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    :cond_0
    return-void
.end method

.method static getTrackingOnScrollListener()Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper;->access$000()Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    return-object v0
.end method

.method private static reportPresentation(Landroid/content/Context;Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;I)V
    .locals 9

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 55
    if-eqz p2, :cond_0

    .line 56
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%s-%s-%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;->rowPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 57
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 58
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    .line 60
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->isPresentationTrackingType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->useLolomoBoxArt()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;->lomo()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->usesVerticalBoxArtType(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, p2, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    if-eqz v3, :cond_1

    move-object v0, p2

    .line 64
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 65
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getBoxartId()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 67
    :goto_0
    const-string/jumbo v0, "LolomoTracking"

    const-string/jumbo v4, "Tracking [%s] %s in %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;->lomo()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v0, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 68
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getPresentationTracking()Lcom/netflix/mediaclient/servicemgr/PresentationTracking;

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;->lomo()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v1

    .line 70
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 71
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 73
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;->uiLocation()Lcom/netflix/mediaclient/servicemgr/UiLocation;

    move-result-object v5

    move v4, p3

    .line 68
    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/PresentationTracking;->reportPresentation(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/util/List;Ljava/util/List;ILcom/netflix/mediaclient/servicemgr/UiLocation;)V

    .line 79
    :cond_0
    return-void

    :cond_1
    move-object v3, v0

    goto :goto_0
.end method

.method static resetTracking(Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->lastPresentationReportingCallback:Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$PresentationReportingCallback;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->lastPresentationReportingCallback:Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$PresentationReportingCallback;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ThreadUtils$MainHandler;->removeCallback(Ljava/lang/Runnable;)V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->lastPresentationReportingCallback:Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$PresentationReportingCallback;

    .line 135
    :cond_0
    return-void
.end method
