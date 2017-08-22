.class public Lcom/mopub/mraid/MraidController;
.super Ljava/lang/Object;
.source "MraidController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;,
        Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;,
        Lcom/mopub/mraid/MraidController$UseCustomCloseListener;,
        Lcom/mopub/mraid/MraidController$MraidListener;
    }
.end annotation


# instance fields
.field private final mAdReport:Lcom/mopub/common/AdReport;

.field private mAllowOrientationChange:Z

.field private final mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDefaultAdContainer:Landroid/widget/FrameLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

.field private mIsPaused:Z

.field private final mMraidBridge:Lcom/mopub/mraid/MraidBridge;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

.field private mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

.field private mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOnCloseButtonListener:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOriginalActivityOrientation:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPlacementType:Lcom/mopub/mraid/PlacementType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRootView:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTwoPartBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

.field private mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mViewState:Lcom/mopub/mraid/ViewState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWeakActivity:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adReport"    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "placementType"    # Lcom/mopub/mraid/PlacementType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 122
    new-instance v4, Lcom/mopub/mraid/MraidBridge;

    invoke-direct {v4, p2, p3}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V

    new-instance v5, Lcom/mopub/mraid/MraidBridge;

    sget-object v0, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    invoke-direct {v5, p2, v0}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V

    new-instance v6, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    invoke-direct {v6}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;)V

    .line 126
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adReport"    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "placementType"    # Lcom/mopub/mraid/PlacementType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "bridge"    # Lcom/mopub/mraid/MraidBridge;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "twoPartBridge"    # Lcom/mopub/mraid/MraidBridge;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "screenMetricsWaiter"    # Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v2, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    .line 105
    new-instance v2, Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    .line 113
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mopub/mraid/MraidController;->mAllowOrientationChange:Z

    .line 114
    sget-object v2, Lcom/mopub/mraid/MraidOrientation;->NONE:Lcom/mopub/mraid/MraidOrientation;

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    .line 178
    new-instance v2, Lcom/mopub/mraid/MraidController$3;

    invoke-direct {v2, p0}, Lcom/mopub/mraid/MraidController$3;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 249
    new-instance v2, Lcom/mopub/mraid/MraidController$4;

    invoke-direct {v2, p0}, Lcom/mopub/mraid/MraidController$4;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    .line 134
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 135
    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->mAdReport:Lcom/mopub/common/AdReport;

    .line 136
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 137
    new-instance v2, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    .line 144
    :goto_0
    iput-object p3, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    .line 145
    iput-object p4, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    .line 146
    iput-object p5, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    .line 147
    iput-object p6, p0, Lcom/mopub/mraid/MraidController;->mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    .line 149
    sget-object v2, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    .line 151
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 152
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    new-instance v2, Lcom/mopub/mraid/MraidScreenMetrics;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v2, v3, v4}, Lcom/mopub/mraid/MraidScreenMetrics;-><init>(Landroid/content/Context;F)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 153
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    .line 154
    new-instance v2, Lcom/mopub/common/CloseableLayout;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    .line 155
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    new-instance v3, Lcom/mopub/mraid/MraidController$1;

    invoke-direct {v3, p0}, Lcom/mopub/mraid/MraidController$1;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {v2, v3}, Lcom/mopub/common/CloseableLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    .line 162
    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, "dimmingView":Landroid/view/View;
    new-instance v2, Lcom/mopub/mraid/MraidController$2;

    invoke-direct {v2, p0}, Lcom/mopub/mraid/MraidController$2;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 173
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-virtual {v2, v3}, Lcom/mopub/mraid/MraidBridge;->setMraidBridgeListener(Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;)V

    .line 174
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-virtual {v2, v3}, Lcom/mopub/mraid/MraidBridge;->setMraidBridgeListener(Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;)V

    .line 175
    new-instance v2, Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-direct {v2}, Lcom/mopub/mraid/MraidNativeCommandHandler;-><init>()V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    .line 176
    return-void

    .line 141
    .end local v0    # "dimmingView":Landroid/view/View;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidController$MraidListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/ViewState;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mopub/mraid/MraidController;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mopub/mraid/MraidController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getDisplayRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidNativeCommandHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mopub/mraid/MraidController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->isInlineVideoAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/PlacementType;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    return-object v0
