.class public Lcom/vpadn/ads/VpadnNativeAd;
.super Ljava/lang/Object;
.source "VpadnNativeAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/vpadn/ads/VpadnAd;
.implements Lvpadn/ao;
.implements Lvpadn/aq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vpadn/ads/VpadnNativeAd$Rating;,
        Lcom/vpadn/ads/VpadnNativeAd$Image;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/View$OnTouchListener;

.field private c:Lvpadn/ai;

.field private d:Lcom/vpadn/ads/VpadnAdListener;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Lcom/vpadn/ads/VpadnNativeAd$Image;

.field private j:Lcom/vpadn/ads/VpadnNativeAd$Image;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/vpadn/ads/VpadnNativeAd$Rating;

.field private o:Ljava/lang/String;

.field private p:D


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 303
    const-string v0, "TW"

    invoke-direct {p0, p1, p2, v0}, Lcom/vpadn/ads/VpadnNativeAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->a:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->h:Z

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->p:D

    .line 314
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    .line 315
    iput-object p2, p0, Lcom/vpadn/ads/VpadnNativeAd;->f:Ljava/lang/String;

    .line 316
    iput-object p3, p0, Lcom/vpadn/ads/VpadnNativeAd;->g:Ljava/lang/String;

    .line 317
    invoke-static {p1}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    .line 318
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 299
    const-string v0, "TW"

    invoke-direct {p0, p1, p2, v0}, Lcom/vpadn/ads/VpadnNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->a:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->h:Z

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->p:D

    .line 307
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    .line 308
    iput-object p2, p0, Lcom/vpadn/ads/VpadnNativeAd;->f:Ljava/lang/String;

    .line 309
    iput-object p3, p0, Lcom/vpadn/ads/VpadnNativeAd;->g:Ljava/lang/String;

    .line 310
    invoke-static {p1}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    .line 311
    return-void
.end method

.method public constructor <init>(Lcom/vpadn/ads/VpadnNativeAd;)V
    .locals 2

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->a:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->h:Z

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->p:D

    .line 282
    iget-object v0, p1, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    .line 283
    iget-object v0, p1, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    .line 284
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lvpadn/ai;->a(Ljava/lang/String;Lvpadn/ao;)V

    .line 286
    iget-object v0, p1, Lcom/vpadn/ads/VpadnNativeAd;->i:Lcom/vpadn/ads/VpadnNativeAd$Image;

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->i:Lcom/vpadn/ads/VpadnNativeAd$Image;

    .line 287
    iget-object v0, p1, Lcom/vpadn/ads/VpadnNativeAd;->j:Lcom/vpadn/ads/VpadnNativeAd$Image;

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->j:Lcom/vpadn/ads/VpadnNativeAd$Image;

    .line 288
    iget-object v0, p1, Lcom/vpadn/ads/VpadnNativeAd;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->k:Ljava/lang/String;

    .line 289
    iget-object v0, p1, Lcom/vpadn/ads/VpadnNativeAd;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->l:Ljava/lang/String;

    .line 290
    iget-object v0, p1, Lcom/vpadn/ads/VpadnNativeAd;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->m:Ljava/lang/String;

    .line 291
    iget-object v0, p1, Lcom/vpadn/ads/VpadnNativeAd;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->o:Ljava/lang/String;

    .line 292
    iget-object v0, p1, Lcom/vpadn/ads/VpadnNativeAd;->n:Lcom/vpadn/ads/VpadnNativeAd$Rating;

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->n:Lcom/vpadn/ads/VpadnNativeAd$Rating;

    .line 294
    iget-object v0, p1, Lcom/vpadn/ads/VpadnNativeAd;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->f:Ljava/lang/String;

    .line 295
    iget-object v0, p1, Lcom/vpadn/ads/VpadnNativeAd;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->g:Ljava/lang/String;

    .line 296
    return-void
.end method

