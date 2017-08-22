.class public abstract Lvpadn/ae;
.super Ljava/lang/Object;
.source "AbstractVponController.java"

# interfaces
.implements Lvpadn/ag;
.implements Lvpadn/q;


# static fields
.field private static w:J


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field protected c:Lcom/vpadn/ads/VpadnAdSize;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Z

.field protected g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Z

.field protected i:Z

.field protected j:Lorg/json/JSONObject;

.field protected k:J

.field protected l:J

.field protected m:J

.field protected n:J

.field protected o:Ljava/lang/String;

.field protected p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected q:Lcom/vpadn/ads/VpadnAdRequest;

.field protected r:Z

.field protected s:Ljava/lang/String;

.field protected t:Lcom/vpadn/ads/DebugListener;

.field private final u:Ljava/util/concurrent/ExecutorService;

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lvpadn/p;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    const-wide/16 v0, 0x0

    sput-wide v0, Lvpadn/ae;->w:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v3, p0, Lvpadn/ae;->c:Lcom/vpadn/ads/VpadnAdSize;

    .line 59
    iput-object v3, p0, Lvpadn/ae;->e:Ljava/lang/String;

    .line 61
    iput-boolean v2, p0, Lvpadn/ae;->f:Z

    .line 63
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lvpadn/ae;->u:Ljava/util/concurrent/ExecutorService;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lvpadn/ae;->v:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lvpadn/ae;->g:Ljava/util/Map;

    .line 69
    iput-boolean v2, p0, Lvpadn/ae;->h:Z

    .line 70
    iput-boolean v2, p0, Lvpadn/ae;->i:Z

    .line 72
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lvpadn/ae;->j:Lorg/json/JSONObject;

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lvpadn/ae;->m:J

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lvpadn/ae;->n:J

    .line 80
    const-string v0, "GET"

    iput-object v0, p0, Lvpadn/ae;->o:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lvpadn/ae;->p:Ljava/util/List;

    .line 83
    iput-object v3, p0, Lvpadn/ae;->q:Lcom/vpadn/ads/VpadnAdRequest;

    .line 85
    iput-boolean v2, p0, Lvpadn/ae;->r:Z

    .line 86
    iput-object v3, p0, Lvpadn/ae;->s:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lvpadn/ae;->a:Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Lvpadn/ae;->h()V

    .line 115
    iget-object v0, p0, Lvpadn/ae;->a:Landroid/content/Context;

    invoke-static {v0}, Lvpadn/bf;->a(Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method protected static a()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 96
    sget-wide v2, Lvpadn/ae;->w:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lvpadn/ae;->w:J

    .line 107
    :goto_0
    return v0

    .line 101
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 102
    const-string v1, "AbstractVponController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accs info: sendAccountsToServerTimestamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lvpadn/ae;->w:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-wide v4, Lvpadn/ae;->w:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x5265c00

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 104
    sput-wide v2, Lvpadn/ae;->w:J

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 487
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    const-string v1, "user-agent"

    invoke-virtual {v0, v1}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lvpadn/ae;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(Mobile; vpadn-sdk-a-v4.6.5)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/ae;->e:Ljava/lang/String;

    .line 491
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    const-string v1, "user-agent"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lvpadn/ae;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_0
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    const-string v1, "user-agent"

    invoke-virtual {v0, v1}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lvpadn/ae;->e:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lvpadn/ae;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/vpadn/ads/DebugListener;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lvpadn/ae;->t:Lcom/vpadn/ads/DebugListener;

    .line 557
    return-void
.end method

.method public a(Lcom/vpadn/ads/VpadnAdSize;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lvpadn/ae;->c:Lcom/vpadn/ads/VpadnAdSize;

    .line 144
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)V
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lvpadn/ae;->b:Ljava/lang/String;

    .line 136
    return-void
.end method

.method protected a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 381
    if-eqz p2, :cond_0

    .line 382
    const-string v0, "AbstractVponController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Banner TriggerEvent eventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " retObj:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_0
    iget-object v0, p0, Lvpadn/ae;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 388
    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Lvpadn/ae;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 391
    if-eqz p2, :cond_1

    .line 392
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1, p2}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    move-object v1, v0

    .line 396
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lvpadn/w;->a(Z)V

    .line 398
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/p;

    invoke-virtual {v0, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    goto :goto_2

    .line 384
    :cond_0
    const-string v0, "AbstractVponController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Banner TriggerEvent eventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 394
    :cond_1
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    move-object v1, v0

    goto :goto_1

    .line 402
    :cond_2
    return-void
.end method

.method public addEventListener(Ljava/lang/String;ILvpadn/p;)V
    .locals 5

    .prologue
    .line 237
    :try_start_0
    const-string v0, "video_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    const-string v0, "AbstractVponController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video event cannot add to AbstractVponController.addEventListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "e"

    const-string v2, "add video EventType not supported!"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p3, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    const-string v0, "onhide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onshow"

    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ad_pos_change"

    .line 243
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onimpress"

    .line 244
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onclick_closebtn"

    .line 245
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 247
    const-string v0, "AbstractVponController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventType not supported! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "e"

    const-string v2, "add EventType not supported!"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p3, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "e"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addEventListener throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p3, v1}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 294
    :catch_1
    move-exception v1

    .line 295
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 252
    :cond_2
    :try_start_2
    iget-object v0, p0, Lvpadn/ae;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 253
    if-nez v0, :cond_3

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 255
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v1, p0, Lvpadn/ae;->v:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :goto_1
    const-string v0, "ad_pos_change"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 262
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    iget-object v2, p0, Lvpadn/ae;->j:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    .line 263
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/w;->a(Z)V

    .line 264
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    goto/16 :goto_0

    .line 258
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 265
    :cond_4
    const-string v0, "onshow"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 266
    iget-boolean v0, p0, Lvpadn/ae;->h:Z

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    .line 268
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/w;->a(Z)V

    .line 269
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 270
    const-string v0, "AbstractVponController"

    const-string v1, "IS SHOW!!"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 272
    :cond_5
    const-string v0, "onhide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 273
    iget-boolean v0, p0, Lvpadn/ae;->h:Z

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    .line 275
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/w;->a(Z)V

    .line 276
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 277
    const-string v0, "AbstractVponController"

    const-string v1, "IS HIDE!!"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 279
    :cond_6
    const-string v0, "onimpress"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-boolean v0, p0, Lvpadn/ae;->i:Z

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    .line 282
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/w;->a(Z)V

    .line 283
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 284
    const-string v0, "AbstractVponController"

    const-string v1, "IS IMPRESSION!!"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lvpadn/ae;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 120
    return-void
