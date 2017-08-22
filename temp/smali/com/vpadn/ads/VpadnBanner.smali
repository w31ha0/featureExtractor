.class public Lcom/vpadn/ads/VpadnBanner;
.super Landroid/widget/RelativeLayout;
.source "VpadnBanner.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/vpadn/ads/VpadnAd;
.implements Lvpadn/ao;


# static fields
.field public static final DEFAULT_BACKGROUND_COLOR:I = 0x1060019


# instance fields
.field private a:Lvpadn/af;

.field private b:Lcom/vpadn/ads/VpadnAdListener;

.field private c:Landroid/app/Activity;

.field private d:Z

.field private e:I

.field private f:I

.field private g:Lcom/vpadn/ads/DebugListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/vpadn/ads/VpadnAdSize;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 186
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    .line 43
    iput-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->b:Lcom/vpadn/ads/VpadnAdListener;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpadn/ads/VpadnBanner;->d:Z

    .line 187
    iput-object p1, p0, Lcom/vpadn/ads/VpadnBanner;->c:Landroid/app/Activity;

    .line 188
    const v0, 0x1060019

    invoke-virtual {p0, v0}, Lcom/vpadn/ads/VpadnBanner;->setBackgroundColor(I)V

    .line 189
    invoke-static {p1}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    .line 193
    new-instance v0, Lvpadn/af;

    invoke-direct {v0, p1, p0}, Lvpadn/af;-><init>(Landroid/app/Activity;Lvpadn/ao;)V

    iput-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    .line 202
    if-nez p2, :cond_0

    .line 203
    iput-boolean v2, p0, Lcom/vpadn/ads/VpadnBanner;->d:Z

    .line 221
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v0, p2}, Lvpadn/af;->a(Ljava/lang/String;)V

    .line 208
    if-nez p3, :cond_1

    .line 209
    const-string v0, "VponBanner"

    const-string v1, "adSize is Null, use SMART_BANNER"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    sget-object v1, Lcom/vpadn/ads/VpadnAdSize;->SMART_BANNER:Lcom/vpadn/ads/VpadnAdSize;

    invoke-virtual {v0, v1}, Lvpadn/af;->a(Lcom/vpadn/ads/VpadnAdSize;)V

    .line 215
    :goto_1
    if-nez p4, :cond_2

    .line 216
    iput-boolean v2, p0, Lcom/vpadn/ads/VpadnBanner;->d:Z

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v0, p3}, Lvpadn/af;->a(Lcom/vpadn/ads/VpadnAdSize;)V

    goto :goto_1

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v0, p4}, Lvpadn/af;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    .line 43
    iput-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->b:Lcom/vpadn/ads/VpadnAdListener;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpadn/ads/VpadnBanner;->d:Z

    move-object v0, p1

    .line 71
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->c:Landroid/app/Activity;

    .line 72
    const v0, 0x1060019

    invoke-virtual {p0, v0}, Lcom/vpadn/ads/VpadnBanner;->setBackgroundColor(I)V

    .line 73
    invoke-static {p1}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    .line 76
    new-instance v0, Lvpadn/af;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, p0}, Lvpadn/af;-><init>(Landroid/app/Activity;Lvpadn/ao;)V

    iput-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    .line 85
    invoke-direct {p0, p2}, Lcom/vpadn/ads/VpadnBanner;->a(Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/vpadn/ads/VpadnBanner;)Lvpadn/af;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    return-object v0
.end method