.method static synthetic a(Lcom/vpadn/ads/VpadnNativeAd;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lvpadn/ai;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 422
    new-instance v1, Lvpadn/ai;

    iget-object v2, p0, Lcom/vpadn/ads/VpadnNativeAd;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p0, p0, v2}, Lvpadn/ai;-><init>(Landroid/content/Context;Lvpadn/ao;Lvpadn/aq;Ljava/lang/String;)V

    .line 424
    if-nez p2, :cond_0

    .line 425
    iput-boolean v3, p0, Lcom/vpadn/ads/VpadnNativeAd;->h:Z

    .line 436
    :goto_0
    return-object v0

    .line 428
    :cond_0
    invoke-virtual {v1, p2}, Lvpadn/ai;->a(Ljava/lang/String;)V

    .line 430
    if-nez p3, :cond_1

    .line 431
    iput-boolean v3, p0, Lcom/vpadn/ads/VpadnNativeAd;->h:Z

    goto :goto_0

    .line 434
    :cond_1
    invoke-virtual {v1, p3}, Lvpadn/ai;->b(Ljava/lang/String;)V

    move-object v0, v1

    .line 436
    goto :goto_0
.end method

.method static synthetic a(Lcom/vpadn/ads/VpadnNativeAd;)Lvpadn/ai;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    return-object v0
.end method

.method static synthetic a(Lcom/vpadn/ads/VpadnNativeAd;Lvpadn/ai;)Lvpadn/ai;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    return-object p1
.end method