.end method

.method protected abstract b(Ljava/lang/Object;)V
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lvpadn/ae;->d:Ljava/lang/String;

    .line 152
    return-void
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 525
    .line 526
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 527
    if-lez v0, :cond_0

    .line 528
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    .line 530
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected c()V
    .locals 8

    .prologue
    .line 405
    iget-wide v0, p0, Lvpadn/ae;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lvpadn/ae;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lvpadn/ae;->a:Landroid/content/Context;

    invoke-static {v0}, Lvpadn/br;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 411
    iget-object v0, p0, Lvpadn/ae;->g:Ljava/util/Map;

    const-string v1, "url_type_appDetection"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 412
    if-eqz v0, :cond_2

    .line 413
    invoke-static {}, Lvpadn/br;->a()V

    .line 415
    :try_start_0
    const-string v1, "AbstractVponController"

    const-string v2, "call doAppDetection"

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v1, Lvpadn/ak;

    iget-object v2, p0, Lvpadn/ae;->o:Ljava/lang/String;

    iget-object v3, p0, Lvpadn/ae;->p:Ljava/util/List;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lvpadn/ae;->a:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lvpadn/ae;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-wide v6, p0, Lvpadn/ae;->k:J

    .line 421
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-wide v6, p0, Lvpadn/ae;->l:J

    .line 422
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v1, v0, v2, v3, v4}, Lvpadn/ak;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    .line 423
    invoke-static {v1}, Lvpadn/be;->a(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    const-string v1, "AbstractVponController"

    const-string v2, "sendAppDetectionRequestToServer throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 428
    :cond_2
    const-string v0, "AbstractVponController"

    const-string v1, "mUrlMap.get(VponControllerInterface.URL_TYPE_APPDETECTION) return null"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    :cond_3
    const-string v0, "AbstractVponController"

    const-string v1, "permission-checking is failed!!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected d(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 545
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 546
    if-nez v0, :cond_0

    .line 547
    const-string v0, "AbstractVponController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot covert file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to inputStream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lvpadn/bq;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 550
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 551
    return-object v1
.end method

.method protected d()V
    .locals 4

    .prologue
    .line 437
    invoke-static {}, Lvpadn/av;->a()Lvpadn/av;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Lvpadn/av;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lvpadn/ae;->k:J

    .line 439
    invoke-virtual {v0}, Lvpadn/av;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lvpadn/ae;->l:J

    .line 440
    return-void
.end method

.method protected e()J
    .locals 2

    .prologue
    .line 443
    iget-wide v0, p0, Lvpadn/ae;->k:J

    return-wide v0
.end method

.method protected f()J
    .locals 2

    .prologue
    .line 447
    iget-wide v0, p0, Lvpadn/ae;->l:J

    return-wide v0
.end method

.method protected g()Z
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lvpadn/ae;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 537
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 538
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    const/4 v0, 0x1

    .line 541
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lvpadn/ae;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lvpadn/ae;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 465
    :goto_0
    return-object v0

    .line 464
    :cond_0
    const-string v0, "AbstractVponController"

    const-string v1, "Call getActivity() return null, can change to call getContext()"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClickUrlAndRemoveClickUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lvpadn/ae;->g:Ljava/util/Map;

    const-string v1, "url_type_click"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lvpadn/ae;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getImpressionUrlAndRemoveImpressionUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lvpadn/ae;->g:Ljava/util/Map;

    const-string v1, "url_type_impression"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSdkParam()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 365
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 367
    :try_start_0
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    .line 368
    iget-object v2, p0, Lvpadn/ae;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lvpadn/au;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 370
    :try_start_1
    const-string v1, "sid"

    iget-wide v2, p0, Lvpadn/ae;->k:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 371
    const-string v1, "seq"

    iget-wide v2, p0, Lvpadn/ae;->l:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 376
    :goto_0
    return-object v0

    .line 373
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 374
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 373
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lvpadn/ae;->u:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public notifyToInVisible()V
    .locals 2

    .prologue
    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/ae;->h:Z

    .line 359
    const-string v0, "onhide"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lvpadn/ae;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 361
    return-void
.end method

.method public notifyToVisible()V
    .locals 2

    .prologue
    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/ae;->h:Z

    .line 350
    const-string v0, "onshow"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lvpadn/ae;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 352
    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 477
    const-string v0, "load_banner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    invoke-virtual {p0, p2}, Lvpadn/ae;->a(Ljava/lang/Object;)V

    .line 483
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 480
    :cond_1
    const-string v0, "load_banner_fail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p0, p2}, Lvpadn/ae;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeEventListener(Ljava/lang/String;ILvpadn/p;)V
    .locals 5

    .prologue
    .line 305
    :try_start_0
    const-string v0, "video_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "AbstractVponController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video event cannot remove to AbstractVponController.removeEventListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "e"

    const-string v2, "remove video EventType not supported!"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p3, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V

    .line 342
    :goto_0
    return-void

    .line 309
    :cond_0
    const-string v0, "onhide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "onshow"

    .line 310
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ad_pos_change"

    .line 311
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "onimpress"

    .line 312
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "onclick_closebtn"

    .line 313
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    const-string v0, "AbstractVponController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove EventType not supported! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "e"

    const-string v2, "remove EventType not supported!"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p3, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "e"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeEventListener throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p3, v1}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 337
    :catch_1
    move-exception v1

    .line 338
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 321
    :cond_1
    :try_start_2
    iget-object v0, p0, Lvpadn/ae;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    iget-object v0, p0, Lvpadn/ae;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 324
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 326
    iget-object v0, p0, Lvpadn/ae;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_2
    invoke-virtual {p3}, Lvpadn/p;->c()V

    .line 331
    :cond_3
    const-string v0, "AbstractVponController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find event type in event listenerMap to remove! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "e"

    const-string v2, "Cannot find event type in event listenerMap to remove!"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p3, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public setAppDetectionBlockList(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 219
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    :cond_0
    const-string v0, "AbstractVponController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appDetectionBlock\'s SIZE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvpadn/ae;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    return-void

    .line 224
    :cond_2
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 225
    const-string v0, "AbstractVponController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appDetectionBlock\'s SIZE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 228
    iget-object v2, p0, Lvpadn/ae;->p:Ljava/util/List;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAppDetectionMeth(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 212
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "POST"

    iput-object v0, p0, Lvpadn/ae;->o:Ljava/lang/String;

    .line 215
    :cond_0
    return-void
.end method

.method public setAppDetectionOn(J)V
    .locals 1

    .prologue
    .line 202
    iput-wide p1, p0, Lvpadn/ae;->n:J

    .line 203
    return-void
.end method

.method public setAppDetectionUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lvpadn/ae;->g:Ljava/util/Map;

    const-string v1, "url_type_appDetection"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public setBannerUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lvpadn/ae;->g:Ljava/util/Map;

    const-string v1, "url_type_banner"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lvpadn/ae;->g:Ljava/util/Map;

    const-string v1, "url_type_click"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method

.method public setImpressionUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lvpadn/ae;->g:Ljava/util/Map;

    const-string v1, "url_type_impression"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-void
.end method

.method public setRefreshTime(J)V
    .locals 1

    .prologue
    .line 172
    iput-wide p1, p0, Lvpadn/ae;->m:J

    .line 173
    return-void
.end method

.method public startActivityForResult(Lvpadn/r;Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lvpadn/ae;->a:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 453
    return-void
.end method