.end method

.method private getAndMemoizeRootView()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 851
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 852
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private getCurrentWebView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    goto :goto_0
.end method

.method private getDisplayRotation()I
    .locals 3

    .prologue
    .line 343
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    const-string v2, "window"

    .line 344
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 345
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1
.end method

.method private getRootView()Landroid/view/ViewGroup;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 838
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 839
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    .line 844
    :goto_0
    return-object v0

    .line 842
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    invoke-static {v1, v2}, Lcom/mopub/common/util/Views;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 844
    .local v0, "bestRootView":Landroid/view/View;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    goto :goto_0
.end method

.method private isInlineVideoAvailable()Z
    .locals 3

    .prologue
    .line 446
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 448
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 449
    :cond_0
    const/4 v1, 0x0

    .line 452
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isInlineVideoAvailable(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v1

    goto :goto_0
.end method

.method private setViewState(Lcom/mopub/mraid/ViewState;)V
    .locals 1
    .param p1, "viewState"    # Lcom/mopub/mraid/ViewState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 611
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;Ljava/lang/Runnable;)V

    .line 612
    return-void
.end method

.method private setViewState(Lcom/mopub/mraid/ViewState;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "viewState"    # Lcom/mopub/mraid/ViewState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "successRunnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID state set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    .line 618
    .local v0, "previousViewState":Lcom/mopub/mraid/ViewState;
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    .line 619
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->notifyViewState(Lcom/mopub/mraid/ViewState;)V

    .line 622
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->notifyViewState(Lcom/mopub/mraid/ViewState;)V

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    if-eqz v1, :cond_1

    .line 627
    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne p1, v1, :cond_2

    .line 628
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {v1}, Lcom/mopub/mraid/MraidController$MraidListener;->onExpand()V

    .line 636
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/mopub/mraid/MraidController;->updateScreenMetricsAsync(Ljava/lang/Runnable;)V

    .line 637
    return-void

    .line 629
    :cond_2
    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne p1, v1, :cond_3

    .line 630
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {v1}, Lcom/mopub/mraid/MraidController$MraidListener;->onClose()V

    goto :goto_0

    .line 631
    :cond_3
    sget-object v1, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne p1, v1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {v1}, Lcom/mopub/mraid/MraidController$MraidListener;->onClose()V

    goto :goto_0
.end method

.method private updateScreenMetricsAsync(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "successRunnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 503
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;->cancelLastRequest()V

    .line 506
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Landroid/view/View;

    move-result-object v0

    .line 507
    .local v0, "currentWebView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 548
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;->waitFor([Landroid/view/View;)Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;

    move-result-object v1

    new-instance v2, Lcom/mopub/mraid/MraidController$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/mopub/mraid/MraidController$7;-><init>(Lcom/mopub/mraid/MraidController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method applyOrientation()V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 880
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    sget-object v2, Lcom/mopub/mraid/MraidOrientation;->NONE:Lcom/mopub/mraid/MraidOrientation;

    if-ne v1, v2, :cond_2

    .line 881
    iget-boolean v1, p0, Lcom/mopub/mraid/MraidController;->mAllowOrientationChange:Z

    if-eqz v1, :cond_0

    .line 884
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->unApplyOrientation()V

    .line 900
    :goto_0
    return-void

    .line 886
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 887
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 888
    new-instance v1, Lcom/mopub/mraid/MraidCommandException;

    const-string v2, "Unable to set MRAID expand orientation to \'none\'; expected passed in Activity Context."

    invoke-direct {v1, v2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 894
    :cond_1
    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->getScreenOrientation(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidController;->lockOrientation(I)V

    goto :goto_0

    .line 898
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidOrientation;->getActivityInfoOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidController;->lockOrientation(I)V

    goto :goto_0
.end method

.method clampInt(III)I
    .locals 1
    .param p1, "min"    # I
    .param p2, "target"    # I
    .param p3, "max"    # I

    .prologue
    .line 640
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 579
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;->cancelLastRequest()V

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :cond_0
    iget-boolean v1, p0, Lcom/mopub/mraid/MraidController;->mIsPaused:Z

    if-nez v1, :cond_1

    .line 591
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidController;->pause(Z)V

    .line 595
    :cond_1
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-static {v1}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 598
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge;->detach()V

    .line 599
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v1, :cond_2

    .line 600
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->destroy()V

    .line 601
    iput-object v3, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 603
    :cond_2
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge;->detach()V

    .line 604
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v1, :cond_3

    .line 605
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->destroy()V

    .line 606
    iput-object v3, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 608
    :cond_3
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 585
    throw v0
.end method

.method public getAdContainer()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 965
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method getAllowOrientationChange()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1103
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidController;->mAllowOrientationChange:Z

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getExpandedAdContainer()Lcom/mopub/common/CloseableLayout;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    return-object v0
.end method

.method getForceOrientation()Lcom/mopub/mraid/MraidOrientation;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    return-object v0
.end method

.method getMraidWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    return-object v0
.end method

.method getOriginalActivityOrientation()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    return-object v0
.end method

.method getTwoPartWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    return-object v0
.end method

.method getViewState()Lcom/mopub/mraid/ViewState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    return-object v0
.end method

.method protected handleClose()V
    .locals 4
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 795
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_1

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_0

    .line 805
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_3

    .line 806
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->unApplyOrientation()V

    .line 809
    :cond_3
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_6

    .line 810
    :cond_4
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_5

    .line 812
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 813
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->detach()V

    .line 821
    :goto_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 824
    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;)V

    goto :goto_0

    .line 816
    :cond_5
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 817
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 819
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 825
    :cond_6
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_0

    .line 826
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 827
    sget-object v0, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;)V

    goto :goto_0
.end method

.method handleConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidWebViewDebugListener;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    .line 354
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected handleCustomClose(Z)V
    .locals 4
    .param p1, "useCustomClose"    # Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 952
    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v3}, Lcom/mopub/common/CloseableLayout;->isCloseVisible()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 953
    .local v0, "wasUsingCustomClose":Z
    :goto_0
    if-ne p1, v0, :cond_2

    .line 961
    :cond_0
    :goto_1
    return-void

    .end local v0    # "wasUsingCustomClose":Z
    :cond_1
    move v0, v2

    .line 952
    goto :goto_0

    .line 957
    .restart local v0    # "wasUsingCustomClose":Z
    :cond_2
    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    if-nez p1, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 958
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mOnCloseButtonListener:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    if-eqz v1, :cond_0

    .line 959
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mOnCloseButtonListener:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    invoke-interface {v1, p1}, Lcom/mopub/mraid/MraidController$UseCustomCloseListener;->useCustomCloseChanged(Z)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 957
    goto :goto_2
.end method

.method handleExpand(Ljava/net/URI;Z)V
    .locals 6
    .param p1, "uri"    # Ljava/net/URI;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "shouldUseCustomClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v5, -0x1

    .line 735
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v2, :cond_0

    .line 736
    new-instance v2, Lcom/mopub/mraid/MraidCommandException;

    const-string v3, "Unable to expand after the WebView is destroyed"

    invoke-direct {v2, v3}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 739
    :cond_0
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v3, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v2, v3, :cond_2

    .line 791
    :cond_1
    :goto_0
    return-void

    .line 743
    :cond_2
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v2, v3, :cond_1

    .line 747
    :cond_3
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->applyOrientation()V

    .line 750
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    .line 751
    .local v0, "isTwoPart":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 754
    new-instance v2, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 755
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v2, v3}, Lcom/mopub/mraid/MraidBridge;->attachView(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 758
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/mraid/MraidBridge;->setContentUrl(Ljava/lang/String;)V

    .line 762
    :cond_4
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 764
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v2, v3, :cond_8

    .line 765
    if-eqz v0, :cond_7

    .line 766
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v2, v3, v1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    :goto_2
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getAndMemoizeRootView()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v2, v1}, Lcom/mopub/common/CloseableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    invoke-virtual {p0, p2}, Lcom/mopub/mraid/MraidController;->handleCustomClose(Z)V

    .line 790
    sget-object v2, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v2}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;)V

    goto :goto_0

    .line 750
    .end local v0    # "isTwoPart":Z
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 768
    .restart local v0    # "isTwoPart":Z
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 769
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 770
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v2, v3, v1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 774
    :cond_8
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v2, v3, :cond_5

    .line 775
    if-eqz v0, :cond_5

    .line 778
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v2, v3}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 779
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 781
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v2, v3, v1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method