.method private a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 641
    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->i:Lcom/vpadn/ads/VpadnNativeAd$Image;

    .line 642
    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->j:Lcom/vpadn/ads/VpadnNativeAd$Image;

    .line 643
    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->k:Ljava/lang/String;

    .line 644
    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->l:Ljava/lang/String;

    .line 645
    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->m:Ljava/lang/String;

    .line 646
    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->o:Ljava/lang/String;

    .line 647
    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->n:Lcom/vpadn/ads/VpadnNativeAd$Rating;

    .line 648
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 121
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 122
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 125
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/vpadn/ads/VpadnNativeAd;->a(Landroid/view/ViewGroup;)V

    .line 120
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 127
    :cond_1
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 133
    :cond_2
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 164
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 165
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 166
    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lcom/vpadn/ads/VpadnNativeAd;->a(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 163
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 172
    :cond_2
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 182
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/vpadn/ads/VpadnNativeAd;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vpadn/ads/VpadnNativeAd;->a()V

    return-void
.end method

.method static synthetic c(Lcom/vpadn/ads/VpadnNativeAd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/vpadn/ads/VpadnNativeAd;)Lcom/vpadn/ads/VpadnAdListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->d:Lcom/vpadn/ads/VpadnAdListener;

    return-object v0
.end method

.method public static downloadAndDisplayImage(Lcom/vpadn/ads/VpadnNativeAd$Image;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 95
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/vpadn/ads/VpadnNativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vpadn/ads/VpadnNativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    const-string v0, "VpadnNativeAd"

    const-string v1, "downloadAndDisplayImage [ (image == null || image.getUrl() == null) || image.getUrl().equals(\"null\") ]"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vpadn/ads/VpadnNativeAd$1;

    invoke-direct {v1, p0, p1}, Lcom/vpadn/ads/VpadnNativeAd$1;-><init>(Lcom/vpadn/ads/VpadnNativeAd$Image;Landroid/widget/ImageView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/vpadn/ads/VpadnNativeAd;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 610
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/ba;->b()V

    .line 617
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    invoke-static {v0}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bo;->c()V

    .line 618
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    invoke-static {v0}, Lvpadn/bs;->b(Landroid/content/Context;)Lvpadn/bs;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bs;->k()V

    .line 620
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/vpadn/ads/VpadnNativeAd$11;

    invoke-direct {v1, p0}, Lcom/vpadn/ads/VpadnNativeAd$11;-><init>(Lcom/vpadn/ads/VpadnNativeAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 638
    return-void
.end method

.method public getAdBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getAdCallToAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getAdCoverImage()Lcom/vpadn/ads/VpadnNativeAd$Image;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->i:Lcom/vpadn/ads/VpadnNativeAd$Image;

    return-object v0
.end method

.method public getAdIcon()Lcom/vpadn/ads/VpadnNativeAd$Image;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->j:Lcom/vpadn/ads/VpadnNativeAd$Image;

    return-object v0
.end method

.method public getAdSocialContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getAdStarRating()Lcom/vpadn/ads/VpadnNativeAd$Rating;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->n:Lcom/vpadn/ads/VpadnNativeAd$Rating;

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->k:Ljava/lang/String;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    invoke-virtual {v0}, Lvpadn/ai;->k()Z

    move-result v0

    .line 330
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vpadn/ads/VpadnNativeAd;->loadAd(Lcom/vpadn/ads/VpadnAdRequest;)V

    .line 335
    return-void
.end method

.method public loadAd(Lcom/vpadn/ads/VpadnAdRequest;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 339
    const-string v0, "VpadnNativeAd"

    const-string v1, "Call LoadAd"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0}, Lcom/vpadn/ads/VpadnNativeAd;->a()V

    .line 341
    const/4 v0, 0x0

    .line 342
    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    if-eqz v1, :cond_0

    .line 343
    const-string v0, "VpadnNativeAd"

    const-string v1, "Call LoadAd but IS RE-LOADAD"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/ai;->g(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/ai;->h(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/ai;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    iget-object v2, p0, Lcom/vpadn/ads/VpadnNativeAd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lvpadn/ai;->f(Ljava/lang/String;)V

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/vpadn/ads/VpadnNativeAd;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/vpadn/ads/VpadnNativeAd;->g:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/vpadn/ads/VpadnNativeAd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lvpadn/ai;

    move-result-object v1

    iput-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    .line 351
    if-eqz v0, :cond_1

    .line 352
    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    iget-object v2, p0, Lcom/vpadn/ads/VpadnNativeAd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lvpadn/ai;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 353
    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    invoke-virtual {v1, v0}, Lvpadn/ai;->a(Ljava/util/List;)V

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    if-nez v0, :cond_3

    .line 357
    const-string v0, "VpadnNativeAd"

    const-string v1, "bannerId & platformStr -checking is failed in loadAd!!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_2
    :goto_0
    return-void

    .line 361
    :cond_3
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    invoke-static {v0}, Lvpadn/br;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 362
    const-string v0, "VpadnNativeAd"

    const-string v1, "[NativeAd] permission-checking is failed in loadAd!!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->d:Lcom/vpadn/ads/VpadnAdListener;

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->d:Lcom/vpadn/ads/VpadnAdListener;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, p0, v1}, Lcom/vpadn/ads/VpadnAdListener;->onVpadnFailedToReceiveAd(Lcom/vpadn/ads/VpadnAd;Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    goto :goto_0

    .line 370
    :cond_4
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/au;->e()Z

    move-result v0

    .line 371
    if-eqz v0, :cond_6

    .line 372
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lvpadn/au;->c(Landroid/content/Context;)Z

    move-result v0

    .line 373
    if-nez v0, :cond_5

    .line 374
    const-string v0, "VpadnNativeAd"

    const-string v1, "isRunningGooglePlayService(mContext) return false"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sput-boolean v4, Lvpadn/ac;->a:Z

    .line 382
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->h:Z

    if-nez v0, :cond_7

    .line 384
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    .line 386
    new-instance v1, Lcom/vpadn/ads/VpadnNativeAd$2;

    invoke-direct {v1, p0, p1}, Lcom/vpadn/ads/VpadnNativeAd$2;-><init>(Lcom/vpadn/ads/VpadnNativeAd;Lcom/vpadn/ads/VpadnAdRequest;)V

    .line 395
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vpadn/ads/VpadnNativeAd$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/vpadn/ads/VpadnNativeAd$3;-><init>(Lcom/vpadn/ads/VpadnNativeAd;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 411
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 378
    :cond_6
    const-string v0, "VpadnNativeAd"

    const-string v1, "isExistGooglePlayServiceClass() return false"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    sput-boolean v4, Lvpadn/ac;->a:Z

    goto :goto_1

    .line 413
    :cond_7
    const-string v0, "VpadnNativeAd"

    const-string v1, "[banner] invalid parameters in loadAd!!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->d:Lcom/vpadn/ads/VpadnAdListener;

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->d:Lcom/vpadn/ads/VpadnAdListener;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, p0, v1}, Lcom/vpadn/ads/VpadnAdListener;->onVpadnFailedToReceiveAd(Lcom/vpadn/ads/VpadnAd;Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    .line 463
    iget-wide v2, p0, Lcom/vpadn/ads/VpadnNativeAd;->p:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    .line 464
    iget-wide v2, p0, Lcom/vpadn/ads/VpadnNativeAd;->p:D

    sub-double v2, v0, v2

    const-wide v4, 0x407f400000000000L    # 500.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 465
    iput-wide v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->p:D

    .line 466
    const-string v0, "VpadnNativeAd"

    const-string v1, "if(tmpClickTimeStamp - mClickTimeStamp < 500)"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :goto_0
    return-void

    .line 470
    :cond_0
    iput-wide v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->p:D

    .line 472
    invoke-virtual {p0}, Lcom/vpadn/ads/VpadnNativeAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/ai;->l(Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_1
    const-string v0, "VpadnNativeAd"

    const-string v1, "Call onClick but isReady return false"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onControllerWebViewReady(II)V
    .locals 0

    .prologue
    .line 594
    return-void
.end method

.method public onLeaveExpandMode()V
    .locals 0

    .prologue
    .line 604
    return-void
.end method

.method public onPrepareExpandMode()V
    .locals 0

    .prologue
    .line 599
    return-void
.end method

.method public onReceivedActionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd;->m:Ljava/lang/String;

    .line 663
    return-void
.end method

.method public onReceivedBody(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd;->l:Ljava/lang/String;

    .line 658
    return-void
.end method

.method public onReceivedCoverImageUrl(Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 667
    new-instance v0, Lcom/vpadn/ads/VpadnNativeAd$Image;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vpadn/ads/VpadnNativeAd$Image;-><init>(Lcom/vpadn/ads/VpadnNativeAd;Ljava/lang/String;IILcom/vpadn/ads/VpadnNativeAd$1;)V

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->i:Lcom/vpadn/ads/VpadnNativeAd$Image;

    .line 668
    return-void
.end method

.method public onReceivedIconUrl(Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 672
    new-instance v0, Lcom/vpadn/ads/VpadnNativeAd$Image;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vpadn/ads/VpadnNativeAd$Image;-><init>(Lcom/vpadn/ads/VpadnNativeAd;Ljava/lang/String;IILcom/vpadn/ads/VpadnNativeAd$1;)V

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->j:Lcom/vpadn/ads/VpadnNativeAd$Image;

    .line 673
    return-void
.end method

.method public onReceivedRating(DD)V
    .locals 7

    .prologue
    .line 677
    new-instance v0, Lcom/vpadn/ads/VpadnNativeAd$Rating;

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/vpadn/ads/VpadnNativeAd$Rating;-><init>(Lcom/vpadn/ads/VpadnNativeAd;DDLcom/vpadn/ads/VpadnNativeAd$1;)V

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->n:Lcom/vpadn/ads/VpadnNativeAd$Rating;

    .line 678
    return-void
.end method

.method public onReceivedSocialContext(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd;->o:Ljava/lang/String;

    .line 682
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd;->k:Ljava/lang/String;

    .line 653
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->b:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->b:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V
    .locals 3

    .prologue
    .line 507
    const-string v0, "VpadnNativeAd"

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

    .line 508
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vpadn/ads/VpadnNativeAd$6;

    invoke-direct {v1, p0, p1}, Lcom/vpadn/ads/VpadnNativeAd$6;-><init>(Lcom/vpadn/ads/VpadnNativeAd;Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 527
    :goto_0
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/ba;->d()V

    .line 528
    return-void

    .line 517
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/vpadn/ads/VpadnNativeAd$7;

    invoke-direct {v1, p0, p1}, Lcom/vpadn/ads/VpadnNativeAd$7;-><init>(Lcom/vpadn/ads/VpadnNativeAd;Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onVponAdReceived()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vpadn/ads/VpadnNativeAd$4;

    invoke-direct {v1, p0}, Lcom/vpadn/ads/VpadnNativeAd$4;-><init>(Lcom/vpadn/ads/VpadnNativeAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 503
    :goto_0
    return-void

    .line 495
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/vpadn/ads/VpadnNativeAd$5;

    invoke-direct {v1, p0}, Lcom/vpadn/ads/VpadnNativeAd$5;-><init>(Lcom/vpadn/ads/VpadnNativeAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onVponDismiss()V
    .locals 3

    .prologue
    .line 548
    new-instance v1, Lcom/vpadn/ads/VpadnNativeAd$9;

    invoke-direct {v1, p0}, Lcom/vpadn/ads/VpadnNativeAd$9;-><init>(Lcom/vpadn/ads/VpadnNativeAd;)V

    .line 555
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 572
    :goto_0
    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 566
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 568
    :cond_1
    const-string v0, "VpadnNativeAd"

    const-string v1, "If you want to correctly receive onVpadnDismissScreen Callback function, you must set android:configChanges property of Activitty Tag in AndroidManifest.xml file.\nReference: https://developer.android.com/guide/topics/manifest/activity-element.html"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onVponLeaveApplication()V
    .locals 3

    .prologue
    .line 576
    new-instance v1, Lcom/vpadn/ads/VpadnNativeAd$10;

    invoke-direct {v1, p0}, Lcom/vpadn/ads/VpadnNativeAd$10;-><init>(Lcom/vpadn/ads/VpadnNativeAd;)V

    .line 583
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 589
    :goto_0
    return-void

    .line 586
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onVponPresent()V
    .locals 3

    .prologue
    .line 532
    new-instance v1, Lcom/vpadn/ads/VpadnNativeAd$8;

    invoke-direct {v1, p0}, Lcom/vpadn/ads/VpadnNativeAd$8;-><init>(Lcom/vpadn/ads/VpadnNativeAd;)V

    .line 539
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public registerViewForInteraction(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 136
    const-string v0, "VpadnNativeAd"

    const-string v1, "Call registerViewForInteraction(...)"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-nez p1, :cond_0

    .line 138
    const-string v0, "VpadnNativeAd"

    const-string v1, "registerViewForInteraction VIEW IS NULL"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    invoke-virtual {v0, p1}, Lvpadn/ai;->a(Landroid/view/View;)Z

    move-result v0

    .line 145
    const-string v1, "VpadnNativeAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call registerViewForInteraction, isRegisteredView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    invoke-virtual {v0, p1}, Lvpadn/ai;->b(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lvpadn/ai;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lvpadn/ai;->a(Ljava/lang/String;Landroid/view/View;Ljava/util/List;)V

    .line 153
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    .line 154
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 157
    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    .line 158
    invoke-direct {p0, p1}, Lcom/vpadn/ads/VpadnNativeAd;->a(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    const-string v0, "VpadnNativeAd"

    const-string v1, "Call registerViewForInteraction(...)"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-nez p1, :cond_1

    .line 187
    const-string v0, "VpadnNativeAd"

    const-string v1, "registerViewForInteraction VIEW IS NULL"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    invoke-virtual {v0, p1}, Lvpadn/ai;->a(Landroid/view/View;)Z

    move-result v0

    .line 192
    const-string v1, "VpadnNativeAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call registerViewForInteraction, isRegisteredView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    invoke-virtual {v0, p1}, Lvpadn/ai;->b(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lvpadn/ai;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lvpadn/ai;->a(Ljava/lang/String;Landroid/view/View;Ljava/util/List;)V

    .line 202
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    .line 203
    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 212
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/vpadn/ads/VpadnNativeAd;->a(Landroid/view/ViewGroup;Ljava/util/List;)V

    goto :goto_0
.end method

.method public declared-synchronized setActivity(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd;->e:Landroid/content/Context;

    .line 481
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    invoke-virtual {v0, p1}, Lvpadn/ai;->a(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    monitor-exit p0

    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAdListener(Lcom/vpadn/ads/VpadnAdListener;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd;->d:Lcom/vpadn/ads/VpadnAdListener;

    .line 442
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAd;->b:Landroid/view/View$OnTouchListener;

    .line 451
    return-void
.end method

.method public stopLoading()V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method public unregisterView()V
    .locals 3

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAd;->c:Lvpadn/ai;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/ai;->i(Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 222
    :cond_0
    const-string v0, "VpadnNativeAd"

    const-string v1, "Call unregisterView() but mController is null. Don\'t Call destroy() before unregisterView() "

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string v1, "VpadnNativeAd"

    const-string v2, "unregisterView() throws Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
