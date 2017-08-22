.class public Lvpadn/af;
.super Lvpadn/ae;
.source "VponBannerController.java"

# interfaces
.implements Lvpadn/ar;
.implements Lvpadn/as;
.implements Lvpadn/at;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvpadn/af$b;,
        Lvpadn/af$a;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Z

.field private C:Lvpadn/ao;

.field private D:Z

.field private E:I

.field private F:Ljava/util/Timer;

.field private G:I

.field private H:Ljava/util/Timer;

.field private I:Ljava/util/Timer;

.field private J:I

.field private K:I

.field private L:Z

.field private M:Ljava/lang/String;

.field private N:Z

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:Z

.field private V:Z

.field private W:Landroid/graphics/Bitmap;

.field private X:Landroid/graphics/Canvas;

.field private Y:Landroid/graphics/Rect;

.field private u:Lvpadn/df;

.field private v:Lvpadn/df;

.field private w:Lvpadn/df;

.field private x:Lvpadn/ax;

.field private y:Lvpadn/ax;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lvpadn/ao;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0, p1}, Lvpadn/ae;-><init>(Landroid/content/Context;)V

    .line 96
    iput-object v0, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    .line 97
    iput-object v0, p0, Lvpadn/af;->A:Landroid/widget/ImageView;

    .line 98
    iput-boolean v1, p0, Lvpadn/af;->B:Z

    .line 100
    iput-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    .line 102
    iput-boolean v1, p0, Lvpadn/af;->D:Z

    .line 103
    iput v2, p0, Lvpadn/af;->E:I

    .line 105
    iput-object v0, p0, Lvpadn/af;->F:Ljava/util/Timer;

    .line 106
    iput v1, p0, Lvpadn/af;->G:I

    .line 108
    iput-object v0, p0, Lvpadn/af;->I:Ljava/util/Timer;

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lvpadn/af;->J:I

    .line 112
    iput-boolean v2, p0, Lvpadn/af;->L:Z

    .line 113
    const-string v0, "none"

    iput-object v0, p0, Lvpadn/af;->M:Ljava/lang/String;

    .line 116
    iput-boolean v1, p0, Lvpadn/af;->N:Z

    .line 117
    iput v1, p0, Lvpadn/af;->O:I

    .line 119
    iput v1, p0, Lvpadn/af;->P:I

    .line 120
    iput v1, p0, Lvpadn/af;->Q:I

    .line 122
    iput v1, p0, Lvpadn/af;->R:I

    .line 124
    iput v1, p0, Lvpadn/af;->S:I

    .line 125
    iput v1, p0, Lvpadn/af;->T:I

    .line 127
    iput-boolean v1, p0, Lvpadn/af;->U:Z

    .line 128
    iput-boolean v1, p0, Lvpadn/af;->V:Z

    .line 142
    iput-object p2, p0, Lvpadn/af;->C:Lvpadn/ao;

    .line 143
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lvpadn/af;->J:I

    .line 148
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1915
    iget-object v0, p0, Lvpadn/af;->W:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1916
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lvpadn/af;->W:Landroid/graphics/Bitmap;

    .line 1917
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lvpadn/af;->W:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lvpadn/af;->X:Landroid/graphics/Canvas;

    .line 1918
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lvpadn/af;->Y:Landroid/graphics/Rect;

    .line 1920
    :cond_0
    return-void
.end method

.method private declared-synchronized B()V
    .locals 2

    .prologue
    .line 2000
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvpadn/af;->v:Lvpadn/df;

    if-eqz v0, :cond_0

    .line 2001
    const-string v0, "VponBannerController"

    const-string v1, "destroy mInitWebView"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    iget-object v0, p0, Lvpadn/af;->v:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->stopLoading()V

    .line 2003
    iget-object v0, p0, Lvpadn/af;->v:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->removeAllViews()V

    .line 2004
    iget-object v0, p0, Lvpadn/af;->v:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->d()V

    .line 2005
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/af;->v:Lvpadn/df;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2007
    :cond_0
    monitor-exit p0

    return-void

    .line 2000
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized C()V
    .locals 2

    .prologue
    .line 2010
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    if-eqz v0, :cond_0

    .line 2011
    const-string v0, "VponBannerController"

    const-string v1, "destroy mShowWebView"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->stopLoading()V

    .line 2013
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->removeAllViews()V

    .line 2014
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->d()V

    .line 2015
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/af;->w:Lvpadn/df;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2017
    :cond_0
    monitor-exit p0

    return-void

    .line 2010
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized D()V
    .locals 2

    .prologue
    .line 2020
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvpadn/af;->u:Lvpadn/df;

    if-eqz v0, :cond_0

    .line 2021
    const-string v0, "VponBannerController"

    const-string v1, "destroy mPrepareWebView"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iget-object v0, p0, Lvpadn/af;->u:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->stopLoading()V

    .line 2023
    iget-object v0, p0, Lvpadn/af;->u:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->removeAllViews()V

    .line 2024
    iget-object v0, p0, Lvpadn/af;->u:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->d()V

    .line 2025
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/af;->u:Lvpadn/df;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2027
    :cond_0
    monitor-exit p0

    return-void

    .line 2020
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 2

    .prologue
    .line 1908
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1909
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1911
    :cond_0
    return v0

    .line 1908
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lvpadn/af;I)I
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lvpadn/af;->E:I

    return p1
.end method