.method static synthetic a(Lcom/vpadn/ads/VpadnBanner;Lvpadn/af;)Lvpadn/af;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    return-object p1
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 96
    sget-object v7, Lcom/vpadn/ads/VpadnAdSize;->SMART_BANNER:Lcom/vpadn/ads/VpadnAdSize;

    .line 100
    const-string v3, "TW"

    .line 105
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v9

    move v8, v0

    move v4, v0

    move v5, v0

    move-object v6, v2

    .line 106
    :goto_0
    if-ge v8, v9, :cond_b

    .line 107
    invoke-interface {p1, v8}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    .line 108
    const-string v11, "bannerId"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 109
    invoke-interface {p1, v8}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 106
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const-string v11, "platform"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 111
    invoke-interface {p1, v8}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 112
    :cond_2
    const-string v11, "adSize"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 113
    invoke-interface {p1, v8}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 114
    const-string v11, "BANNER"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 115
    sget-object v7, Lcom/vpadn/ads/VpadnAdSize;->BANNER:Lcom/vpadn/ads/VpadnAdSize;

    goto :goto_1

    .line 116
    :cond_3
    const-string v11, "IAB_BANNER"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 117
    sget-object v7, Lcom/vpadn/ads/VpadnAdSize;->IAB_BANNER:Lcom/vpadn/ads/VpadnAdSize;

    goto :goto_1

    .line 118
    :cond_4
    const-string v11, "IAB_LEADERBOARD"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 119
    sget-object v7, Lcom/vpadn/ads/VpadnAdSize;->IAB_LEADERBOARD:Lcom/vpadn/ads/VpadnAdSize;

    goto :goto_1

    .line 120
    :cond_5
    const-string v11, "IAB_MRECT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 121
    sget-object v7, Lcom/vpadn/ads/VpadnAdSize;->IAB_MRECT:Lcom/vpadn/ads/VpadnAdSize;

    goto :goto_1

    .line 122
    :cond_6
    const-string v11, "IAB_WIDE_SKYSCRAPER"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 123
    sget-object v7, Lcom/vpadn/ads/VpadnAdSize;->IAB_WIDE_SKYSCRAPER:Lcom/vpadn/ads/VpadnAdSize;

    goto :goto_1

    .line 125
    :cond_7
    const-string v11, "loadAdOnCreate"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 126
    invoke-interface {p1, v8}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 127
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v5, v1

    .line 128
    goto :goto_1

    .line 130
    :cond_8
    const-string v11, "autoFresh"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 131
    invoke-interface {p1, v8}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 132
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v4, v1

    .line 133
    goto/16 :goto_1

    .line 135
    :cond_9
    const-string v11, "fakeAdvertisingId"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 136
    invoke-interface {p1, v8}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 137
    :cond_a
    const-string v11, "forceUseFakeAdvertisingId"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 138
    invoke-interface {p1, v8}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 139
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v0, v1

    .line 140
    goto/16 :goto_1

    .line 145
    :cond_b
    if-nez v6, :cond_d

    .line 146
    iput-boolean v1, p0, Lcom/vpadn/ads/VpadnBanner;->d:Z

    .line 173
    :cond_c
    :goto_2
    return-void

    .line 149
    :cond_d
    iget-object v8, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v8, v6}, Lvpadn/af;->a(Ljava/lang/String;)V

    .line 150
    iget-object v6, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v6, v7}, Lvpadn/af;->a(Lcom/vpadn/ads/VpadnAdSize;)V

    .line 151
    if-nez v3, :cond_e

    .line 152
    iput-boolean v1, p0, Lcom/vpadn/ads/VpadnBanner;->d:Z

    goto :goto_2

    .line 155
    :cond_e
    iget-object v6, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v6, v3}, Lvpadn/af;->b(Ljava/lang/String;)V

    .line 157
    new-instance v3, Lcom/vpadn/ads/VpadnAdRequest;

    invoke-direct {v3}, Lcom/vpadn/ads/VpadnAdRequest;-><init>()V

    .line 159
    if-eqz v2, :cond_f

    .line 160
    invoke-virtual {v3, v2}, Lcom/vpadn/ads/VpadnAdRequest;->setFakeAdvertisingId(Ljava/lang/String;)V

    .line 162
    :cond_f
    if-eqz v0, :cond_10

    .line 163
    invoke-virtual {v3}, Lcom/vpadn/ads/VpadnAdRequest;->enableForceFakeAdvertisingId()V

    .line 166
    :cond_10
    if-eqz v5, :cond_11

    if-eqz v4, :cond_11

    .line 167
    invoke-virtual {v3, v1}, Lcom/vpadn/ads/VpadnAdRequest;->setEnableAutoRefresh(Z)V

    .line 168
    invoke-virtual {p0, v3}, Lcom/vpadn/ads/VpadnBanner;->loadAd(Lcom/vpadn/ads/VpadnAdRequest;)V

    goto :goto_2

    .line 169
    :cond_11
    if-eqz v5, :cond_c

    if-nez v4, :cond_c

    .line 170
    invoke-virtual {p0, v3}, Lcom/vpadn/ads/VpadnBanner;->loadAd(Lcom/vpadn/ads/VpadnAdRequest;)V

    goto :goto_2
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 447
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/ba;->b()V

    .line 453
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->c:Landroid/app/Activity;

    invoke-static {v0}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bo;->c()V

    .line 454
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->c:Landroid/app/Activity;

    invoke-static {v0}, Lvpadn/bs;->b(Landroid/content/Context;)Lvpadn/bs;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bs;->k()V

    .line 456
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/vpadn/ads/VpadnBanner$1;

    invoke-direct {v1, p0}, Lcom/vpadn/ads/VpadnBanner$1;-><init>(Lcom/vpadn/ads/VpadnBanner;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 471
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v0}, Lvpadn/af;->n()Z

    move-result v0

    .line 482
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd(Lcom/vpadn/ads/VpadnAdRequest;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 491
    const-string v0, "VponBanner"

    const-string v1, "Call LoadAd"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->c:Landroid/app/Activity;

    invoke-static {v0}, Lvpadn/br;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    const-string v0, "VponBanner"

    const-string v1, "permission-checking is failed in loadAd!!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->b:Lcom/vpadn/ads/VpadnAdListener;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->b:Lcom/vpadn/ads/VpadnAdListener;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, p0, v1}, Lcom/vpadn/ads/VpadnAdListener;->onVpadnFailedToReceiveAd(Lcom/vpadn/ads/VpadnAd;Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/au;->e()Z

    move-result v0

    .line 502
    if-eqz v0, :cond_4

    .line 503
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/ads/VpadnBanner;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lvpadn/au;->c(Landroid/content/Context;)Z

    move-result v0

    .line 504
    if-nez v0, :cond_2

    .line 505
    const-string v0, "VponBanner"

    const-string v1, "isRunningGooglePlayService(mContext) return false"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    sput-boolean v2, Lvpadn/ac;->a:Z

    .line 514
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->g:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_3

    .line 515
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnBanner;->g:Lcom/vpadn/ads/DebugListener;

    invoke-virtual {v0, v1}, Lvpadn/af;->a(Lcom/vpadn/ads/DebugListener;)V

    .line 518
    :cond_3
    iget-boolean v0, p0, Lcom/vpadn/ads/VpadnBanner;->d:Z

    if-nez v0, :cond_5

    .line 520
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->c:Landroid/app/Activity;

    .line 522
    new-instance v1, Lcom/vpadn/ads/VpadnBanner$2;

    invoke-direct {v1, p0, p1}, Lcom/vpadn/ads/VpadnBanner$2;-><init>(Lcom/vpadn/ads/VpadnBanner;Lcom/vpadn/ads/VpadnAdRequest;)V

    .line 530
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vpadn/ads/VpadnBanner$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/vpadn/ads/VpadnBanner$3;-><init>(Lcom/vpadn/ads/VpadnBanner;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 546
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 509
    :cond_4
    const-string v0, "VponBanner"

    const-string v1, "isExistGooglePlayServiceClass() return false"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sput-boolean v2, Lvpadn/ac;->a:Z

    goto :goto_1

    .line 548
    :cond_5
    const-string v0, "VponBanner"

    const-string v1, "[banner] invalid parameters in loadAd!!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->b:Lcom/vpadn/ads/VpadnAdListener;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->b:Lcom/vpadn/ads/VpadnAdListener;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, p0, v1}, Lcom/vpadn/ads/VpadnAdListener;->onVpadnFailedToReceiveAd(Lcom/vpadn/ads/VpadnAd;Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    goto :goto_0
.end method

.method public onControllerWebViewReady(II)V
    .locals 3

    .prologue
    .line 332
    iput p1, p0, Lcom/vpadn/ads/VpadnBanner;->e:I

    .line 333
    iput p2, p0, Lcom/vpadn/ads/VpadnBanner;->f:I

    .line 334
    invoke-virtual {p0}, Lcom/vpadn/ads/VpadnBanner;->removeAllViews()V

    .line 335
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/vpadn/ads/VpadnBanner;->e:I

    iget v2, p0, Lcom/vpadn/ads/VpadnBanner;->f:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 336
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 337
    iget-object v1, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v1}, Lvpadn/af;->h()Lvpadn/df;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 338
    const-string v1, "VponBanner"

    const-string v2, "CALL addView on onControllerWebViewReady"

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v1}, Lvpadn/af;->h()Lvpadn/df;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/vpadn/ads/VpadnBanner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    :goto_0
    const-string v0, "VponBanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this.getChildCount():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vpadn/ads/VpadnBanner;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void

    .line 363
    :cond_0
    const-string v0, "VponBanner"

    const-string v1, "mController IS NULL or mController.getWebView() IS NULL"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 417
    :try_start_0
    const-string v0, "VponBanner"

    const-string v1, "enter onDetachedFromWindow in VponBanner"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 424
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->c:Landroid/app/Activity;

    invoke-static {v0}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bo;->c()V

    .line 425
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->c:Landroid/app/Activity;

    invoke-static {v0}, Lvpadn/bs;->b(Landroid/content/Context;)Lvpadn/bs;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bs;->k()V

    .line 427
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v0}, Lvpadn/af;->l()V

    .line 429
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v0}, Lvpadn/af;->b()V

    .line 430
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v0}, Lvpadn/af;->m()V

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
    const-string v1, "VponBanner"

    const-string v2, "onDetachedFromWindow throws Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onLeaveExpandMode()V
    .locals 3

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/vpadn/ads/VpadnBanner;->removeAllViews()V

    .line 403
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/vpadn/ads/VpadnBanner;->e:I

    iget v2, p0, Lcom/vpadn/ads/VpadnBanner;->f:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 404
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 405
    iget-object v1, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v1}, Lvpadn/af;->h()Lvpadn/df;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v1}, Lvpadn/af;->h()Lvpadn/df;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/vpadn/ads/VpadnBanner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v0, p1}, Lvpadn/af;->a(Landroid/location/Location;)V

    .line 257
    :cond_0
    return-void
