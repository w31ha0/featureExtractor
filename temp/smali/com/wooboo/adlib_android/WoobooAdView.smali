.class public final Lcom/wooboo/adlib_android/WoobooAdView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wooboo/adlib_android/WoobooAdView$a;,
        Lcom/wooboo/adlib_android/WoobooAdView$b;
    }
.end annotation


# static fields
.field private static b:I

.field private static i:Landroid/os/Handler;

.field private static j:I

.field private static k:I

.field private static l:D


# instance fields
.field private a:Lcom/wooboo/adlib_android/a;

.field private c:Ljava/util/Timer;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Lcom/wooboo/adlib_android/WoobooAdView$a;

.field private h:Z

.field protected requestingFreshAd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/wooboo/adlib_android/WoobooAdView;->i:Landroid/os/Handler;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wooboo/adlib_android/WoobooAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    iput-boolean v3, p0, Lcom/wooboo/adlib_android/WoobooAdView;->h:Z

    .line 129
    invoke-virtual {p0, v5}, Lcom/wooboo/adlib_android/WoobooAdView;->setFocusable(Z)V

    .line 130
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/WoobooAdView;->setDescendantFocusability(I)V

    .line 131
    invoke-virtual {p0, v5}, Lcom/wooboo/adlib_android/WoobooAdView;->setClickable(Z)V

    .line 134
    if-eqz p2, :cond_1

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://schemas.android.com/apk/res/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v1, "testing"

    .line 137
    invoke-interface {p2, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 139
    if-eqz v1, :cond_0

    .line 140
    invoke-static {v1}, Lcom/wooboo/adlib_android/d;->a(Z)V

    .line 142
    :cond_0
    const-string v1, "textColor"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 145
    const-string v2, "backgroundColor"

    .line 144
    invoke-interface {p2, v0, v2, v3}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 148
    const-string v3, "refreshInterval"

    const/16 v4, 0x1e

    .line 147
    invoke-interface {p2, v0, v3, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 149
    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/WoobooAdView;->setRequestInterval(I)V

    move v0, v2

    .line 151
    :goto_0
    invoke-virtual {p0, v5}, Lcom/wooboo/adlib_android/WoobooAdView;->setGoneWithoutAd(Z)V

    .line 152
    invoke-virtual {p0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->setTextColor(I)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/WoobooAdView;->setBackgroundColor(I)V

    .line 155
    invoke-static {p1}, Lcom/wooboo/adlib_android/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->d(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/wooboo/adlib_android/WoobooAdView;->a(Landroid/content/Context;)V

    .line 158
    return-void

    :cond_1
    move v0, v3

    move v1, v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIZI)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    iput-boolean v2, p0, Lcom/wooboo/adlib_android/WoobooAdView;->h:Z

    .line 84
    invoke-virtual {p0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->setFocusable(Z)V

    .line 85
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/WoobooAdView;->setDescendantFocusability(I)V

    .line 86
    invoke-virtual {p0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->setClickable(Z)V

    .line 87
    if-eqz p5, :cond_0

    .line 88
    invoke-static {p5}, Lcom/wooboo/adlib_android/d;->a(Z)V

    .line 90
    :cond_0
    invoke-virtual {p0, p4}, Lcom/wooboo/adlib_android/WoobooAdView;->setTextColor(I)V

    .line 91
    invoke-virtual {p0, p3}, Lcom/wooboo/adlib_android/WoobooAdView;->setBackgroundColor(I)V

    .line 92
    invoke-virtual {p0, p6}, Lcom/wooboo/adlib_android/WoobooAdView;->setRequestInterval(I)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->setGoneWithoutAd(Z)V

    .line 94
    invoke-static {p2}, Lcom/wooboo/adlib_android/d;->d(Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/wooboo/adlib_android/WoobooAdView;->a(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/wooboo/adlib_android/WoobooAdView;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->a:Lcom/wooboo/adlib_android/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    .line 100
    sput-wide v0, Lcom/wooboo/adlib_android/WoobooAdView;->l:D

    .line 101
    const-wide/high16 v2, 0x4074000000000000L    # 320.0

    mul-double/2addr v2, v0

    double-to-int v2, v2

    sput v2, Lcom/wooboo/adlib_android/WoobooAdView;->j:I

    .line 102
    const-wide/high16 v2, 0x4048000000000000L    # 48.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/wooboo/adlib_android/WoobooAdView;->k:I

    .line 104
    invoke-static {p1}, Lcom/wooboo/adlib_android/d;->c(Landroid/content/Context;)V

    .line 105
    invoke-static {}, Lcom/wooboo/adlib_android/d;->a()V

    .line 106
    invoke-static {p1}, Lcom/wooboo/adlib_android/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->e(Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Lcom/wooboo/adlib_android/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->b(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Lcom/wooboo/adlib_android/e;->a(Landroid/content/Context;)Lcom/wooboo/adlib_android/e;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/wooboo/adlib_android/e;->a(Ljava/lang/String;)I

    move-result v0

    .line 113
    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->b(I)V

    .line 116
    invoke-static {p1}, Lcom/wooboo/adlib_android/d;->a(Landroid/content/Context;)I

    move-result v0

    .line 117
    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->a(I)V

    .line 118
    return-void
.end method

.method static synthetic a(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/a;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView;->a:Lcom/wooboo/adlib_android/a;

    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    .line 283
    monitor-enter p0

    .line 284
    if-eqz p1, :cond_1

    :try_start_0
    sget v0, Lcom/wooboo/adlib_android/WoobooAdView;->b:I

    if-lez v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->c:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->c:Ljava/util/Timer;

    .line 287
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->c:Ljava/util/Timer;

    new-instance v1, Lcom/wooboo/adlib_android/WoobooAdView$1;

    invoke-direct {v1, p0}, Lcom/wooboo/adlib_android/WoobooAdView$1;-><init>(Lcom/wooboo/adlib_android/WoobooAdView;)V

    .line 291
    const-wide/16 v2, 0x7d0

    sget v4, Lcom/wooboo/adlib_android/WoobooAdView;->b:I

    int-to-long v4, v4

    .line 287
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 283
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 293
    :cond_1
    if-eqz p1, :cond_2

    sget v0, Lcom/wooboo/adlib_android/WoobooAdView;->b:I

    if-nez v0, :cond_3

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->c:Ljava/util/Timer;

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 298
    :cond_3
    :try_start_1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->c:Ljava/util/Timer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/wooboo/adlib_android/WoobooAdView;)I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/a;)V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->a:Lcom/wooboo/adlib_android/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->a:Lcom/wooboo/adlib_android/a;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/a;->e()V

    :cond_0
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView;->a:Lcom/wooboo/adlib_android/a;

    iget-boolean v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->h:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/WoobooAdView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/WoobooAdView$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->g:Lcom/wooboo/adlib_android/WoobooAdView$a;

    return-object v0
.end method

.method static synthetic c(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/a;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    .line 428
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/wooboo/adlib_android/a;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v1

    const v0, -0x41333333    # -0.4f

    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v5, v0, v1

    new-instance v0, Lcom/wooboo/adlib_android/b;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-direct/range {v0 .. v6}, Lcom/wooboo/adlib_android/b;-><init>(FFFFFZ)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/wooboo/adlib_android/b;->setDuration(J)V

    invoke-virtual {v0, v6}, Lcom/wooboo/adlib_android/b;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/b;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/wooboo/adlib_android/WoobooAdView$2;

    invoke-direct {v1, p0, p1}, Lcom/wooboo/adlib_android/WoobooAdView$2;-><init>(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/a;)V

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/b;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/WoobooAdView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected static getAdHeight()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/wooboo/adlib_android/WoobooAdView;->k:I

    return v0
.end method

.method protected static getAdWidth()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/wooboo/adlib_android/WoobooAdView;->j:I

    return v0
.end method

.method protected static getDensity()D
    .locals 2

    .prologue
    .line 40
    sget-wide v0, Lcom/wooboo/adlib_android/WoobooAdView;->l:D

    return-wide v0
.end method

.method protected static setAdHeight(I)V
    .locals 0

    .prologue
    .line 60
    sput p0, Lcom/wooboo/adlib_android/WoobooAdView;->k:I

    .line 61
    return-void
.end method

.method protected static setAdWidth(I)V
    .locals 0

    .prologue
    .line 52
    sput p0, Lcom/wooboo/adlib_android/WoobooAdView;->j:I

    .line 53
    return-void
.end method

.method protected static setDensity(D)V
    .locals 0

    .prologue
    .line 44
    sput-wide p0, Lcom/wooboo/adlib_android/WoobooAdView;->l:D

    .line 45
    return-void
.end method


# virtual methods
.method public final RequstAdOnce()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->c:Ljava/util/Timer;

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->requestFreshAd()V

    .line 169
    return-void
.end method

.method protected final getBackgroundColor()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->d:I

    return v0
.end method

.method protected final getRequestInterval()I
    .locals 1

    .prologue
    .line 262
    sget v0, Lcom/wooboo/adlib_android/WoobooAdView;->b:I

    return v0
.end method

.method protected final getTextColor()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->e:I

    return v0
.end method

.method public final getVisibility()I
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->hasAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    const/16 v0, 0x8

    .line 379
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public final hasAd()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->a:Lcom/wooboo/adlib_android/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isGoneWithoutAd()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->f:Z

    return v0
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->h:Z

    .line 403
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 404
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 408
    iput-boolean v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->h:Z

    .line 409
    invoke-direct {p0, v0}, Lcom/wooboo/adlib_android/WoobooAdView;->a(Z)V

    .line 410
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 411
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    .prologue
    .line 395
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 396
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->getMeasuredWidth()I

    move-result v0

    .line 397
    sget v1, Lcom/wooboo/adlib_android/WoobooAdView;->k:I

    invoke-virtual {p0, v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->setMeasuredDimension(II)V

    .line 398
    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 308
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 309
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 310
    invoke-direct {p0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->a(Z)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    if-nez p1, :cond_2

    .line 312
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wooboo/adlib_android/WoobooAdView;->a(Z)V

    goto :goto_0

    .line 313
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 314
    invoke-direct {p0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->a(Z)V

    goto :goto_0
.end method

.method protected final requestFreshAd()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "Wooboo SDK"

    .line 177
    const-string v1, "You have set ads view invisible.  You must call ads view.setVisibility(View.VISIBLE)."

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->requestingFreshAd:Z

    .line 180
    new-instance v0, Lcom/wooboo/adlib_android/WoobooAdView$3;

    invoke-direct {v0, p0}, Lcom/wooboo/adlib_android/WoobooAdView$3;-><init>(Lcom/wooboo/adlib_android/WoobooAdView;)V

    .line 256
    invoke-virtual {v0}, Lcom/wooboo/adlib_android/WoobooAdView$3;->start()V

    goto :goto_0
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 331
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->d:I

    .line 332
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->a:Lcom/wooboo/adlib_android/a;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->a:Lcom/wooboo/adlib_android/a;

    invoke-virtual {v0, p1}, Lcom/wooboo/adlib_android/a;->setBackgroundColor(I)V

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->invalidate()V

    .line 336
    return-void
.end method

.method protected final setGoneWithoutAd(Z)V
    .locals 0

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/wooboo/adlib_android/WoobooAdView;->f:Z

    .line 344
    return-void
.end method

.method public final setListener(Lcom/wooboo/adlib_android/WoobooAdView$a;)V
    .locals 1

    .prologue
    .line 384
    monitor-enter p0

    .line 385
    :try_start_0
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView;->g:Lcom/wooboo/adlib_android/WoobooAdView$a;

    .line 384
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final setRequestInterval(I)V
    .locals 5

    .prologue
    const/16 v3, 0x258

    const/16 v2, 0x14

    const-string v4, "Fresh ads Interval("

    .line 266
    if-gtz p1, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 278
    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    .line 279
    sput v0, Lcom/wooboo/adlib_android/WoobooAdView;->b:I

    .line 280
    return-void

    .line 271
    :cond_0
    if-ge p1, v2, :cond_1

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fresh ads Interval("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    const-string v1, ") seconds must be >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->c(Ljava/lang/String;)V

    move v0, p1

    goto :goto_0

    .line 274
    :cond_1
    if-le p1, v3, :cond_2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fresh ads Interval("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 276
    const-string v1, ") seconds must be <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->c(Ljava/lang/String;)V

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method protected final setTextColor(I)V
    .locals 1

    .prologue
    .line 319
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->e:I

    .line 320
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->a:Lcom/wooboo/adlib_android/a;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->a:Lcom/wooboo/adlib_android/a;

    invoke-virtual {v0, p1}, Lcom/wooboo/adlib_android/a;->a(I)V

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->invalidate()V

    .line 324
    return-void
.end method

.method public final setVisibility(I)V
    .locals 3

    .prologue
    .line 352
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    .line 354
    if-eq v0, p1, :cond_1

    .line 355
    monitor-enter p0

    .line 356
    :try_start_0
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->getChildCount()I

    move-result v0

    .line 358
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_2

    .line 362
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 363
    if-eqz p1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->a:Lcom/wooboo/adlib_android/a;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/a;->e()V

    .line 366
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->a:Lcom/wooboo/adlib_android/a;

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/WoobooAdView;->removeView(Landroid/view/View;)V

    .line 367
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->a:Lcom/wooboo/adlib_android/a;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/a;->c()V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->a:Lcom/wooboo/adlib_android/a;

    .line 355
    :cond_0
    monitor-exit p0

    .line 372
    :cond_1
    return-void

    .line 359
    :cond_2
    invoke-virtual {p0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 360
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