.method private a(Lorg/json/JSONObject;Lcom/vpadn/ads/VpadnAdRequest;JJ)Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 947
    :try_start_0
    const-string v0, "sid"

    invoke-virtual {p1, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 948
    const-string v0, "seq"

    invoke-virtual {p1, v0, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 951
    const-string v0, ""

    .line 952
    iget-object v0, p0, Lvpadn/af;->c:Lcom/vpadn/ads/VpadnAdSize;

    sget-object v1, Lcom/vpadn/ads/VpadnAdSize;->SMART_BANNER:Lcom/vpadn/ads/VpadnAdSize;

    invoke-virtual {v0, v1}, Lcom/vpadn/ads/VpadnAdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 953
    invoke-direct {p0}, Lvpadn/af;->u()Ljava/lang/String;

    move-result-object v0

    .line 955
    const-string v1, "format"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 975
    :goto_0
    const-string v0, "bid"

    iget-object v1, p0, Lvpadn/af;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 977
    sget-boolean v0, Lvpadn/ac;->a:Z

    if-eqz v0, :cond_9

    .line 978
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    .line 979
    invoke-virtual {v0}, Lvpadn/au;->b()Ljava/lang/String;

    move-result-object v0

    .line 980
    invoke-virtual {p2, v0}, Lcom/vpadn/ads/VpadnAdRequest;->isTestDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 981
    const-string v0, "adtest"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1003
    :goto_1
    iget-object v0, p0, Lvpadn/af;->j:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_d

    .line 1004
    iget-object v0, p0, Lvpadn/af;->j:Lorg/json/JSONObject;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    const-string v0, "ad_x"

    iget-object v1, p0, Lvpadn/af;->j:Lorg/json/JSONObject;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1008
    :cond_0
    iget-object v0, p0, Lvpadn/af;->j:Lorg/json/JSONObject;

    const-string v1, "y"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1009
    const-string v0, "ad_y"

    iget-object v1, p0, Lvpadn/af;->j:Lorg/json/JSONObject;

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1012
    :cond_1
    iget-object v0, p0, Lvpadn/af;->j:Lorg/json/JSONObject;

    const-string v1, "w"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1013
    const-string v0, "ad_w"

    iget-object v1, p0, Lvpadn/af;->j:Lorg/json/JSONObject;

    const-string v2, "w"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1016
    :cond_2
    iget-object v0, p0, Lvpadn/af;->j:Lorg/json/JSONObject;

    const-string v1, "h"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1017
    const-string v0, "ad_h"

    iget-object v1, p0, Lvpadn/af;->j:Lorg/json/JSONObject;

    const-string v2, "h"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1026
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lvpadn/af;->h:Z

    if-eqz v0, :cond_e

    .line 1027
    const-string v0, "ad_v"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1032
    :goto_3
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v0

    .line 1033
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1034
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1035
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1123
    :catch_0
    move-exception v0

    .line 1125
    const-string v1, "VponBannerController"

    const-string v2, "collectPushlierParams throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1128
    :cond_4
    :goto_5
    return-object p1

    .line 956
    :cond_5
    :try_start_1
    iget-object v0, p0, Lvpadn/af;->c:Lcom/vpadn/ads/VpadnAdSize;

    invoke-virtual {v0}, Lcom/vpadn/ads/VpadnAdSize;->isMix()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 957
    invoke-direct {p0}, Lvpadn/af;->t()Ljava/lang/String;

    move-result-object v0

    .line 958
    const-string v1, "format"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 959
    :cond_6
    iget-object v0, p0, Lvpadn/af;->c:Lcom/vpadn/ads/VpadnAdSize;

    invoke-virtual {v0}, Lcom/vpadn/ads/VpadnAdSize;->isCustomAdSize()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 960
    iget-object v0, p0, Lvpadn/af;->c:Lcom/vpadn/ads/VpadnAdSize;

    iget-object v1, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vpadn/ads/VpadnAdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lvpadn/af;->P:I

    .line 961
    iget-object v0, p0, Lvpadn/af;->c:Lcom/vpadn/ads/VpadnAdSize;

    iget-object v1, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vpadn/ads/VpadnAdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lvpadn/af;->Q:I

    .line 962
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 963
    const-string v1, "w"

    iget-object v2, p0, Lvpadn/af;->c:Lcom/vpadn/ads/VpadnAdSize;

    invoke-virtual {v2}, Lcom/vpadn/ads/VpadnAdSize;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 964
    const-string v1, "h"

    iget-object v2, p0, Lvpadn/af;->c:Lcom/vpadn/ads/VpadnAdSize;

    invoke-virtual {v2}, Lcom/vpadn/ads/VpadnAdSize;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 965
    const-string v1, "ad_frame"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 966
    const-string v0, "format"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvpadn/af;->c:Lcom/vpadn/ads/VpadnAdSize;

    invoke-virtual {v2}, Lcom/vpadn/ads/VpadnAdSize;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvpadn/af;->c:Lcom/vpadn/ads/VpadnAdSize;

    invoke-virtual {v2}, Lcom/vpadn/ads/VpadnAdSize;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_mb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 969
    :cond_7
    iget-object v0, p0, Lvpadn/af;->c:Lcom/vpadn/ads/VpadnAdSize;

    iget-object v1, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vpadn/ads/VpadnAdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lvpadn/af;->P:I

    .line 970
    iget-object v0, p0, Lvpadn/af;->c:Lcom/vpadn/ads/VpadnAdSize;

    iget-object v1, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vpadn/ads/VpadnAdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lvpadn/af;->Q:I

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvpadn/af;->c:Lcom/vpadn/ads/VpadnAdSize;

    invoke-virtual {v1}, Lcom/vpadn/ads/VpadnAdSize;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvpadn/af;->c:Lcom/vpadn/ads/VpadnAdSize;

    invoke-virtual {v1}, Lcom/vpadn/ads/VpadnAdSize;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_mb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 972
    const-string v1, "format"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 983
    :cond_8
    const-string v0, "adtest"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 986
    :cond_9
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    .line 987
    invoke-virtual {v0}, Lvpadn/au;->b()Ljava/lang/String;

    move-result-object v0

    .line 988
    if-eqz v0, :cond_b

    .line 989
    invoke-virtual {p2, v0}, Lcom/vpadn/ads/VpadnAdRequest;->isTestDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 990
    const-string v0, "adtest"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 992
    :cond_a
    const-string v0, "adtest"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 995
    :cond_b
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/vpadn/ads/VpadnAdRequest;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 996
    const-string v0, "adtest"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 998
    :cond_c
    const-string v0, "adtest"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 1020
    :cond_d
    const-string v0, "ad_x"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1021
    const-string v0, "ad_y"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1022
    const-string v0, "ad_w"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1023
    const-string v0, "ad_h"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 1029
    :cond_e
    const-string v0, "ad_v"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 1037
    :cond_f
    const-string v0, "kw"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1040
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    .line 1041
    iget-object v1, p0, Lvpadn/af;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lvpadn/au;->d(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1043
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getAge()I

    move-result v2

    .line 1044
    if-lez v2, :cond_10

    const/16 v3, 0x96

    if-ge v2, v3, :cond_10

    .line 1045
    const-string v3, "age"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1048
    :cond_10
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getGender()Lcom/vpadn/ads/VpadnAdRequest$Gender;

    move-result-object v2

    sget-object v3, Lcom/vpadn/ads/VpadnAdRequest$Gender;->UNKNOWN:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    invoke-virtual {v2, v3}, Lcom/vpadn/ads/VpadnAdRequest$Gender;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1049
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getGender()Lcom/vpadn/ads/VpadnAdRequest$Gender;

    move-result-object v2

    sget-object v3, Lcom/vpadn/ads/VpadnAdRequest$Gender;->MALE:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    invoke-virtual {v2, v3}, Lcom/vpadn/ads/VpadnAdRequest$Gender;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1050
    const-string v2, "gender"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1056
    :cond_11
    :goto_6
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-DD"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v3

    .line 1058
    if-eqz v3, :cond_12

    .line 1059
    const-string v4, "bday"

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1063
    :cond_12
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getPublisherExtraData()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1064
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getPublisherExtraData()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1065
    const-string v3, "ex"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1069
    :cond_13
    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    const-string v3, "android.permission.GET_ACCOUNTS"

    invoke-static {v2, v3}, Lvpadn/br;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1070
    invoke-static {}, Lvpadn/af;->a()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1072
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1073
    const-string v3, "NH/mLeyCBfokzYKUPNGEEg=="

    invoke-static {v3, v2}, Lvpadn/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1074
    const-string v3, "ms_not_accs"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1077
    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lvpadn/au;->c(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1078
    const-string v3, "VponBannerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accs info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const-string v3, "account"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1086
    :cond_14
    :goto_7
    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v2}, Lvpadn/bp;->g(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v2}, Lvpadn/br;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1087
    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v2}, Lvpadn/bs;->b(Landroid/content/Context;)Lvpadn/bs;

    move-result-object v2

    .line 1088
    invoke-virtual {v2}, Lvpadn/bs;->c()V

    .line 1089
    invoke-virtual {v2}, Lvpadn/bs;->a()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_17

    invoke-virtual {v2}, Lvpadn/bs;->d()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1090
    const-string v3, "wifi_ssid"

    invoke-virtual {v2}, Lvpadn/bs;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1091
    const-string v3, "wifi_bssid"

    invoke-virtual {v2}, Lvpadn/bs;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1092
    const-string v3, "wifi_level"

    invoke-virtual {v2}, Lvpadn/bs;->g()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1093
    const-string v3, "wifi_raw_level"

    invoke-virtual {v2}, Lvpadn/bs;->h()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1101
    :goto_8
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1103
    const-string v2, "NH/mLeyCBfokzYKUPNGEEg=="

    invoke-static {v2, v1}, Lvpadn/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1106
    const-string v2, "ms"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1109
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getFakeAdvertisingId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1110
    const-string v1, "VponBannerController"

    const-string v2, "adRequest.getFakeAdvertisingId() != null"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const-string v1, "bid"

    const-string v2, "8a808182447617bf0144d41358213d9c"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1112
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->getFakeAdvertisingId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lvpadn/au;->a(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1113
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1114
    const-string v1, "NH/mLeyCBfokzYKUPNGEEg=="

    invoke-static {v1, v0}, Lvpadn/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1115
    invoke-virtual {p2}, Lcom/vpadn/ads/VpadnAdRequest;->isForceFakeAdvertisingId()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1116
    const-string v1, "ms"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_5

    .line 1052
    :cond_15
    const-string v2, "gender"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_6

    .line 1082
    :cond_16
    const-string v2, "VponBannerController"

    const-string v3, "Cannot get accs"

    invoke-static {v2, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1095
    :cond_17
    const-string v2, "VponBannerController"

    const-string v3, "vponWiFi.checkNetCardState() != WifiManager.WIFI_STATE_ENABLED or vponWiFi.isNetWorkState() return false"

    invoke-static {v2, v3}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1098
    :cond_18
    const-string v2, "VponBannerController"

    const-string v3, "Cannot get wifi info, currently use sim card network or don\'t have ACCESS_WIFI_STATE Permission"

    invoke-static {v2, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1118
    :cond_19
    const-string v1, "fake_secret"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method static synthetic a(Lvpadn/af;)Lvpadn/ao;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    return-object v0
.end method

.method private a(J)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1677
    .line 1678
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    const-string v2, "viewable_duration"

    invoke-virtual {v0, v2}, Lvpadn/aw;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1679
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    const-string v2, "viewable_duration"

    invoke-virtual {v0, v2}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x1f4

    add-int/lit8 v0, v0, 0x1

    .line 1683
    :goto_0
    iget-object v2, p0, Lvpadn/af;->w:Lvpadn/df;

    invoke-direct {p0, v2}, Lvpadn/af;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1684
    iget v2, p0, Lvpadn/af;->O:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lvpadn/af;->O:I

    .line 1685
    iget v2, p0, Lvpadn/af;->O:I

    if-ne v2, v0, :cond_0

    .line 1686
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lvpadn/af$7;

    invoke-direct {v1, p0}, Lvpadn/af$7;-><init>(Lvpadn/af;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1692
    iput v5, p0, Lvpadn/af;->G:I

    .line 1693
    iput v5, p0, Lvpadn/af;->O:I

    .line 1694
    invoke-direct {p0}, Lvpadn/af;->z()V

    .line 1745
    :goto_1
    return-void

    .line 1696
    :cond_0
    iget-boolean v0, p0, Lvpadn/af;->f:Z

    if-ne v0, v1, :cond_1

    .line 1697
    const-string v0, "VponBannerController"

    const-string v1, "mIsDestroy == true NO need to create mCoveredCheckTimer"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iput v5, p0, Lvpadn/af;->G:I

    .line 1699
    iput v5, p0, Lvpadn/af;->O:I

    .line 1700
    invoke-direct {p0}, Lvpadn/af;->z()V

    goto :goto_1

    .line 1704
    :cond_1
    const-wide/16 v0, 0x1f4

    .line 1705
    iget-object v2, p0, Lvpadn/af;->H:Ljava/util/Timer;

    if-nez v2, :cond_2

    .line 1706
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lvpadn/af;->H:Ljava/util/Timer;

    .line 1709
    :cond_2
    :try_start_0
    iget-object v2, p0, Lvpadn/af;->H:Ljava/util/Timer;

    new-instance v3, Lvpadn/af$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lvpadn/af$a;-><init>(Lvpadn/af;Lvpadn/af$1;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1710
    :catch_0
    move-exception v0

    .line 1711
    const-string v1, "VponBannerController"

    const-string v2, "mCoveredCheckTimer.schedule throw Exception:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1715
    :cond_3
    const-string v0, "VponBannerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cover test fail mTimesOfBlockViewCheck:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lvpadn/af;->G:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    iget v0, p0, Lvpadn/af;->G:I

    const/16 v2, 0x3c

    if-ge v0, v2, :cond_7

    .line 1717
    iget v0, p0, Lvpadn/af;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvpadn/af;->G:I

    .line 1718
    const-wide/16 v2, 0x3e8

    .line 1719
    iget v0, p0, Lvpadn/af;->G:I

    const/16 v4, 0x1e

    if-le v0, v4, :cond_4

    .line 1720
    const-wide/16 v2, 0x1388

    .line 1723
    :cond_4
    iget-boolean v0, p0, Lvpadn/af;->f:Z

    if-ne v0, v1, :cond_5

    .line 1724
    const-string v0, "VponBannerController"

    const-string v1, "mIsDestroy == true NO need to create mCoveredCheckTimer"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    iput v5, p0, Lvpadn/af;->G:I

    .line 1726
    iput v5, p0, Lvpadn/af;->O:I

    .line 1727
    invoke-direct {p0}, Lvpadn/af;->z()V

    goto :goto_1

    .line 1731
    :cond_5
    iget-object v0, p0, Lvpadn/af;->H:Ljava/util/Timer;

    if-nez v0, :cond_6

    .line 1732
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lvpadn/af;->H:Ljava/util/Timer;

    .line 1734
    :cond_6
    iput v5, p0, Lvpadn/af;->O:I

    .line 1736
    :try_start_1
    iget-object v0, p0, Lvpadn/af;->H:Ljava/util/Timer;

    new-instance v1, Lvpadn/af$a;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lvpadn/af$a;-><init>(Lvpadn/af;Lvpadn/af$1;)V

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1737
    :catch_1
    move-exception v0

    .line 1738
    const-string v1, "VponBannerController"

    const-string v2, "mCoveredCheckTimer.schedule throw Exception:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1741
    :cond_7
    iput v5, p0, Lvpadn/af;->G:I

    .line 1742
    iput v5, p0, Lvpadn/af;->O:I

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lvpadn/af;J)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lvpadn/af;->b(J)V

    return-void
.end method

.method static synthetic a(Lvpadn/af;Lvpadn/ax;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lvpadn/af;->a(Lvpadn/ax;)V

    return-void
.end method

.method private a(Lvpadn/ax;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1462
    const-string v0, "VponBannerController"

    const-string v1, "Enter perpareBanner"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lvpadn/af;->f:Z

    if-nez v0, :cond_1

    .line 1464
    new-instance v0, Lvpadn/df;

    const-string v1, "bannerWebView"

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0, p0}, Lvpadn/df;-><init>(Ljava/lang/String;Landroid/content/Context;Lvpadn/at;Lvpadn/q;)V

    iput-object v0, p0, Lvpadn/af;->u:Lvpadn/df;

    .line 1465
    iget-object v0, p0, Lvpadn/af;->u:Lvpadn/df;

    invoke-virtual {v0, v3}, Lvpadn/df;->setAcceptThirdPartyCookiesEnable(Z)V

    .line 1466
    iput-object p1, p0, Lvpadn/af;->x:Lvpadn/ax;

    .line 1467
    invoke-virtual {p1}, Lvpadn/ax;->a()Ljava/lang/String;

    move-result-object v2

    .line 1492
    const-string v0, "VponBannerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "real get BannerHtml:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    const-string v0, "VponBannerController"

    const-string v1, "/////////////Banner OK!!//////////////////"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    invoke-virtual {p0}, Lvpadn/af;->b()V

    .line 1505
    iget-object v0, p0, Lvpadn/af;->g:Ljava/util/Map;

    const-string v1, "url_type_banner"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1506
    invoke-virtual {p0, v1}, Lvpadn/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1507
    const-string v3, "VponBannerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "baseUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget-object v0, p0, Lvpadn/af;->u:Lvpadn/df;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lvpadn/df;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    :cond_0
    :goto_0
    return-void

    .line 1513
    :cond_1
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 1514
    const-string v0, "VponBannerController"

    const-string v1, "prepareBanner mContext == null"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_2
    iget-boolean v0, p0, Lvpadn/af;->f:Z

    if-ne v0, v3, :cond_0

    .line 1518
    const-string v0, "VponBannerController"

    const-string v1, "prepareBanner mIsDestroy == true"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Landroid/view/View;)Z
    .locals 12

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1836
    if-nez p1, :cond_1

    .line 1903
    :cond_0
    :goto_0
    return v2

    .line 1844
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1845
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    .line 1849
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-lt v0, v5, :cond_3

    move v0, v2

    .line 1850
    :goto_1
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-lt v1, v5, :cond_4

    move v1, v2

    .line 1852
    :goto_2
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    move v0, v2

    .line 1853
    :goto_3
    if-eqz v0, :cond_0

    move-object v1, p1

    .line 1858
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 1859
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1860
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1865
    invoke-direct {p0, v1, v0}, Lvpadn/af;->a(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v1

    .line 1866
    add-int/lit8 v1, v1, 0x1

    move v4, v1

    :goto_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_8

    .line 1867
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1868
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1869
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1870
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    .line 1866
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5

    :cond_3
    move v0, v3

    .line 1849
    goto :goto_1

    :cond_4
    move v1, v3

    .line 1850
    goto :goto_2

    :cond_5
    move v0, v3

    .line 1852
    goto :goto_3

    .line 1873
    :cond_6
    invoke-direct {p0, v5}, Lvpadn/af;->b(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1876
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1877
    invoke-virtual {v5, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1878
    invoke-static {v1, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1879
    invoke-virtual {v6, v1, v6}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 1880
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-double v6, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v1, v5

    int-to-double v10, v1

    div-double v10, v6, v10

    .line 1883
    :try_start_0
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v1

    const-string v5, "viewable_rate"

    invoke-virtual {v1, v5}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 1888
    :goto_6
    cmpg-double v1, v6, v8

    if-gtz v1, :cond_7

    .line 1890
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 1892
    :cond_7
    cmpl-double v1, v10, v6

    if-lez v1, :cond_2

    goto/16 :goto_0

    .line 1884
    :catch_0
    move-exception v1

    .line 1885
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v6, v8

    goto :goto_6

    :cond_8
    move-object v1, v0

    .line 1902
    goto/16 :goto_4

    :cond_9
    move v2, v3

    .line 1903
    goto/16 :goto_0
.end method

.method static synthetic a(Lvpadn/af;Z)Z
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lvpadn/af;->V:Z

    return p1
.end method

.method private b(J)V
    .locals 5

    .prologue
    .line 1764
    invoke-direct {p0}, Lvpadn/af;->x()V

    .line 1765
    const-string v0, "VponBannerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshRequestTimerStart second:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lvpadn/af;->F:Ljava/util/Timer;

    .line 1768
    :try_start_0
    iget-object v0, p0, Lvpadn/af;->F:Ljava/util/Timer;

    new-instance v1, Lvpadn/af$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lvpadn/af$b;-><init>(Lvpadn/af;Lvpadn/af$1;)V

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1772
    :goto_0
    return-void

    .line 1769
    :catch_0
    move-exception v0

    .line 1770
    const-string v1, "VponBannerController"

    const-string v2, "refreshRequestTimerStart throw Exception:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic b(Lvpadn/af;J)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lvpadn/af;->a(J)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 1340
    if-eqz p1, :cond_1

    iget-object v0, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 1341
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lvpadn/af$2;

    invoke-direct {v1, p0}, Lvpadn/af$2;-><init>(Lvpadn/af;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1354
    :cond_1
    iget-boolean v0, p0, Lvpadn/af;->N:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/af;->A:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lvpadn/af;->B:Z

    if-nez v0, :cond_0

    .line 1356
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lvpadn/af$3;

    invoke-direct {v1, p0}, Lvpadn/af$3;-><init>(Lvpadn/af;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private b(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1924
    invoke-direct {p0, p1}, Lvpadn/af;->c(Landroid/view/View;)I

    move-result v0

    .line 1925
    ushr-int/lit8 v0, v0, 0x18

    .line 1927
    if-nez v0, :cond_0

    .line 1928
    const/4 v0, 0x1

    .line 1930
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lvpadn/af;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lvpadn/af;->D:Z

    return v0
.end method

.method static synthetic b(Lvpadn/af;Z)Z
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lvpadn/af;->U:Z

    return p1
.end method

.method private c(Landroid/view/View;)I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1937
    .line 1939
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_1

    .line 1940
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 1941
    invoke-direct {p0}, Lvpadn/af;->A()V

    .line 1948
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 1950
    iget-object v2, p0, Lvpadn/af;->Y:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1951
    invoke-virtual {v0, v1, v1, v4, v4}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 1953
    iget-object v2, p0, Lvpadn/af;->X:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1954
    iget-object v2, p0, Lvpadn/af;->W:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 1956
    iget-object v2, p0, Lvpadn/af;->Y:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    move v0, v1

    .line 1963
    :goto_0
    return v0

    .line 1959
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lvpadn/af;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lvpadn/af;->r()V

    return-void
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 1369
    iget-boolean v0, p0, Lvpadn/af;->N:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1371
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lvpadn/af$4;

    invoke-direct {v1, p0, p1}, Lvpadn/af$4;-><init>(Lvpadn/af;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1384
    :cond_0
    return-void
.end method

.method static synthetic c(Lvpadn/af;Z)Z
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lvpadn/af;->D:Z

    return p1
.end method

.method static synthetic d(Lvpadn/af;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lvpadn/af;->V:Z

    return v0
.end method

.method static synthetic e(Lvpadn/af;)Lvpadn/ax;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lvpadn/af;->y:Lvpadn/ax;

    return-object v0
.end method

.method static synthetic f(Lvpadn/af;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lvpadn/af;->S:I

    return v0
.end method

.method static synthetic g(Lvpadn/af;)I
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Lvpadn/af;->T:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lvpadn/af;->T:I

    return v0
.end method

.method static synthetic h(Lvpadn/af;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lvpadn/af;->D()V

    return-void
.end method

.method static synthetic i(Lvpadn/af;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic j(Lvpadn/af;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lvpadn/af;->A:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lvpadn/af;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lvpadn/af;->q()V

    return-void
.end method

.method static synthetic l(Lvpadn/af;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lvpadn/af;->w()V

    return-void
.end method

.method static synthetic m(Lvpadn/af;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lvpadn/af;->O:I

    return v0
.end method

.method static synthetic n(Lvpadn/af;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lvpadn/af;->N:Z

    return v0
.end method

.method static synthetic o(Lvpadn/af;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lvpadn/af;->F:Ljava/util/Timer;

    return-object v0
.end method

.method private q()V
    .locals 3

    .prologue
    .line 566
    iget-object v0, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 567
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvpadn/af;->A:Landroid/widget/ImageView;

    .line 580
    iget-object v0, p0, Lvpadn/af;->A:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lvpadn/af;->A:Landroid/widget/ImageView;

    const-string v1, "/vpon_video2_close.png"

    invoke-virtual {p0, v1}, Lvpadn/af;->d(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 583
    iget-object v0, p0, Lvpadn/af;->A:Landroid/widget/ImageView;

    new-instance v1, Lvpadn/af$14;

    invoke-direct {v1, p0}, Lvpadn/af$14;-><init>(Lvpadn/af;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0}, Lvpadn/bm;->i(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 592
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 593
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 596
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 597
    iget-object v0, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/af;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    :cond_0
    return-void
.end method

.method private r()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 603
    const-string v0, "VponBannerController"

    const-string v1, "ENTER doCloseExpand()"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    if-eqz v0, :cond_4

    .line 606
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/df;->b(Z)V

    .line 607
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    invoke-virtual {v0, v2, v2}, Lvpadn/df;->a(ZZ)V

    .line 612
    :goto_0
    iget-object v0, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 613
    iget-boolean v0, p0, Lvpadn/af;->N:Z

    if-eqz v0, :cond_0

    .line 615
    iput-boolean v2, p0, Lvpadn/af;->N:Z

    .line 616
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    const-string v1, "bannerWebView"

    invoke-virtual {v0, v1}, Lvpadn/df;->setVponWebViewId(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    invoke-virtual {v0, v2}, Lvpadn/df;->setBackgroundColor(I)V

    .line 622
    :cond_0
    iget-object v0, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 624
    iget-object v0, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 625
    iput-object v3, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    .line 628
    :cond_1
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lvpadn/af;->K:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 630
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    invoke-interface {v0}, Lvpadn/ao;->onLeaveExpandMode()V

    .line 633
    iget-boolean v0, p0, Lvpadn/af;->D:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lvpadn/af;->y:Lvpadn/ax;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lvpadn/af;->F:Ljava/util/Timer;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lvpadn/af;->U:Z

    if-eqz v0, :cond_3

    .line 635
    iget-boolean v0, p0, Lvpadn/af;->V:Z

    if-nez v0, :cond_2

    .line 636
    iget-object v0, p0, Lvpadn/af;->y:Lvpadn/ax;

    invoke-virtual {v0}, Lvpadn/ax;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lvpadn/af;->b(J)V

    .line 638
    :cond_2
    iput-boolean v2, p0, Lvpadn/af;->U:Z

    .line 641
    :cond_3
    invoke-virtual {p0, v3}, Lvpadn/af;->dismissScreen(Ljava/lang/Object;)V

    .line 645
    :goto_1
    return-void

    .line 609
    :cond_4
    const-string v0, "VponBannerController"

    const-string v1, "mShowWebView is NULL in doCloseExpand"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 643
    :cond_5
    const-string v0, "VponBannerController"

    const-string v1, "mExpandRelativeLayout is null at doCloseExpand()"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private s()V
    .locals 5

    .prologue
    .line 672
    iget-object v0, p0, Lvpadn/af;->b:Ljava/lang/String;

    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    const-string v0, "VponBannerController"

    const-string v1, "Invalid Banner ID!!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_0
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0}, Lvpadn/br;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 683
    iget-object v0, p0, Lvpadn/af;->g:Ljava/util/Map;

    const-string v1, "url_type_banner"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 684
    if-eqz v0, :cond_3

    .line 685
    const-string v1, "VponBannerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endRequestToServer mRequestCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lvpadn/af;->R:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lvpadn/af;->R:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLoadInitHtmlTimeOutCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lvpadn/af;->T:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-static {}, Lvpadn/br;->a()V

    .line 688
    :try_start_0
    new-instance v1, Lvpadn/an;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lvpadn/af;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-direct {v1, v0, v2}, Lvpadn/an;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_2

    .line 690
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lvpadn/an;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 716
    :cond_1
    :goto_0
    return-void

    .line 692
    :cond_2
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lvpadn/an;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 694
    :catch_0
    move-exception v0

    .line 695
    const-string v1, "VponBannerController"

    const-string v2, "sendRequestToServer throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 698
    :cond_3
    const-string v0, "VponBannerController"

    const-string v1, "mUrlMap.get(VponControllerInterface.URL_TYPE_BANNER) return null"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 707
    :cond_4
    const-string v0, "VponBannerController"

    const-string v1, "permission-checking is failed!!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private t()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v1, 0x0

    const/16 v13, 0x2d8

    const/16 v12, 0x1d4

    const-wide v10, 0x4056800000000000L    # 90.0

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 850
    :try_start_0
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    .line 851
    const/4 v2, 0x0

    iget-object v3, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Lvpadn/au;->l(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    .line 852
    const-string v0, "u_w"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 853
    const-string v0, "u_h"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 855
    int-to-double v4, v0

    const-wide/high16 v6, 0x3fc0000000000000L    # 0.125

    mul-double/2addr v4, v6

    .line 857
    const/4 v0, 0x0

    .line 859
    iget-object v2, p0, Lvpadn/af;->c:Lcom/vpadn/ads/VpadnAdSize;

    invoke-virtual {v2}, Lcom/vpadn/ads/VpadnAdSize;->getMixModeCustomStr()Ljava/lang/String;

    move-result-object v2

    const-string v6, "mix_custom_height"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 860
    const/4 v0, 0x1

    .line 863
    :cond_0
    if-eqz v0, :cond_3

    .line 864
    iget-object v0, p0, Lvpadn/af;->c:Lcom/vpadn/ads/VpadnAdSize;

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/vpadn/ads/VpadnAdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lvpadn/af;->Q:I

    .line 866
    if-lt v3, v13, :cond_1

    cmpl-double v0, v4, v10

    if-ltz v0, :cond_1

    .line 867
    int-to-float v0, v3

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lvpadn/af;->P:I

    .line 868
    const-string v0, "728x90_mb"

    .line 899
    :goto_0
    return-object v0

    .line 869
    :cond_1
    if-lt v3, v12, :cond_2

    cmpl-double v0, v4, v8

    if-ltz v0, :cond_2

    .line 870
    int-to-float v0, v3

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lvpadn/af;->P:I

    .line 871
    const-string v0, "468x60_mb"

    goto :goto_0

    .line 874
    :cond_2
    int-to-float v0, v3

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lvpadn/af;->P:I

    .line 875
    const-string v0, "320x50_mb"

    goto :goto_0

    .line 878
    :cond_3
    iget-object v0, p0, Lvpadn/af;->c:Lcom/vpadn/ads/VpadnAdSize;

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/vpadn/ads/VpadnAdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lvpadn/af;->P:I

    .line 880
    if-lt v3, v13, :cond_4

    cmpl-double v0, v4, v10

    if-ltz v0, :cond_4

    .line 881
    const/high16 v0, 0x42b40000    # 90.0f

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lvpadn/af;->Q:I

    .line 882
    const-string v0, "728x90_mb"

    goto :goto_0

    .line 884
    :cond_4
    if-lt v3, v12, :cond_5

    cmpl-double v0, v4, v8

    if-ltz v0, :cond_5

    .line 885
    const/high16 v0, 0x42700000    # 60.0f

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lvpadn/af;->Q:I

    .line 886
    const-string v0, "468x60_mb"

    goto :goto_0

    .line 889
    :cond_5
    const/high16 v0, 0x42480000    # 50.0f

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lvpadn/af;->Q:I

    .line 890
    const-string v0, "320x50_mb"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 895
    :catch_0
    move-exception v0

    .line 897
    const-string v2, "VponBannerController"

    const-string v3, "getMixAdSizeFormatAndSetWebViewSize throw Exception"

    invoke-static {v2, v3, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 899
    goto :goto_0
.end method

.method private u()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 905
    :try_start_0
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    .line 906
    const/4 v2, 0x0

    iget-object v3, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Lvpadn/au;->l(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    .line 907
    const-string v0, "u_w"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 908
    const-string v0, "u_h"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 909
    const-string v2, "VponBannerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unitWidthDip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " unitHeightDip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    int-to-double v4, v0

    const-wide/high16 v6, 0x3fc0000000000000L    # 0.125

    mul-double/2addr v4, v6

    .line 912
    const/16 v0, 0x2d8

    if-lt v3, v0, :cond_0

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_0

    .line 913
    int-to-float v0, v3

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lvpadn/af;->P:I

    .line 914
    const/high16 v0, 0x42b40000    # 90.0f

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lvpadn/af;->Q:I

    .line 915
    const-string v0, "728x90_mb"

    .line 939
    :goto_0
    return-object v0

    .line 917
    :cond_0
    const/16 v0, 0x1d4

    if-lt v3, v0, :cond_1

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_1

    .line 918
    int-to-float v0, v3

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lvpadn/af;->P:I

    .line 919
    const/high16 v0, 0x42700000    # 60.0f

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lvpadn/af;->Q:I

    .line 920
    const-string v0, "468x60_mb"

    goto :goto_0

    .line 922
    :cond_1
    const/16 v0, 0x140

    if-lt v3, v0, :cond_2

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_2

    .line 924
    int-to-float v0, v3

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lvpadn/af;->P:I

    .line 925
    const/high16 v0, 0x42480000    # 50.0f

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lvpadn/af;->Q:I

    .line 926
    const-string v0, "320x50_mb"

    goto :goto_0

    .line 929
    :cond_2
    int-to-float v0, v3

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lvpadn/af;->P:I

    .line 930
    const/high16 v0, 0x42000000    # 32.0f

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lvpadn/af;->Q:I

    .line 931
    const-string v0, "480x32_mb"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 934
    :catch_0
    move-exception v0

    .line 936
    const-string v2, "VponBannerController"

    const-string v3, "getSmartBannerAdSizeFormatAndSetWebViewSize throws Exception"

    invoke-static {v2, v3, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 939
    goto :goto_0
.end method

.method private v()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1526
    const-string v0, "VponBannerController"

    const-string v1, "enter showBanner"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    iput-boolean v2, p0, Lvpadn/af;->V:Z

    .line 1529
    iget v0, p0, Lvpadn/af;->S:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvpadn/af;->S:I

    .line 1531
    iget-boolean v0, p0, Lvpadn/af;->N:Z

    if-nez v0, :cond_0

    .line 1533
    invoke-direct {p0}, Lvpadn/af;->C()V

    .line 1536
    :cond_0
    iget-object v0, p0, Lvpadn/af;->u:Lvpadn/df;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/af;->x:Lvpadn/ax;

    if-nez v0, :cond_4

    .line 1537
    :cond_1
    iget-object v0, p0, Lvpadn/af;->u:Lvpadn/df;

    if-nez v0, :cond_3

    .line 1538
    const-string v0, "VponBannerController"

    const-string v1, " mPrepareWebView == null at showBanner"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_2
    :goto_0
    return-void

    .line 1540
    :cond_3
    const-string v0, "VponBannerController"

    const-string v1, " mPrepareAd == null at showBanner"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1545
    :cond_4
    iget-boolean v0, p0, Lvpadn/af;->D:Z

    if-eqz v0, :cond_5

    .line 1547
    iget-object v0, p0, Lvpadn/af;->x:Lvpadn/ax;

    invoke-virtual {v0}, Lvpadn/ax;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lvpadn/af;->b(J)V

    .line 1550
    :cond_5
    iget-boolean v0, p0, Lvpadn/af;->N:Z

    if-nez v0, :cond_2

    .line 1557
    iget-object v0, p0, Lvpadn/af;->u:Lvpadn/df;

    iput-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    .line 1558
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    invoke-virtual {v0, v2}, Lvpadn/df;->setBackgroundColor(I)V

    .line 1559
    iget-object v0, p0, Lvpadn/af;->x:Lvpadn/ax;

    iput-object v0, p0, Lvpadn/af;->y:Lvpadn/ax;

    .line 1564
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    iget v1, p0, Lvpadn/af;->P:I

    iget v2, p0, Lvpadn/af;->Q:I

    invoke-interface {v0, v1, v2}, Lvpadn/ao;->onControllerWebViewReady(II)V

    .line 1565
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bo;->b()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvpadn/af;->a(Landroid/location/Location;)V

    .line 1573
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/ba;->c()V

    .line 1576
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lvpadn/af;->a(J)V

    goto :goto_0
.end method

.method private w()V
    .locals 5

    .prologue
    .line 1580
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Lvpadn/af;->y:Lvpadn/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/af;->y:Lvpadn/ax;

    invoke-virtual {v0}, Lvpadn/ax;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1582
    iget-object v0, p0, Lvpadn/af;->g:Ljava/util/Map;

    const-string v1, "url_type_impression"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1583
    if-eqz v0, :cond_2

    .line 1584
    const-string v1, "VponBannerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send impression to server impressionUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :try_start_0
    new-instance v2, Lvpadn/am;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lvpadn/af;->e:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-direct {v2, v0, v1}, Lvpadn/am;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1587
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_1

    .line 1588
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lvpadn/am;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1595
    :goto_0
    iget-object v1, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lvpadn/af$6;

    invoke-direct {v2, p0, v0}, Lvpadn/af$6;-><init>(Lvpadn/af;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1625
    :cond_0
    :goto_1
    return-void

    .line 1590
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lvpadn/am;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1592
    :catch_0
    move-exception v1

    .line 1593
    const-string v2, "VponBannerController"

    const-string v3, "sendImpressionToServer throw Exception"

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1602
    :cond_2
    const-string v0, "VponBannerController"

    const-string v1, "Cannot get impression URL"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private declared-synchronized x()V
    .locals 2

    .prologue
    .line 1802
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvpadn/af;->F:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1803
    const-string v0, "VponBannerController"

    const-string v1, "cancelAutoRefreshTimer()"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    iget-object v0, p0, Lvpadn/af;->F:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1805
    iget-object v0, p0, Lvpadn/af;->F:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1806
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/af;->F:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1808
    :cond_0
    monitor-exit p0

    return-void

    .line 1802
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized y()V
    .locals 2

    .prologue
    .line 1811
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvpadn/af;->I:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1812
    const-string v0, "VponBannerController"

    const-string v1, "mCheckLoadInitHtmlToShowBannerTimer()"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    iget-object v0, p0, Lvpadn/af;->I:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1814
    iget-object v0, p0, Lvpadn/af;->I:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1815
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/af;->I:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1817
    :cond_0
    monitor-exit p0

    return-void

    .line 1811
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized z()V
    .locals 2

    .prologue
    .line 1820
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvpadn/af;->H:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1821
    const-string v0, "VponBannerController"

    const-string v1, "cancelCoveredCheckTimer()"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    iget-object v0, p0, Lvpadn/af;->H:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1823
    iget-object v0, p0, Lvpadn/af;->H:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1824
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/af;->H:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1826
    :cond_0
    monitor-exit p0

    return-void

    .line 1820
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 6

    .prologue
    .line 1132
    if-eqz p1, :cond_0

    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lvpadn/af;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lvpadn/af;->y:Lvpadn/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/af;->y:Lvpadn/ax;

    invoke-virtual {v0}, Lvpadn/ax;->c()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/af;->y:Lvpadn/ax;

    invoke-virtual {v0}, Lvpadn/ax;->b()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lvpadn/af;->y:Lvpadn/ax;

    invoke-virtual {v0}, Lvpadn/ax;->c()Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lvpadn/af;->y:Lvpadn/ax;

    invoke-virtual {v1}, Lvpadn/ax;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lvpadn/br;->a(Ljava/lang/Double;Ljava/lang/Double;DD)I

    move-result v0

    .line 1134
    if-lez v0, :cond_0

    .line 1135
    const-string v1, "javascript:getDistance(\'%d\')"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    iget-object v1, p0, Lvpadn/af;->w:Lvpadn/df;

    invoke-virtual {v1, v0}, Lvpadn/df;->loadUrl(Ljava/lang/String;)V

    .line 1139
    :cond_0
    return-void
.end method

.method public a(Lcom/vpadn/ads/VpadnAdRequest;)V
    .locals 8

    .prologue
    .line 725
    :try_start_0
    const-string v0, "VponBannerController"

    const-string v1, "---->enter loadInitHtmlTemplate"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget v0, p0, Lvpadn/af;->S:I

    .line 727
    const/4 v1, 0x0

    iput-boolean v1, p0, Lvpadn/af;->f:Z

    .line 728
    const/4 v1, 0x1

    iput-boolean v1, p0, Lvpadn/af;->V:Z

    .line 729
    iput-object p1, p0, Lvpadn/af;->q:Lcom/vpadn/ads/VpadnAdRequest;

    .line 730
    invoke-virtual {p1}, Lcom/vpadn/ads/VpadnAdRequest;->isAutoRefresh()Z

    move-result v1

    iput-boolean v1, p0, Lvpadn/af;->D:Z

    .line 732
    invoke-direct {p0}, Lvpadn/af;->y()V

    .line 734
    new-instance v1, Lvpadn/af$15;

    invoke-direct {v1, p0, v0}, Lvpadn/af$15;-><init>(Lvpadn/af;I)V

    .line 754
    invoke-direct {p0}, Lvpadn/af;->z()V

    .line 755
    const/4 v0, 0x0

    iput v0, p0, Lvpadn/af;->G:I

    .line 756
    const/4 v0, 0x0

    iput v0, p0, Lvpadn/af;->O:I

    .line 758
    invoke-virtual {p0}, Lvpadn/af;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 759
    const-string v0, "VponBannerController"

    const-string v2, "Device is not on-line"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    sget-object v2, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->NETWORK_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v2}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 764
    :cond_0
    iget-boolean v0, p0, Lvpadn/af;->D:Z

    if-eqz v0, :cond_1

    .line 765
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lvpadn/af;->I:Ljava/util/Timer;

    .line 766
    iget-object v0, p0, Lvpadn/af;->I:Ljava/util/Timer;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 843
    :cond_1
    :goto_0
    return-void

    .line 772
    :cond_2
    iget-boolean v0, p0, Lvpadn/af;->D:Z

    if-eqz v0, :cond_3

    .line 773
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lvpadn/af;->I:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :try_start_1
    iget-object v0, p0, Lvpadn/af;->I:Ljava/util/Timer;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 781
    :cond_3
    :goto_1
    :try_start_2
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 782
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 783
    if-nez v0, :cond_5

    .line 784
    const-string v0, "VponBannerController"

    const-string v1, "ScreenOff"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-boolean v0, p0, Lvpadn/af;->D:Z

    if-eqz v0, :cond_4

    .line 787
    const-wide/16 v0, 0xa

    invoke-direct {p0, v0, v1}, Lvpadn/af;->b(J)V

    .line 789
    :cond_4
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    if-eqz v0, :cond_1

    .line 790
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 838
    :catch_0
    move-exception v0

    .line 840
    const-string v1, "VponBannerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadInitHtmlTemplate throw Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 776
    :catch_1
    move-exception v0

    .line 777
    :try_start_3
    const-string v1, "VponBannerController"

    const-string v2, "mCheckLoadInitHtmlToShowBannerTimer.schedule throw Exception:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 796
    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 797
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v1

    .line 798
    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lvpadn/au;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 800
    const-string v1, "pf"

    iget-object v3, p0, Lvpadn/af;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 801
    const-string v1, "pf"

    iget-object v3, p0, Lvpadn/af;->d:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 803
    invoke-virtual {p0}, Lvpadn/af;->d()V

    .line 804
    iget-wide v4, p0, Lvpadn/af;->k:J

    .line 805
    iget-wide v6, p0, Lvpadn/af;->l:J

    move-object v1, p0

    move-object v3, p1

    .line 806
    invoke-direct/range {v1 .. v7}, Lvpadn/af;->a(Lorg/json/JSONObject;Lcom/vpadn/ads/VpadnAdRequest;JJ)Lorg/json/JSONObject;

    move-result-object v1

    .line 817
    const-string v2, "build"

    const-string v3, "71707102"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 826
    const-string v2, "<!doctype html> <html> <head> <meta charset=\'utf-8\'/>\n<script type=\'text/javascript\' charset=\'utf-8\' src=\'http://m.vpon.com/sdk/vpadn-sdk-core-v1.js\'></script>\n<script type=\'text/javascript\' charset=\'utf-8\'>\nVPSDK_LoadSdkConstants( JSON_REPLACE1 );\nVPSDK_BuildAdReqUrl( JSON_REPLACE2 );\n</script><body></body></html>"

    .line 827
    const-string v3, "JSON_REPLACE1"

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 828
    const-string v2, "JSON_REPLACE2"

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 829
    const-string v0, "VponBannerController"

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-direct {p0}, Lvpadn/af;->B()V

    .line 832
    new-instance v0, Lvpadn/df;

    const-string v1, "init"

    iget-object v3, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v3, p0, p0}, Lvpadn/df;-><init>(Ljava/lang/String;Landroid/content/Context;Lvpadn/at;Lvpadn/q;)V

    iput-object v0, p0, Lvpadn/af;->v:Lvpadn/df;

    .line 833
    iget-object v0, p0, Lvpadn/af;->v:Lvpadn/df;

    const-string v1, "file:///android_asset/www/vpadn"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lvpadn/df;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0}, Lvpadn/af;->B()V

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lvpadn/af$1;

    invoke-direct {v1, p0}, Lvpadn/af$1;-><init>(Lvpadn/af;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lvpadn/af;->b:Ljava/lang/String;

    .line 657
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2177
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    if-eqz v0, :cond_0

    .line 2178
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    invoke-virtual {v0, p1, p2, p3}, Lvpadn/df;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2179
    const-string v1, "VponBannerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VponBannerController.testSendJsonToVponCordovaPlugin return string:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :goto_0
    return-void

    .line 2181
    :cond_0
    const-string v0, "VponBannerController"

    const-string v1, "Cannot call VponBannerController.testSendJsonToVponCordovaPlugin "

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lvpadn/p;IIIILjava/lang/String;Z)V
    .locals 13

    .prologue
    .line 415
    const-string v1, "VponBannerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "w:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v1, p0, Lvpadn/af;->w:Lvpadn/df;

    if-eqz v1, :cond_1

    .line 419
    :try_start_0
    iget-object v1, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lvpadn/af;->K:I

    .line 420
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lvpadn/af;->J:I

    .line 422
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 423
    iget-object v1, p0, Lvpadn/af;->w:Lvpadn/df;

    invoke-virtual {v1, v2}, Lvpadn/df;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 425
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 426
    iget-object v1, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 427
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 428
    iget-object v1, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v4, 0x1020002

    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 429
    sub-int/2addr v1, v3

    .line 430
    add-int/2addr v1, v3

    .line 432
    int-to-float v3, p2

    iget-object v4, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v3

    float-to-int v8, v3

    .line 433
    move/from16 v0, p3

    int-to-float v3, v0

    iget-object v4, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v3

    float-to-int v9, v3

    .line 435
    move/from16 v0, p4

    int-to-float v3, v0

    iget-object v4, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v3

    float-to-int v3, v3

    .line 436
    move/from16 v0, p5

    int-to-float v4, v0

    iget-object v5, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v4

    float-to-int v4, v4

    .line 439
    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int v7, v5, v3

    .line 440
    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    sub-int v6, v2, v1

    .line 442
    if-ltz v7, :cond_0

    if-gez v6, :cond_2

    .line 443
    :cond_0
    const-string v1, "VponBannerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leftMarginPix < 0 || topMarginPix < 0 at doResizeForSDKPlugin. leftMarginPix:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " topMarginPix:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "e"

    const-string v3, "leftMarginPix < 0 || topMarginPix < 0 at doResizeForSDKPlugin"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lvpadn/p;->b(Lorg/json/JSONObject;)V

    .line 563
    :cond_1
    :goto_0
    return-void

    .line 449
    :cond_2
    const/4 v4, 0x0

    .line 450
    const/4 v3, 0x0

    .line 451
    const/4 v2, -0x1

    .line 452
    const/4 v1, -0x1

    .line 453
    const/high16 v5, 0x42480000    # 50.0f

    iget-object v10, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v5, v10}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v5

    float-to-int v5, v5

    .line 455
    invoke-static/range {p6 .. p6}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 457
    const-string v3, "top-right"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 458
    sub-int v1, v8, v5

    add-int v2, v7, v1

    move v1, v6

    .line 480
    :cond_3
    :goto_1
    new-instance v4, Landroid/widget/TextView;

    iget-object v3, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-direct {v4, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 481
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setWidth(I)V

    .line 482
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHeight(I)V

    .line 483
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 484
    new-instance v3, Lvpadn/af$13;

    invoke-direct {v3, p0}, Lvpadn/af$13;-><init>(Lvpadn/af;)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 492
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 493
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move v2, v1

    .line 497
    :goto_2
    const-string v1, "VponBannerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " doResizeForSDKPlugin wPix:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " hPix:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " leftMarginPix:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " topMarginPix:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v1, p0, Lvpadn/af;->C:Lvpadn/ao;

    invoke-interface {v1}, Lvpadn/ao;->onPrepareExpandMode()V

    .line 502
    iget-object v1, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    .line 503
    iget-object v1, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v10, 0x1020002

    invoke-virtual {v1, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v10, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 504
    iget-object v1, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 505
    const/4 v1, 0x0

    iput-object v1, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    .line 508
    :cond_4
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-direct {v1, v10}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    .line 509
    iget-object v1, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 512
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 513
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 516
    iget-object v6, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 518
    iget-object v6, p0, Lvpadn/af;->w:Lvpadn/df;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Lvpadn/df;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    iget-object v6, p0, Lvpadn/af;->w:Lvpadn/df;

    const-string v7, "bannerWebViewResized"

    invoke-virtual {v6, v7}, Lvpadn/df;->setVponWebViewId(Ljava/lang/String;)V

    .line 522
    iget-object v6, p0, Lvpadn/af;->w:Lvpadn/df;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lvpadn/df;->setBackgroundColor(I)V

    .line 523
    iget-object v6, p0, Lvpadn/af;->w:Lvpadn/df;

    invoke-virtual {v6}, Lvpadn/df;->bringToFront()V

    .line 524
    iget-object v6, p0, Lvpadn/af;->w:Lvpadn/df;

    invoke-virtual {v6}, Lvpadn/df;->requestFocus()Z

    .line 526
    iget-object v6, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lvpadn/af;->w:Lvpadn/df;

    invoke-virtual {v6, v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    if-ltz v3, :cond_5

    if-ltz v2, :cond_5

    .line 528
    iget-object v1, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    :cond_5
    iget-object v1, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 535
    const/4 v1, 0x1

    iput-boolean v1, p0, Lvpadn/af;->N:Z

    .line 536
    invoke-virtual {p1}, Lvpadn/p;->c()V

    .line 538
    iget-object v1, p0, Lvpadn/af;->C:Lvpadn/ao;

    if-eqz v1, :cond_6

    .line 539
    iget-object v1, p0, Lvpadn/af;->C:Lvpadn/ao;

    invoke-interface {v1}, Lvpadn/ao;->onVponPresent()V

    .line 542
    :cond_6
    iget-boolean v1, p0, Lvpadn/af;->D:Z

    if-eqz v1, :cond_1

    .line 543
    invoke-direct {p0}, Lvpadn/af;->x()V

    .line 544
    const/4 v1, 0x1

    iput-boolean v1, p0, Lvpadn/af;->U:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 547
    :catch_0
    move-exception v1

    .line 548
    const-string v2, "VponBannerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doResizeForSDKPlugin throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "e"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doResizeForSDKPlugin throw execption:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 556
    :goto_3
    iget-object v1, p0, Lvpadn/af;->w:Lvpadn/df;

    const-string v2, "bannerWebView"

    invoke-virtual {v1, v2}, Lvpadn/df;->setVponWebViewId(Ljava/lang/String;)V

    .line 557
    const/4 v1, 0x0

    iput-boolean v1, p0, Lvpadn/af;->N:Z

    .line 558
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lvpadn/af;->dismissScreen(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 460
    :cond_7
    :try_start_2
    const-string v3, "top-left"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v1, v6

    move v2, v7

    .line 462
    goto/16 :goto_1

    .line 463
    :cond_8
    const-string v3, "bottom-left"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 465
    sub-int v1, v9, v5

    add-int/2addr v1, v6

    move v2, v7

    goto/16 :goto_1

    .line 466
    :cond_9
    const-string v3, "bottom-right"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 467
    sub-int v1, v8, v5

    add-int v2, v7, v1

    .line 468
    sub-int v1, v9, v5

    add-int/2addr v1, v6

    goto/16 :goto_1

    .line 469
    :cond_a
    const-string v3, "top-center"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 470
    div-int/lit8 v1, v8, 0x2

    div-int/lit8 v2, v5, 0x2

    sub-int/2addr v1, v2

    add-int v2, v7, v1

    move v1, v6

    .line 471
    goto/16 :goto_1

    .line 472
    :cond_b
    const-string v3, "bottom-center"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 473
    div-int/lit8 v1, v8, 0x2

    div-int/lit8 v2, v5, 0x2

    sub-int/2addr v1, v2

    add-int v2, v7, v1

    .line 474
    sub-int v1, v9, v5

    add-int/2addr v1, v6

    goto/16 :goto_1

    .line 475
    :cond_c
    const-string v3, "center"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 476
    div-int/lit8 v1, v8, 0x2

    div-int/lit8 v2, v5, 0x2

    sub-int/2addr v1, v2

    add-int v2, v7, v1

    .line 477
    div-int/lit8 v1, v9, 0x2

    div-int/lit8 v3, v5, 0x2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    sub-int/2addr v1, v3

    add-int/2addr v1, v6

    goto/16 :goto_1

    .line 551
    :catch_1
    move-exception v1

    .line 553
    const-string v2, "VponBannerController"

    const-string v3, "doResizeForSDKPlugin throw Exception"

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_d
    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move v2, v1

    goto/16 :goto_2
.end method

.method public a(Lvpadn/p;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZZZ)V
    .locals 9

    .prologue
    .line 214
    :try_start_0
    const-string v2, "VponBannerController"

    const-string v3, "===========>>Enter doOpenWebAppForSDKPlugIn"

    invoke-static {v2, v3}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 218
    const-string v2, "adType"

    const-string v3, "sdkOpenWebApp"

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v2, "url"

    invoke-virtual {v8, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v2, "isUseCustomClose"

    invoke-virtual {v8, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 223
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    const-string v3, "getControllerKey"

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v3

    .line 226
    invoke-virtual {v3, v2, p0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    const-string v4, "getCallbackContextKey"

    invoke-virtual {v8, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v3, v2, p1}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    iput v2, p0, Lvpadn/af;->K:I

    .line 233
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lvpadn/af;->J:I

    .line 235
    const-string v2, "originalRequestedOrientation"

    iget v3, p0, Lvpadn/af;->K:I

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string v2, "beforeActivityOrientation"

    iget v3, p0, Lvpadn/af;->J:I

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 238
    const-string v2, "forceOrientation"

    invoke-virtual {v8, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v2, "isAllowOrientationChange"

    invoke-virtual {v8, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 243
    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 244
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 245
    const-string v3, "statusBarHeight"

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    iget-object v2, p0, Lvpadn/af;->y:Lvpadn/ax;

    if-eqz v2, :cond_0

    .line 249
    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v2}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    move-result-object v2

    invoke-virtual {v2}, Lvpadn/bo;->b()Landroid/location/Location;

    move-result-object v6

    .line 250
    if-eqz v6, :cond_0

    .line 251
    iget-object v2, p0, Lvpadn/af;->y:Lvpadn/ax;

    invoke-virtual {v2}, Lvpadn/ax;->c()Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lvpadn/af;->y:Lvpadn/ax;

    invoke-virtual {v3}, Lvpadn/ax;->b()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lvpadn/br;->a(Ljava/lang/Double;Ljava/lang/Double;DD)I

    move-result v2

    .line 252
    const-string v3, "distance"

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    :cond_0
    if-eqz p3, :cond_1

    .line 257
    const-string v2, "html"

    invoke-virtual {v8, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_1
    const-string v2, "backgroundColor"

    move/from16 v0, p7

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    const-string v2, "isShowProgressBar"

    move/from16 v0, p8

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    const-string v2, "isShowNavigationBar"

    move/from16 v0, p9

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    const-string v2, "isUseWebViewLoadUrl"

    move/from16 v0, p10

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    const-string v3, "click_url"

    iget-object v2, p0, Lvpadn/af;->g:Ljava/util/Map;

    const-string v4, "url_type_click"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v2, "session_id"

    invoke-virtual {p0}, Lvpadn/af;->e()J

    move-result-wide v4

    invoke-virtual {v8, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 270
    const-string v2, "sequence_number"

    invoke-virtual {p0}, Lvpadn/af;->f()J

    move-result-wide v4

    invoke-virtual {v8, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 272
    new-instance v3, Landroid/content/Intent;

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    const-class v4, Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    const/high16 v2, 0x10000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 274
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 276
    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 278
    :goto_0
    const-string v4, "isFullScreen"

    invoke-virtual {v8, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    invoke-virtual {v3, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 281
    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 283
    iget-object v2, p0, Lvpadn/af;->C:Lvpadn/ao;

    if-eqz v2, :cond_2

    .line 284
    iget-object v2, p0, Lvpadn/af;->C:Lvpadn/ao;

    invoke-interface {v2}, Lvpadn/ao;->onVponPresent()V

    .line 287
    :cond_2
    iget-boolean v2, p0, Lvpadn/af;->D:Z

    if-eqz v2, :cond_3

    .line 288
    invoke-direct {p0}, Lvpadn/af;->x()V

    .line 289
    const/4 v2, 0x1

    iput-boolean v2, p0, Lvpadn/af;->U:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_3
    :goto_1
    return-void

    .line 276
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v2

    .line 293
    const-string v3, "VponBannerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doOpenWebAppForSDKPlugIn throw Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public a(Lvpadn/p;ZZLjava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 323
    const-string v0, "VponBannerController"

    const-string v1, "Call doExpandForSDKPlugin"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    if-eqz v0, :cond_3

    .line 327
    :try_start_0
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lvpadn/af;->K:I

    .line 328
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lvpadn/af;->J:I

    .line 331
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    invoke-interface {v0}, Lvpadn/ao;->onPrepareExpandMode()V

    .line 333
    iput-object p4, p0, Lvpadn/af;->M:Ljava/lang/String;

    .line 334
    iput-boolean p3, p0, Lvpadn/af;->L:Z

    .line 335
    iput-boolean p2, p0, Lvpadn/af;->B:Z

    .line 337
    iget-object v0, p0, Lvpadn/af;->M:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 338
    iget-object v0, p0, Lvpadn/af;->M:Ljava/lang/String;

    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 352
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    .line 355
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 358
    iget-object v1, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 359
    iget-object v1, p0, Lvpadn/af;->w:Lvpadn/df;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lvpadn/df;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    iget-object v1, p0, Lvpadn/af;->w:Lvpadn/df;

    const-string v2, "bannerWebViewExpanded"

    invoke-virtual {v1, v2}, Lvpadn/df;->setVponWebViewId(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lvpadn/af;->w:Lvpadn/df;

    invoke-virtual {v1, p5}, Lvpadn/df;->setBackgroundColor(I)V

    .line 362
    iget-object v1, p0, Lvpadn/af;->w:Lvpadn/df;

    invoke-virtual {v1}, Lvpadn/df;->requestFocus()Z

    .line 364
    iget-object v1, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/af;->w:Lvpadn/df;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    .line 368
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 369
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 370
    iget-object v1, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 371
    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 372
    iget-object v2, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 373
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 380
    :goto_1
    iget-boolean v0, p0, Lvpadn/af;->B:Z

    if-nez v0, :cond_1

    .line 381
    invoke-direct {p0}, Lvpadn/af;->q()V

    .line 384
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/af;->N:Z

    .line 385
    invoke-virtual {p1}, Lvpadn/p;->c()V

    .line 387
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    invoke-interface {v0}, Lvpadn/ao;->onVponPresent()V

    .line 391
    :cond_2
    iget-boolean v0, p0, Lvpadn/af;->D:Z

    if-eqz v0, :cond_3

    .line 392
    invoke-direct {p0}, Lvpadn/af;->x()V

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/af;->U:Z

    .line 411
    :cond_3
    :goto_2
    return-void

    .line 340
    :cond_4
    iget-object v0, p0, Lvpadn/af;->M:Ljava/lang/String;

    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    const-string v1, "VponBannerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doExpandForSDKPlugin throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "e"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doExpandForSDKPlugin throw execption:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 404
    :goto_3
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    const-string v1, "bannerWebView"

    invoke-virtual {v0, v1}, Lvpadn/df;->setVponWebViewId(Ljava/lang/String;)V

    .line 405
    iput-boolean v6, p0, Lvpadn/af;->N:Z

    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lvpadn/af;->dismissScreen(Ljava/lang/Object;)V

    goto :goto_2

    .line 343
    :cond_5
    :try_start_2
    iget-boolean v0, p0, Lvpadn/af;->L:Z

    if-nez v0, :cond_0

    .line 345
    iget v0, p0, Lvpadn/af;->J:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 346
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 347
    :cond_6
    iget v0, p0, Lvpadn/af;->J:I

    if-ne v0, v2, :cond_0

    .line 348
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 375
    :cond_7
    iget-object v1, p0, Lvpadn/af;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 400
    :catch_1
    move-exception v0

    .line 401
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 719
    iput-boolean p1, p0, Lvpadn/af;->D:Z

    .line 720
    invoke-direct {p0}, Lvpadn/af;->s()V

    .line 721
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 176
    invoke-direct {p0}, Lvpadn/af;->B()V

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lvpadn/af$10;

    invoke-direct {v1, p0, p1}, Lvpadn/af$10;-><init>(Lvpadn/af;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1388
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lvpadn/af$5;

    invoke-direct {v1, p0, p1}, Lvpadn/af$5;-><init>(Lvpadn/af;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1405
    return-void
.end method

.method public cacheVideoByUrl(Lvpadn/p;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2160
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "e"

    const-string v2, "Banner cannot call cacheVideoByUrl. "

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2163
    :goto_0
    const-string v0, "VponBannerController"

    const-string v1, "Banner cannot call cacheVideoByUrl. "

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    return-void

    .line 2161
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public controlNativeVideoPlayer(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 3

    .prologue
    .line 2169
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "e"

    const-string v2, "Banner cannot call controlNativeVideoPlayer. "

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p3, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    :goto_0
    const-string v0, "VponBannerController"

    const-string v1, "Banner cannot call controlNativeVideoPlayer. "

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    return-void

    .line 2170
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dismissScreen(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1151
    iget-boolean v0, p0, Lvpadn/af;->r:Z

    if-eqz v0, :cond_0

    .line 1152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/af;->r:Z

    .line 1154
    :cond_0
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    if-eqz v0, :cond_1

    .line 1155
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    invoke-interface {v0}, Lvpadn/ao;->onVponDismiss()V

    .line 1157
    :cond_1
    return-void
.end method

.method public h()Lvpadn/df;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    return-object v0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lvpadn/af$11;

    invoke-direct {v1, p0}, Lvpadn/af$11;-><init>(Lvpadn/af;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 1142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/af;->r:Z

    .line 1143
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    invoke-interface {v0}, Lvpadn/ao;->onVponPresent()V

    .line 1146
    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    invoke-interface {v0}, Lvpadn/ao;->onVponLeaveApplication()V

    .line 1163
    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    .prologue
    .line 1793
    :try_start_0
    invoke-direct {p0}, Lvpadn/af;->y()V

    .line 1794
    invoke-direct {p0}, Lvpadn/af;->x()V

    .line 1795
    invoke-direct {p0}, Lvpadn/af;->z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    :goto_0
    return-void

    .line 1796
    :catch_0
    move-exception v0

    .line 1797
    const-string v1, "VponBannerController"

    const-string v2, "cancelTimer() throws Exception!"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public leaveApplicationFromVponActivity()V
    .locals 0

    .prologue
    .line 2039
    invoke-virtual {p0}, Lvpadn/af;->k()V

    .line 2040
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 1987
    const-string v0, "VponBannerController"

    const-string v1, "call webViewHandleDestroy"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/af;->f:Z

    .line 1990
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    iget-object v1, p0, Lvpadn/af;->u:Lvpadn/df;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    if-eqz v0, :cond_0

    .line 1991
    invoke-direct {p0}, Lvpadn/af;->C()V

    .line 1996
    :goto_0
    invoke-direct {p0}, Lvpadn/af;->B()V

    .line 1997
    return-void

    .line 1993
    :cond_0
    invoke-direct {p0}, Lvpadn/af;->D()V

    .line 1994
    invoke-direct {p0}, Lvpadn/af;->C()V

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 2031
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    if-eqz v0, :cond_0

    .line 2032
    const/4 v0, 0x1

    .line 2034
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyClickFailed()V
    .locals 1

    .prologue
    .line 2195
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 2196
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0}, Lcom/vpadn/ads/DebugListener;->clickFailed()V

    .line 2198
    :cond_0
    return-void
.end method

.method public notifyClickOk()V
    .locals 1

    .prologue
    .line 2188
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 2189
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0}, Lcom/vpadn/ads/DebugListener;->clickOK()V

    .line 2191
    :cond_0
    return-void
.end method

.method public notifyImpressionFailed()V
    .locals 1

    .prologue
    .line 2209
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 2210
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0}, Lcom/vpadn/ads/DebugListener;->impFailed()V

    .line 2212
    :cond_0
    return-void
.end method

.method public notifyImpressionOk()V
    .locals 1

    .prologue
    .line 2202
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 2203
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0}, Lcom/vpadn/ads/DebugListener;->impOk()V

    .line 2205
    :cond_0
    return-void
.end method

.method public notifyToVisible()V
    .locals 2

    .prologue
    .line 301
    invoke-super {p0}, Lvpadn/ae;->notifyToVisible()V

    .line 303
    iget-boolean v0, p0, Lvpadn/af;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/af;->y:Lvpadn/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/af;->F:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lvpadn/af;->U:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 305
    new-instance v1, Lvpadn/af$12;

    invoke-direct {v1, p0}, Lvpadn/af$12;-><init>(Lvpadn/af;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 315
    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 2052
    iget-boolean v0, p0, Lvpadn/af;->D:Z

    if-eqz v0, :cond_0

    .line 2053
    invoke-direct {p0}, Lvpadn/af;->x()V

    .line 2055
    :cond_0
    return-void
.end method

.method public onExpandModePressBackKey()V
    .locals 2

    .prologue
    .line 2044
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lvpadn/af$8;

    invoke-direct {v1, p0}, Lvpadn/af$8;-><init>(Lvpadn/af;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2049
    return-void
.end method

.method public onVideoTrackComplete(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 2244
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 2245
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0, p1, p2}, Lcom/vpadn/ads/DebugListener;->VT_COMPLETE(Ljava/lang/String;I)V

    .line 2247
    :cond_0
    return-void
.end method

.method public onVideoTrackFirstQuartile(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 2223
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 2224
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0, p1, p2}, Lcom/vpadn/ads/DebugListener;->VT_4_1(Ljava/lang/String;I)V

    .line 2226
    :cond_0
    return-void
.end method

.method public onVideoTrackMidpoint(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 2230
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 2231
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0, p1, p2}, Lcom/vpadn/ads/DebugListener;->VT_2_1(Ljava/lang/String;I)V

    .line 2233
    :cond_0
    return-void
.end method

.method public onVideoTrackProgressTime(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 2258
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 2259
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/vpadn/ads/DebugListener;->VT_PROGRESSTIME(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2261
    :cond_0
    return-void
.end method

.method public onVideoTrackReplay(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 2251
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 2252
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0, p1, p2}, Lcom/vpadn/ads/DebugListener;->VT_REPLAY(Ljava/lang/String;I)V

    .line 2254
    :cond_0
    return-void
.end method

.method public onVideoTrackStart(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 2216
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 2217
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0, p1, p2}, Lcom/vpadn/ads/DebugListener;->VT_START(Ljava/lang/String;I)V

    .line 2219
    :cond_0
    return-void
.end method

.method public onVideoTrackThirdQuartile(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 2237
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_0

    .line 2238
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0, p1, p2}, Lcom/vpadn/ads/DebugListener;->VT_4_3(Ljava/lang/String;I)V

    .line 2240
    :cond_0
    return-void
.end method

.method public onVponBannerImpression(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1449
    const-string v0, "VponBannerController"

    const-string v1, "call onVponBannerImpression"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-object v0, p0, Lvpadn/af;->y:Lvpadn/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/af;->y:Lvpadn/ax;

    invoke-virtual {v0}, Lvpadn/ax;->e()V

    .line 1451
    :cond_0
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0}, Lcom/vpadn/ads/DebugListener;->impOk()V

    .line 1452
    :cond_1
    return-void
.end method

.method public onVponBannerImpressionFailed(Lvpadn/aj;)V
    .locals 3

    .prologue
    .line 1456
    const-string v0, "VponBannerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call onVponBannerImpressionFailed VponReturnCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lvpadn/aj;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    iget-object v0, p0, Lvpadn/af;->y:Lvpadn/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/af;->y:Lvpadn/ax;

    invoke-virtual {v0}, Lvpadn/ax;->e()V

    .line 1458
    :cond_0
    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/af;->t:Lcom/vpadn/ads/DebugListener;

    invoke-interface {v0}, Lcom/vpadn/ads/DebugListener;->impFailed()V

    .line 1459
    :cond_1
    return-void
.end method

.method public onWebViewChangeToInvisible()V
    .locals 2

    .prologue
    .line 1230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/af;->h:Z

    .line 1231
    const-string v0, "onhide"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lvpadn/af;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1234
    return-void
.end method

.method public onWebViewChangeToVisible()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/af;->h:Z

    .line 1218
    const-string v0, "onshow"

    invoke-virtual {p0, v0, v1}, Lvpadn/af;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1221
    iget-boolean v0, p0, Lvpadn/af;->r:Z

    if-eqz v0, :cond_0

    .line 1222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/af;->r:Z

    .line 1223
    invoke-virtual {p0, v1}, Lvpadn/af;->dismissScreen(Ljava/lang/Object;)V

    .line 1225
    :cond_0
    return-void
.end method

.method public onWebViewLayoutChanged(IIII)V
    .locals 7

    .prologue
    .line 1269
    const-string v0, "VponBannerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWebViewLayoutChanged Left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    if-eqz v0, :cond_0

    .line 1273
    const-string v0, "VponBannerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "globalvisible Left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    int-to-float v0, p1

    iget-object v1, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/vpadn/ads/VpadnAdSize;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1275
    int-to-float v1, p2

    iget-object v2, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/vpadn/ads/VpadnAdSize;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1276
    sub-int v2, p3, p1

    int-to-float v2, v2

    iget-object v3, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/vpadn/ads/VpadnAdSize;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1277
    sub-int v3, p4, p2

    int-to-float v3, v3

    iget-object v4, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/vpadn/ads/VpadnAdSize;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1278
    const-string v4, "VponBannerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWebViewLayoutChanged: X1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Y1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " wDip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hDip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :try_start_0
    iget-object v4, p0, Lvpadn/af;->j:Lorg/json/JSONObject;

    const-string v5, "x"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1281
    iget-object v0, p0, Lvpadn/af;->j:Lorg/json/JSONObject;

    const-string v4, "y"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1282
    iget-object v0, p0, Lvpadn/af;->j:Lorg/json/JSONObject;

    const-string v1, "w"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1283
    iget-object v0, p0, Lvpadn/af;->j:Lorg/json/JSONObject;

    const-string v1, "h"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1284
    const-string v0, "ad_pos_change"

    iget-object v1, p0, Lvpadn/af;->j:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lvpadn/af;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1285
    :catch_0
    move-exception v0

    .line 1287
    const-string v1, "VponBannerController"

    const-string v2, "onWebViewLayoutChanged throw exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onWebViewLoadPageFinish(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1238
    const-string v0, "VponBannerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWebViewLoadPageFinish vponWebViewId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    iget-object v0, p0, Lvpadn/af;->v:Lvpadn/df;

    if-eqz v0, :cond_1

    const-string v0, "init"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1241
    iget-object v0, p0, Lvpadn/af;->v:Lvpadn/df;

    const-string v1, "init-finish"

    invoke-virtual {v0, v1}, Lvpadn/df;->setVponWebViewId(Ljava/lang/String;)V

    .line 1242
    const-string v0, "VponBannerController"

    const-string v1, "Load init html template finish"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1243
    :cond_1
    iget-object v0, p0, Lvpadn/af;->v:Lvpadn/df;

    if-eqz v0, :cond_2

    const-string v0, "init-finish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1246
    :cond_2
    const-string v0, "VponBannerController"

    const-string v1, "onWebViewLoadPageFinish -> showBanner"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    invoke-direct {p0}, Lvpadn/af;->B()V

    .line 1248
    invoke-direct {p0}, Lvpadn/af;->v()V

    goto :goto_0
.end method

.method public onWebViewReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWebViewReceivedError errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " des:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failingUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1295
    const-string v1, "VponBannerController"

    invoke-static {v1, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ERROR] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lvpadn/ba;->b(Ljava/lang/String;Z)V

    .line 1298
    const/4 v0, 0x0

    .line 1299
    if-nez p1, :cond_1

    .line 1300
    const-string v1, "VponBannerController"

    const-string v2, "webView is null in onWebViewReceivedError"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    .line 1318
    :goto_0
    invoke-virtual {p1}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1319
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lvpadn/af$16;

    invoke-direct {v1, p0}, Lvpadn/af$16;-><init>(Lvpadn/af;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1335
    :cond_0
    :goto_1
    return-void

    .line 1302
    :cond_1
    check-cast p1, Lvpadn/df;

    .line 1303
    const-string v0, "VponBannerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vponWebView ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR] vponWebView ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lvpadn/ba;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1327
    :cond_2
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lvpadn/af$17;

    invoke-direct {v1, p0}, Lvpadn/af$17;-><init>(Lvpadn/af;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public onWebViewSizeChanged(II)V
    .locals 2

    .prologue
    .line 1254
    const-string v0, "VponBannerController"

    const-string v1, "Call onWebViewSizeChanged"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v0, p0, Lvpadn/af;->w:Lvpadn/df;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1259
    iget-boolean v0, p0, Lvpadn/af;->B:Z

    if-nez v0, :cond_0

    .line 1260
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lvpadn/af;->b(Z)V

    .line 1265
    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    .line 2058
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 2059
    new-instance v1, Lvpadn/af$9;

    invoke-direct {v1, p0}, Lvpadn/af$9;-><init>(Lvpadn/af;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2066
    return-void
.end method

.method public playVideoOnNativePlayer(Lvpadn/p;Lvpadn/cr;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2071
    :try_start_0
    const-string v0, "VponBannerController"

    const-string v1, "===========>>Enter playVideoOnNativePlayer"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 2075
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/af;->i:Z

    .line 2076
    const-string v0, "mIsSentImpToServer"

    iget-boolean v1, p0, Lvpadn/af;->i:Z

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2077
    const-string v0, "adType"

    const-string v1, "playVideoWithNativePlayer"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2080
    const-string v1, "getControllerKey"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v1

    .line 2082
    invoke-virtual {v1, v0, p0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2084
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2085
    const-string v2, "getCallbackContextKey"

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    invoke-virtual {v1, v0, p1}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2088
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2089
    const-string v2, "getVideoDataKey"

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    invoke-virtual {v1, v0, p2}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2092
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lvpadn/af;->K:I

    .line 2093
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lvpadn/af;->J:I

    .line 2094
    const-string v0, "originalRequestedOrientation"

    iget v1, p0, Lvpadn/af;->K:I

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2095
    const-string v0, "beforeActivityOrientation"

    iget v1, p0, Lvpadn/af;->J:I

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2098
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2099
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2100
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 2101
    const-string v1, "statusBarHeight"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2104
    iget-object v0, p0, Lvpadn/af;->y:Lvpadn/ax;

    if-eqz v0, :cond_0

    .line 2105
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-static {v0}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bo;->b()Landroid/location/Location;

    move-result-object v4

    .line 2106
    if-eqz v4, :cond_0

    .line 2107
    iget-object v0, p0, Lvpadn/af;->y:Lvpadn/ax;

    invoke-virtual {v0}, Lvpadn/ax;->c()Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lvpadn/af;->y:Lvpadn/ax;

    invoke-virtual {v1}, Lvpadn/ax;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lvpadn/br;->a(Ljava/lang/Double;Ljava/lang/Double;DD)I

    move-result v0

    .line 2108
    const-string v1, "distance"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2116
    :cond_0
    const-string v0, "none"

    .line 2117
    invoke-virtual {p2}, Lvpadn/cr;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2118
    invoke-virtual {p2}, Lvpadn/cr;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2119
    const-string v0, "landscape"

    .line 2124
    :cond_1
    :goto_0
    const-string v1, "forceOrientation"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    const-string v1, "click_url"

    iget-object v0, p0, Lvpadn/af;->g:Ljava/util/Map;

    const-string v2, "url_type_click"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    const-string v0, "session_id"

    invoke-virtual {p0}, Lvpadn/af;->e()J

    move-result-wide v2

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2130
    const-string v0, "sequence_number"

    invoke-virtual {p0}, Lvpadn/af;->f()J

    move-result-wide v2

    invoke-virtual {v8, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2132
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    const-class v2, Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2133
    const/high16 v0, 0x10000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2134
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2136
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_5

    move v0, v6

    .line 2138
    :goto_1
    const-string v2, "isFullScreen"

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2140
    invoke-virtual {v1, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2141
    iget-object v0, p0, Lvpadn/af;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2143
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    if-eqz v0, :cond_2

    .line 2144
    iget-object v0, p0, Lvpadn/af;->C:Lvpadn/ao;

    invoke-interface {v0}, Lvpadn/ao;->onVponPresent()V

    .line 2147
    :cond_2
    iget-boolean v0, p0, Lvpadn/af;->D:Z

    if-eqz v0, :cond_3

    .line 2148
    invoke-direct {p0}, Lvpadn/af;->x()V

    .line 2149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/af;->U:Z

    .line 2155
    :cond_3
    :goto_2
    return-void

    .line 2121
    :cond_4
    const-string v0, "portrait"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    move v0, v7

    .line 2136
    goto :goto_1

    .line 2151
    :catch_0
    move-exception v0

    .line 2153
    const-string v1, "VponBannerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVideoOnNativePlayer throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public setUseCustomClose(Z)V
    .locals 1

    .prologue
    .line 205
    iput-boolean p1, p0, Lvpadn/af;->B:Z

    .line 206
    iget-boolean v0, p0, Lvpadn/af;->N:Z

    if-eqz v0, :cond_0

    .line 207
    iget-boolean v0, p0, Lvpadn/af;->B:Z

    invoke-direct {p0, v0}, Lvpadn/af;->c(Z)V

    .line 209
    :cond_0
    return-void
.end method