.method handleJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "result"    # Landroid/webkit/JsResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    invoke-interface {v0, p1, p2}, Lcom/mopub/mraid/MraidWebViewDebugListener;->onJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 363
    :goto_0
    return v0

    .line 362
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/JsResult;->confirm()V

    .line 363
    const/4 v0, 0x1

    goto :goto_0
.end method

.method handleOpen(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 1042
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    if-eqz v1, :cond_0

    .line 1043
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {v1}, Lcom/mopub/mraid/MraidController$MraidListener;->onOpen()V

    .line 1046
    :cond_0
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    .line 1048
    .local v0, "builder":Lcom/mopub/common/UrlHandler$Builder;
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mAdReport:Lcom/mopub/common/AdReport;

    if-eqz v1, :cond_1

    .line 1049
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mAdReport:Lcom/mopub/common/AdReport;

    invoke-virtual {v1}, Lcom/mopub/common/AdReport;->getDspCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    .line 1052
    :cond_1
    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/mopub/common/UrlAction;

    const/4 v3, 0x0

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v1

    .line 1059
    invoke-virtual {v1}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 1060
    return-void
.end method

.method handleOrientationChange(I)V
    .locals 1
    .param p1, "currentRotation"    # I

    .prologue
    .line 551
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->updateScreenMetricsAsync(Ljava/lang/Runnable;)V

    .line 552
    return-void
.end method

.method handlePageLoad()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 457
    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    new-instance v1, Lcom/mopub/mraid/MraidController$5;

    invoke-direct {v1, p0}, Lcom/mopub/mraid/MraidController$5;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-direct {p0, v0, v1}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;Ljava/lang/Runnable;)V

    .line 473
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lcom/mopub/mraid/MraidController$MraidListener;->onLoaded(Landroid/view/View;)V

    .line 476
    :cond_0
    return-void