.end method

.method public onPrepareExpandMode()V
    .locals 4

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/vpadn/ads/VpadnBanner;->removeAllViews()V

    .line 380
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v0}, Lvpadn/af;->h()Lvpadn/df;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnBanner;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 384
    iget v1, p0, Lcom/vpadn/ads/VpadnBanner;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 385
    iget v1, p0, Lcom/vpadn/ads/VpadnBanner;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 386
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 389
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/vpadn/ads/VpadnBanner;->e:I

    iget v3, p0, Lcom/vpadn/ads/VpadnBanner;->f:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 390
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 391
    invoke-virtual {p0, v0, v1}, Lcom/vpadn/ads/VpadnBanner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V
    .locals 3

    .prologue
    .line 293
    const-string v0, "VponBanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVponAdFailed VponErrorCode code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->b:Lcom/vpadn/ads/VpadnAdListener;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->b:Lcom/vpadn/ads/VpadnAdListener;

    invoke-interface {v0, p0, p1}, Lcom/vpadn/ads/VpadnAdListener;->onVpadnFailedToReceiveAd(Lcom/vpadn/ads/VpadnAd;Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 297
    :cond_0
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/ba;->d()V

    .line 298
    return-void
.end method

.method public onVponAdReceived()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->b:Lcom/vpadn/ads/VpadnAdListener;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->b:Lcom/vpadn/ads/VpadnAdListener;

    invoke-interface {v0, p0}, Lcom/vpadn/ads/VpadnAdListener;->onVpadnReceiveAd(Lcom/vpadn/ads/VpadnAd;)V

    .line 286
    :cond_0
    return-void
.end method

.method public onVponDismiss()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->b:Lcom/vpadn/ads/VpadnAdListener;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->b:Lcom/vpadn/ads/VpadnAdListener;

    invoke-interface {v0, p0}, Lcom/vpadn/ads/VpadnAdListener;->onVpadnDismissScreen(Lcom/vpadn/ads/VpadnAd;)V

    .line 316
    :cond_0
    return-void
.end method

.method public onVponLeaveApplication()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->b:Lcom/vpadn/ads/VpadnAdListener;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->b:Lcom/vpadn/ads/VpadnAdListener;

    invoke-interface {v0, p0}, Lcom/vpadn/ads/VpadnAdListener;->onVpadnLeaveApplication(Lcom/vpadn/ads/VpadnAd;)V

    .line 325
    :cond_0
    return-void
.end method

.method public onVponPresent()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->b:Lcom/vpadn/ads/VpadnAdListener;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->b:Lcom/vpadn/ads/VpadnAdListener;

    invoke-interface {v0, p0}, Lcom/vpadn/ads/VpadnAdListener;->onVpadnPresentScreen(Lcom/vpadn/ads/VpadnAd;)V

    .line 307
    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    .prologue
    .line 600
    if-nez p1, :cond_1

    .line 601
    const-string v0, "VponBanner"

    const-string v1, "VponBanner visibility: VISIBLE"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v0}, Lvpadn/af;->p()V

    .line 631
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 632
    return-void

    .line 611
    :cond_1
    const/4 v0, 0x4

    if-ne v0, p1, :cond_2

    .line 612
    const-string v0, "VponBanner"

    const-string v1, "VponBanner visibility: INVISIBLE"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 614
    :cond_2
    const/16 v0, 0x8

    if-ne v0, p1, :cond_0

    .line 615
    const-string v0, "VponBanner"

    const-string v1, "VponBanner visibility: GONE"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->c:Landroid/app/Activity;

    invoke-static {v0}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bo;->c()V

    .line 625
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->c:Landroid/app/Activity;

    invoke-static {v0}, Lvpadn/bs;->b(Landroid/content/Context;)Lvpadn/bs;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bs;->k()V

    .line 627
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v0}, Lvpadn/af;->o()V

    goto :goto_0
.end method

.method public request(Z)V
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/vpadn/ads/VpadnBanner;->d:Z

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v0, p1}, Lvpadn/af;->a(Z)V

    .line 247
    :cond_0
    return-void
.end method

.method public setAdListener(Lcom/vpadn/ads/VpadnAdListener;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/vpadn/ads/VpadnBanner;->b:Lcom/vpadn/ads/VpadnAdListener;

    .line 562
    return-void
.end method

.method public setDebugListener(Lcom/vpadn/ads/DebugListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 575
    const-string v0, "VponBanner"

    const-string v1, "setDebugListener method only for testing"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iput-object p1, p0, Lcom/vpadn/ads/VpadnBanner;->g:Lcom/vpadn/ads/DebugListener;

    .line 577
    return-void
.end method

.method public stopLoading()V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

.method public testSendJsonToVponCordovaPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 636
    const-string v0, "VponBanner"

    const-string v1, "Cannot call testSendJsonToVponCordovaPlugin, this method is just for testing"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/vpadn/ads/VpadnBanner;->a:Lvpadn/af;

    invoke-virtual {v0, p1, p2, p3}, Lvpadn/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_0
    return-void
.end method
