.class Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper;
.super Ljava/lang/Object;
.source "LolomoTracking.java"


# static fields
.field private static final sDensityDpi:F

.field private static final sScrollingRecyclerViews:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/support/v7/widget/RecyclerView;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTrackingOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    sput v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper;->sDensityDpi:F

    .line 156
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper;->sTrackingOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 174
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper;->sScrollingRecyclerViews:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper;->sTrackingOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 149
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper;->reportUserStartScrolling(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$400(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 149
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper;->reportUserEndScrolling(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 149
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper;->reportRecyclerViewIsScrolling(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method

.method private static reportRecyclerViewIsScrolling(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 4

    .prologue
    .line 201
    sget-object v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper;->sScrollingRecyclerViews:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 202
    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper;->sDensityDpi:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 207
    iget v1, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper;->sDensityDpi:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method private static reportUserEndScrolling(Landroid/support/v7/widget/RecyclerView;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 185
    sget-object v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper;->sScrollingRecyclerViews:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 186
    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 190
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 193
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getPresentationTracking()Lcom/netflix/mediaclient/servicemgr/PresentationTracking;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    iget v4, v0, Landroid/graphics/PointF;->y:F

    float-to-double v4, v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/servicemgr/PresentationTracking;->reportLolomoScrollAmount(DD)V

    .line 196
    :cond_1
    iput v6, v0, Landroid/graphics/PointF;->x:F

    .line 197
    iput v6, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method private static reportUserStartScrolling(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper;->sScrollingRecyclerViews:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 178
    if-nez v0, :cond_0

    .line 179
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 180
    sget-object v1, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper;->sScrollingRecyclerViews:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_0
    return-void
.end method