.end method

.method handleResize(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V
    .locals 18
    .param p1, "widthDips"    # I
    .param p2, "heightDips"    # I
    .param p3, "offsetXDips"    # I
    .param p4, "offsetYDips"    # I
    .param p5, "closePosition"    # Lcom/mopub/common/CloseableLayout$ClosePosition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "allowOffscreen"    # Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 648
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v13, :cond_0

    .line 649
    new-instance v13, Lcom/mopub/mraid/MraidCommandException;

    const-string v14, "Unable to resize after the WebView is destroyed"

    invoke-direct {v13, v14}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 654
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v14, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    if-eq v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v14, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne v13, v14, :cond_2

    .line 731
    :cond_1
    :goto_0
    return-void

    .line 657
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v14, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne v13, v14, :cond_3

    .line 658
    new-instance v13, Lcom/mopub/mraid/MraidCommandException;

    const-string v14, "Not allowed to resize from an already expanded ad"

    invoke-direct {v13, v14}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 661
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v14, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v13, v14, :cond_4

    .line 662
    new-instance v13, Lcom/mopub/mraid/MraidCommandException;

    const-string v14, "Not allowed to resize from an interstitial ad"

    invoke-direct {v13, v14}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 666
    :cond_4
    move/from16 v0, p1

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v12

    .line 667
    .local v12, "width":I
    move/from16 v0, p2

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    .line 668
    .local v3, "height":I
    move/from16 v0, p3

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v8

    .line 669
    .local v8, "offsetX":I
    move/from16 v0, p4

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v9

    .line 670
    .local v9, "offsetY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v13}, Lcom/mopub/mraid/MraidScreenMetrics;->getDefaultAdRect()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->left:I

    add-int v5, v13, v8

    .line 671
    .local v5, "left":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v13}, Lcom/mopub/mraid/MraidScreenMetrics;->getDefaultAdRect()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int v11, v13, v9

    .line 672
    .local v11, "top":I
    new-instance v10, Landroid/graphics/Rect;

    add-int v13, v5, v12

    add-int v14, v11, v3

    invoke-direct {v10, v5, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 674
    .local v10, "resizeRect":Landroid/graphics/Rect;
    if-nez p6, :cond_7

    .line 676
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v13}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 677
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-gt v13, v14, :cond_5

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-le v13, v14, :cond_6

    .line 678
    :cond_5
    new-instance v13, Lcom/mopub/mraid/MraidCommandException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "resizeProperties specified a size ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") and offset ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") that doesn\'t allow the ad to appear within the max allowed size ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 682
    invoke-virtual {v15}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRectDips()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 683
    invoke-virtual {v15}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRectDips()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 687
    :cond_6
    iget v13, v1, Landroid/graphics/Rect;->left:I

    iget v14, v10, Landroid/graphics/Rect;->left:I

    iget v15, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/mopub/mraid/MraidController;->clampInt(III)I

    move-result v6

    .line 688
    .local v6, "newLeft":I
    iget v13, v1, Landroid/graphics/Rect;->top:I

    iget v14, v10, Landroid/graphics/Rect;->top:I

    iget v15, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/mopub/mraid/MraidController;->clampInt(III)I

    move-result v7

    .line 689
    .local v7, "newTop":I
    invoke-virtual {v10, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 693
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v6    # "newLeft":I
    .end local v7    # "newTop":I
    :cond_7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 694
    .local v2, "closeRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    move-object/from16 v0, p5

    invoke-virtual {v13, v0, v10, v2}, Lcom/mopub/common/CloseableLayout;->applyCloseRegionBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v13}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 696
    new-instance v13, Lcom/mopub/mraid/MraidCommandException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "resizeProperties specified a size ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") and offset ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") that doesn\'t allow the close region to appear within the max allowed size ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 700
    invoke-virtual {v15}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRectDips()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 701
    invoke-virtual {v15}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRectDips()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 704
    :cond_8
    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 705
    new-instance v13, Lcom/mopub/mraid/MraidCommandException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "resizeProperties specified a size ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") and offset ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") that don\'t allow the close region to appear within the resized ad."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 712
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 713
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Lcom/mopub/common/CloseableLayout;->setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V

    .line 716
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-direct {v4, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 717
    .local v4, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v13, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v14}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    iput v13, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 718
    iget v13, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v14}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    iput v13, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 719
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v14, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v13, v14, :cond_b

    .line 720
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 722
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-direct/range {v15 .. v17}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14, v15}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 724
    invoke-direct/range {p0 .. p0}, Lcom/mopub/mraid/MraidController;->getAndMemoizeRootView()Landroid/view/ViewGroup;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v13, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    :cond_a
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Lcom/mopub/common/CloseableLayout;->setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V

    .line 730
    sget-object v13, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;)V

    goto/16 :goto_0

    .line 725
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v14, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v13, v14, :cond_a

    .line 726
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v13, v4}, Lcom/mopub/common/CloseableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method handleSetOrientationProperties(ZLcom/mopub/mraid/MraidOrientation;)V
    .locals 3
    .param p1, "allowOrientationChange"    # Z
    .param p2, "forceOrientation"    # Lcom/mopub/mraid/MraidOrientation;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 1023
    invoke-virtual {p0, p2}, Lcom/mopub/mraid/MraidController;->shouldAllowForceOrientation(Lcom/mopub/mraid/MraidOrientation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    new-instance v0, Lcom/mopub/mraid/MraidCommandException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to force orientation to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1028
    :cond_0
    iput-boolean p1, p0, Lcom/mopub/mraid/MraidController;->mAllowOrientationChange:Z

    .line 1029
    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    .line 1031
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_2

    .line 1032
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->applyOrientation()V

    .line 1034
    :cond_2
    return-void
.end method

.method handleShowVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 860
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->startMraid(Landroid/content/Context;Ljava/lang/String;)V

    .line 861
    return-void
.end method

.method handleTwoPartPageLoad()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 480
    new-instance v0, Lcom/mopub/mraid/MraidController$6;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$6;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->updateScreenMetricsAsync(Ljava/lang/Runnable;)V

    .line 495
    return-void
.end method

.method public loadContent(Ljava/lang/String;)V
    .locals 4
    .param p1, "htmlData"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, -0x1

    .line 330
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "loadContent should only be called once"

    invoke-static {v0, v1}, Lcom/mopub/common/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 332
    new-instance v0, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 333
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->attachView(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 334
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->setContentHtml(Ljava/lang/String;)V

    .line 339
    return-void

    .line 330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadJavascript(Ljava/lang/String;)V
    .locals 1
    .param p1, "javascript"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 972
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    .line 973
    return-void
.end method

.method lockOrientation(I)V
    .locals 4
    .param p1, "screenOrientation"    # I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 865
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 866
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidController;->shouldAllowForceOrientation(Lcom/mopub/mraid/MraidOrientation;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 867
    :cond_0
    new-instance v1, Lcom/mopub/mraid/MraidCommandException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to lock orientation to unsupported value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    .line 868
    invoke-virtual {v3}, Lcom/mopub/mraid/MraidOrientation;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 871
    :cond_1
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 872
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    .line 875
    :cond_2
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 876
    return-void
.end method

.method public pause(Z)V
    .locals 1
    .param p1, "isFinishing"    # Z

    .prologue
    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mraid/MraidController;->mIsPaused:Z

    .line 558
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/util/WebViews;->onPause(Landroid/webkit/WebView;Z)V

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/util/WebViews;->onPause(Landroid/webkit/WebView;Z)V

    .line 564
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mraid/MraidController;->mIsPaused:Z

    .line 570
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->onResume()V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->onResume()V

    .line 576
    :cond_1
    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V
    .locals 0
    .param p1, "debugListener"    # Lcom/mopub/mraid/MraidWebViewDebugListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 326
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    .line 327
    return-void
.end method

.method public setMraidListener(Lcom/mopub/mraid/MraidController$MraidListener;)V
    .locals 0
    .param p1, "mraidListener"    # Lcom/mopub/mraid/MraidController$MraidListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 318
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    .line 319
    return-void
.end method

.method setOrientationBroadcastReceiver(Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;)V
    .locals 0
    .param p1, "receiver"    # Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    .line 1116
    return-void
.end method

.method setRootView(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    .line 1086
    return-void
.end method

.method setRootViewSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1091
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v0, v1, v1, p1, p2}, Lcom/mopub/mraid/MraidScreenMetrics;->setRootViewPosition(IIII)V

    .line 1092
    return-void
.end method

.method public setUseCustomCloseListener(Lcom/mopub/mraid/MraidController$UseCustomCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mopub/mraid/MraidController$UseCustomCloseListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 322
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mOnCloseButtonListener:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    .line 323
    return-void
.end method

.method setViewStateForTesting(Lcom/mopub/mraid/ViewState;)V
    .locals 0
    .param p1, "viewState"    # Lcom/mopub/mraid/ViewState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    .line 1073
    return-void
.end method

.method shouldAllowForceOrientation(Lcom/mopub/mraid/MraidOrientation;)Z
    .locals 10
    .param p1, "newOrientation"    # Lcom/mopub/mraid/MraidOrientation;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 914
    sget-object v7, Lcom/mopub/mraid/MraidOrientation;->NONE:Lcom/mopub/mraid/MraidOrientation;

    if-ne p1, v7, :cond_1

    .line 947
    :cond_0
    :goto_0
    return v5

    .line 918
    :cond_1
    iget-object v7, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 920
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_2

    move v5, v6

    .line 921
    goto :goto_0

    .line 926
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    .line 927
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v9, 0x0

    .line 926
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 933
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget v2, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 934
    .local v2, "activityOrientation":I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 935
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidOrientation;->getActivityInfoOrientation()I

    move-result v7

    if-eq v2, v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 928
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "activityOrientation":I
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move v5, v6

    .line 929
    goto :goto_0

    .line 940
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "activityOrientation":I
    :cond_3
    iget v7, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v8, 0x80

    .line 941
    invoke-static {v7, v8}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result v3

    .line 944
    .local v3, "containsNecessaryConfigChanges":Z
    if-eqz v3, :cond_4

    iget v7, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v8, 0x400

    .line 945
    invoke-static {v7, v8}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result v7

    if-eqz v7, :cond_4

    move v3, v5

    :goto_1
    move v5, v3

    .line 947
    goto :goto_0

    :cond_4
    move v3, v6

    .line 945
    goto :goto_1
.end method

.method unApplyOrientation()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 904
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 905
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 906
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 908
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    .line 909
    return-void
.end method
