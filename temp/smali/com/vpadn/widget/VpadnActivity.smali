.class public Lcom/vpadn/widget/VpadnActivity;
.super Landroid/app/Activity;
.source "VpadnActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lvpadn/ag;
.implements Lvpadn/ar;
.implements Lvpadn/at;
.implements Lvpadn/ct;
.implements Lvpadn/q;


# static fields
.field private static final O:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field private A:I

.field private B:Landroid/widget/LinearLayout;

.field private C:I

.field private D:Landroid/widget/Button;

.field private E:Landroid/widget/Button;

.field private F:Landroid/widget/Button;

.field private G:Landroid/widget/Button;

.field private final H:Ljava/util/concurrent/ExecutorService;

.field private I:Ljava/util/Map;
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

.field private J:Ljava/util/Map;
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

.field private K:Z

.field private L:Z

.field private M:J

.field private N:J

.field private P:Lvpadn/cs;

.field private Q:I

.field private R:Z

.field private S:Z

.field private T:I

.field protected a:Lvpadn/r;

.field protected b:Z

.field protected c:Lorg/json/JSONObject;

.field private d:Lvpadn/df;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Landroid/widget/ImageView;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 152
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/vpadn/widget/VpadnActivity;->O:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    .line 96
    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    .line 97
    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->g:Ljava/lang/String;

    .line 99
    iput-boolean v2, p0, Lcom/vpadn/widget/VpadnActivity;->h:Z

    .line 100
    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->i:Landroid/widget/ImageView;

    .line 101
    const-string v0, "invisible"

    iput-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->j:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->a:Lvpadn/r;

    .line 110
    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->q:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->r:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->s:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->t:Ljava/lang/String;

    .line 116
    iput-boolean v3, p0, Lcom/vpadn/widget/VpadnActivity;->u:Z

    .line 117
    iput-boolean v2, p0, Lcom/vpadn/widget/VpadnActivity;->v:Z

    .line 118
    iput-boolean v2, p0, Lcom/vpadn/widget/VpadnActivity;->w:Z

    .line 119
    const v0, 0xffffff

    iput v0, p0, Lcom/vpadn/widget/VpadnActivity;->x:I

    .line 121
    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->y:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->z:Landroid/widget/ProgressBar;

    .line 124
    iput v2, p0, Lcom/vpadn/widget/VpadnActivity;->A:I

    .line 125
    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->B:Landroid/widget/LinearLayout;

    .line 126
    iput v2, p0, Lcom/vpadn/widget/VpadnActivity;->C:I

    .line 128
    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->D:Landroid/widget/Button;

    .line 129
    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->E:Landroid/widget/Button;

    .line 130
    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->F:Landroid/widget/Button;

    .line 131
    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->G:Landroid/widget/Button;

    .line 138
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->H:Ljava/util/concurrent/ExecutorService;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->I:Ljava/util/Map;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->J:Ljava/util/Map;

    .line 144
    iput-boolean v2, p0, Lcom/vpadn/widget/VpadnActivity;->K:Z

    .line 145
    iput-boolean v2, p0, Lcom/vpadn/widget/VpadnActivity;->b:Z

    .line 146
    iput-boolean v2, p0, Lcom/vpadn/widget/VpadnActivity;->L:Z

    .line 147
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->c:Lorg/json/JSONObject;

    .line 158
    iput v2, p0, Lcom/vpadn/widget/VpadnActivity;->Q:I

    .line 159
    iput-boolean v2, p0, Lcom/vpadn/widget/VpadnActivity;->R:Z

    .line 160
    iput-boolean v3, p0, Lcom/vpadn/widget/VpadnActivity;->S:Z

    .line 161
    iput v2, p0, Lcom/vpadn/widget/VpadnActivity;->T:I

    return-void
.end method

.method static synthetic a(Lcom/vpadn/widget/VpadnActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/vpadn/widget/VpadnActivity;->i:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/vpadn/widget/VpadnActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/vpadn/widget/VpadnActivity;->z:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic a(Lcom/vpadn/widget/VpadnActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    if-nez v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 408
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 409
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 410
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 411
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/vpadn/widget/VpadnActivity;->A:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/vpadn/widget/VpadnActivity;->C:I

    sub-int/2addr v0, v2

    .line 412
    const-string v2, "VponActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "webViewWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " webViewHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHeightOfNavigationBar:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vpadn/widget/VpadnActivity;->C:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 415
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 416
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 417
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 419
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    const-string v1, "VponActivity"

    const-string v2, "addWebViewToRelativeLayout throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/vpadn/widget/VpadnActivity;Z)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/vpadn/widget/VpadnActivity;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2207
    sget-object v0, Lvpadn/cr;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2208
    invoke-direct {p0, p2}, Lcom/vpadn/widget/VpadnActivity;->f(Ljava/lang/String;)V

    .line 2216
    :cond_0
    :goto_0
    return-void

    .line 2209
    :cond_1
    sget-object v0, Lvpadn/cr;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2210
    invoke-direct {p0, p2}, Lcom/vpadn/widget/VpadnActivity;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 2211
    :cond_2
    sget-object v0, Lvpadn/cr;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2212
    invoke-direct {p0, p2}, Lcom/vpadn/widget/VpadnActivity;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 2213
    :cond_3
    sget-object v0, Lvpadn/cr;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2214
    invoke-direct {p0, p2}, Lcom/vpadn/widget/VpadnActivity;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 1531
    if-eqz p2, :cond_0

    .line 1532
    const-string v0, "VponActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VponActivity TriggerEvent eventType:"

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

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :goto_0
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->I:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1538
    if-eqz v0, :cond_2

    .line 1539
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->I:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1541
    if-eqz p2, :cond_1

    .line 1542
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1, p2}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    move-object v1, v0

    .line 1546
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lvpadn/w;->a(Z)V

    .line 1548
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1549
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/p;

    invoke-virtual {v0, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    goto :goto_2

    .line 1534
    :cond_0
    const-string v0, "VponActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VponActivity TriggerEvent eventType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1544
    :cond_1
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    move-object v1, v0

    goto :goto_1

    .line 1552
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/vpadn/widget/VpadnActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 677
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 678
    invoke-static {v1}, Lvpadn/bh;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 679
    invoke-static {p1, v1}, Lvpadn/bf;->a(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 681
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v2

    const-string v3, "user-agent"

    invoke-virtual {v2, v3}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 682
    if-eqz v2, :cond_0

    .line 683
    const-string v3, "VponActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userAgent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.useragent"

    invoke-interface {v3, v4, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 687
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 690
    invoke-static {p1, v1}, Lvpadn/bf;->b(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 692
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_1

    .line 693
    const-string v1, "VponActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>getStatusCode() != HttpStatus.SC_OK\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 694
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 693
    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :goto_0
    return v0

    .line 698
    :cond_1
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->g:Ljava/lang/String;

    .line 700
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 701
    const-string v1, "VponActivity"

    const-string v2, "StringUtils.isBlank(mHtml)"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 708
    :catch_0
    move-exception v1

    goto :goto_0

    .line 705
    :cond_2
    const-string v1, "VponActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "two part mHtml:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/vpadn/widget/VpadnActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 937
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 938
    if-nez v0, :cond_0

    .line 939
    const-string v0, "VponActivity"

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

    .line 940
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lvpadn/bq;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 942
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 943
    return-object v1
.end method

.method static synthetic b(Lcom/vpadn/widget/VpadnActivity;)Lvpadn/df;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->B:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity;->v:Z

    if-eqz v0, :cond_0

    .line 469
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/vpadn/widget/VpadnActivity$3;

    invoke-direct {v1, p0}, Lcom/vpadn/widget/VpadnActivity$3;-><init>(Lcom/vpadn/widget/VpadnActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 476
    :cond_0
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v4, -0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 299
    const-string v0, "VponActivity"

    const-string v3, ">>>>>>>>>Enter onCreate showSdkOpenWebApp!!"

    invoke-static {v0, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->y:Ljava/lang/String;

    .line 302
    const-string v0, "html"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->g:Ljava/lang/String;

    .line 303
    const-string v0, "backgroundColor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vpadn/widget/VpadnActivity;->x:I

    .line 304
    const-string v0, "isShowProgressBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity;->u:Z

    .line 305
    const-string v0, "isShowNavigationBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity;->v:Z

    .line 306
    const-string v0, "isUseWebViewLoadUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity;->w:Z

    .line 309
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->y:Ljava/lang/String;

    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 311
    iput-boolean v1, p0, Lcom/vpadn/widget/VpadnActivity;->w:Z

    move v0, v1

    .line 313
    :goto_0
    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->y:Ljava/lang/String;

    invoke-static {v3}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->g:Ljava/lang/String;

    invoke-static {v3}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 316
    iput-boolean v1, p0, Lcom/vpadn/widget/VpadnActivity;->w:Z

    move v0, v1

    .line 320
    :cond_0
    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 322
    new-instance v1, Lvpadn/df;

    const-string v3, "SdkOpenWebApp"

    invoke-direct {v1, v3, p0, p0}, Lvpadn/df;-><init>(Ljava/lang/String;Landroid/content/Context;Lvpadn/at;)V

    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    .line 323
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v1, v2}, Lvpadn/df;->setAcceptThirdPartyCookiesEnable(Z)V

    .line 324
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lvpadn/df;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    iget v3, p0, Lcom/vpadn/widget/VpadnActivity;->x:I

    invoke-virtual {v1, v3}, Lvpadn/df;->setBackgroundColor(I)V

    .line 329
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    new-instance v3, Lcom/vpadn/widget/VpadnActivity$1;

    invoke-direct {v3, p0}, Lcom/vpadn/widget/VpadnActivity$1;-><init>(Lcom/vpadn/widget/VpadnActivity;)V

    invoke-virtual {v1, v3}, Lvpadn/df;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 346
    iget-boolean v1, p0, Lcom/vpadn/widget/VpadnActivity;->v:Z

    if-eqz v1, :cond_1

    .line 348
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->c()V

    .line 352
    :cond_1
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->a()V

    .line 354
    iget-boolean v1, p0, Lcom/vpadn/widget/VpadnActivity;->u:Z

    if-eqz v1, :cond_2

    .line 356
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 360
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 362
    new-instance v3, Landroid/widget/ProgressBar;

    const v4, 0x101007a

    invoke-direct {v3, p0, v5, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->z:Landroid/widget/ProgressBar;

    .line 365
    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/vpadn/widget/VpadnActivity;->z:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    :cond_2
    iget-boolean v1, p0, Lcom/vpadn/widget/VpadnActivity;->h:Z

    if-nez v1, :cond_3

    .line 372
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->d()V

    .line 375
    :cond_3
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/vpadn/widget/VpadnActivity;->setContentView(Landroid/view/View;)V

    .line 378
    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity;->w:Z

    if-nez v0, :cond_5

    .line 390
    const-string v0, "VponActivity"

    const-string v1, "2 PART CALL asyncLoadHtmlToWebViewByUrl(true)"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p0, v2}, Lcom/vpadn/widget/VpadnActivity;->a(Z)V

    .line 400
    :cond_4
    :goto_1
    return-void

    .line 392
    :cond_5
    iget-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity;->w:Z

    if-eqz v0, :cond_6

    .line 393
    const-string v0, "VponActivity"

    const-string v1, "2 PART CALL mShowWebView.loadUrl(mUrl);"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/df;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 395
    :cond_6
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 396
    const-string v0, "VponActivity"

    const-string v1, "2 PART CALL mShowWebView.loadDataWithBaseURL;"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    const-string v1, "file:///android_asset/www/vpon"

    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->g:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lvpadn/df;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move v0, v2

    goto/16 :goto_0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 768
    const-string v0, "VponActivity"

    const-string v1, "redrawCloseIndicatorButton, but mRelativeLayout == null"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    if-eqz p1, :cond_2

    .line 774
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/vpadn/widget/VpadnActivity$6;

    invoke-direct {v1, p0}, Lcom/vpadn/widget/VpadnActivity$6;-><init>(Lcom/vpadn/widget/VpadnActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 786
    :cond_2
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 788
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/vpadn/widget/VpadnActivity$7;

    invoke-direct {v1, p0}, Lcom/vpadn/widget/VpadnActivity$7;-><init>(Lcom/vpadn/widget/VpadnActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/vpadn/widget/VpadnActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 12

    .prologue
    .line 480
    const-string v0, "VponActivity"

    const-string v1, "CALL createNaviationBar"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-wide/high16 v2, 0x3fb8000000000000L    # 0.09375

    .line 483
    const-wide v4, 0x3fb5555555555555L    # 0.08333333333333333

    .line 484
    const-wide v6, 0x40003d980f6603daL    # 2.030075187969925

    .line 486
    const/4 v0, 0x0

    .line 487
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 488
    const/4 v8, 0x2

    if-ne v1, v8, :cond_0

    .line 489
    const/4 v0, 0x1

    .line 492
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->B:Landroid/widget/LinearLayout;

    .line 493
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->D:Landroid/widget/Button;

    .line 494
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->E:Landroid/widget/Button;

    .line 495
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->F:Landroid/widget/Button;

    .line 496
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->G:Landroid/widget/Button;

    .line 499
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 501
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v8

    .line 502
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v9

    .line 506
    if-eqz v0, :cond_4

    .line 507
    int-to-double v0, v8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 511
    :goto_0
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 512
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 517
    div-int/lit8 v1, v9, 0x4

    .line 518
    int-to-double v2, v1

    div-double/2addr v2, v6

    double-to-int v2, v2

    .line 519
    if-le v2, v0, :cond_1

    .line 520
    const-string v1, "VponActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(buttonHeight > navigationBarLayoutHeight) buttonHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " navigationBarLayoutHeight"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    int-to-double v2, v0

    mul-double/2addr v2, v6

    double-to-int v1, v2

    move v2, v0

    .line 524
    :cond_1
    const-string v3, "VponActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " screenHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v3, "VponActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "navigationBarLayoutHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " buttonWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " buttonHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v3, ""

    .line 530
    const-string v3, "/vpon_bg.png"

    .line 531
    iget-object v4, p0, Lcom/vpadn/widget/VpadnActivity;->B:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 532
    iget-object v4, p0, Lcom/vpadn/widget/VpadnActivity;->B:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3}, Lcom/vpadn/widget/VpadnActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 534
    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->D:Landroid/widget/Button;

    const/16 v4, 0x3df

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setId(I)V

    .line 535
    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->D:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 536
    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->D:Landroid/widget/Button;

    const-string v4, "/vpon_close.png"

    invoke-direct {p0, v4}, Lcom/vpadn/widget/VpadnActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 538
    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->E:Landroid/widget/Button;

    const/16 v4, 0x3e0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setId(I)V

    .line 539
    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->E:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 540
    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->E:Landroid/widget/Button;

    const-string v4, "/vpon_prev.png"

    invoke-direct {p0, v4}, Lcom/vpadn/widget/VpadnActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 542
    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->F:Landroid/widget/Button;

    const/16 v4, 0x3e1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setId(I)V

    .line 543
    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->F:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 544
    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->F:Landroid/widget/Button;

    const-string v4, "/vpon_next.png"

    invoke-direct {p0, v4}, Lcom/vpadn/widget/VpadnActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 546
    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->G:Landroid/widget/Button;

    const/16 v4, 0x3e2

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setId(I)V

    .line 547
    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->G:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 548
    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->G:Landroid/widget/Button;

    const-string v4, "/vpon_opennew.png"

    invoke-direct {p0, v4}, Lcom/vpadn/widget/VpadnActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    int-to-double v4, v9

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    div-double/2addr v4, v6

    int-to-double v6, v1

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 551
    sub-int v3, v0, v2

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    .line 553
    const-string v3, "VponActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buttonMargins:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-wide/16 v8, 0x0

    cmpg-double v3, v6, v8

    if-gez v3, :cond_2

    .line 555
    const-wide/16 v6, 0x0

    .line 557
    :cond_2
    const-wide/16 v8, 0x0

    cmpg-double v3, v4, v8

    if-gez v3, :cond_3

    .line 558
    const-wide/16 v4, 0x0

    .line 561
    :cond_3
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 562
    double-to-int v8, v4

    double-to-int v9, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 564
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 565
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v10

    double-to-int v1, v4

    double-to-int v2, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v8, v1, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 567
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->D:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->E:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->F:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->G:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    new-instance v1, Lcom/vpadn/widget/VpadnActivity$4;

    invoke-direct {v1, p0}, Lcom/vpadn/widget/VpadnActivity$4;-><init>(Lcom/vpadn/widget/VpadnActivity;)V

    .line 609
    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->D:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 610
    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->E:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 611
    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->F:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 612
    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->G:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 614
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->B:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->D:Landroid/widget/Button;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->B:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->E:Landroid/widget/Button;

    invoke-virtual {v1, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->B:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->F:Landroid/widget/Button;

    invoke-virtual {v1, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->B:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->G:Landroid/widget/Button;

    invoke-virtual {v1, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 622
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 623
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 624
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 625
    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    iput v0, p0, Lcom/vpadn/widget/VpadnActivity;->C:I

    .line 628
    return-void

    .line 509
    :cond_4
    int-to-double v0, v8

    mul-double/2addr v0, v4

    double-to-int v0, v0

    goto/16 :goto_0
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 631
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->y:Ljava/lang/String;

    .line 632
    const-string v0, "html"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->g:Ljava/lang/String;

    .line 635
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    const-string v0, "VponActivity"

    const-string v1, "show interstitial ad, but mHtml is NULL!!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->finish()V

    .line 673
    :goto_0
    return-void

    .line 640
    :cond_0
    const-string v0, "VponActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showInterstitialAd Html: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    new-instance v0, Lvpadn/df;

    const-string v2, "InterstitialAdWebView(new Activity)"

    invoke-direct {v0, v2, p0, p0}, Lvpadn/df;-><init>(Ljava/lang/String;Landroid/content/Context;Lvpadn/at;)V

    iput-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    .line 643
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lvpadn/df;->setAcceptThirdPartyCookiesEnable(Z)V

    .line 644
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lvpadn/df;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 650
    const-string v0, "backgroundColor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    const-string v0, "backgroundColor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 655
    :goto_1
    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v2, v0}, Lvpadn/df;->setBackgroundColor(I)V

    .line 657
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    sget-object v3, Lcom/vpadn/widget/VpadnActivity;->O:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/vpadn/widget/VpadnActivity$5;

    invoke-direct {v3, p0}, Lcom/vpadn/widget/VpadnActivity$5;-><init>(Lcom/vpadn/widget/VpadnActivity;)V

    .line 665
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    const-string v4, "inst_close_button_delay"

    invoke-virtual {v0, v4}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    .line 659
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 668
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/vpadn/widget/VpadnActivity;->setContentView(Landroid/view/View;)V

    .line 672
    invoke-virtual {p0, v1}, Lcom/vpadn/widget/VpadnActivity;->a(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 653
    goto :goto_1
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1171
    const-string v0, "VponActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current send imp policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iput-boolean v3, p0, Lcom/vpadn/widget/VpadnActivity;->b:Z

    .line 1173
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->J:Ljava/util/Map;

    const-string v1, "url_type_impression"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1174
    if-eqz v0, :cond_0

    .line 1175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&policy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1176
    const-string v1, "VponActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------->>>[interstitial] Send impression to server impressionUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :try_start_0
    new-instance v1, Lvpadn/am;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v4}, Lvpadn/df;->getVponUserAgent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v0, v2}, Lvpadn/am;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1179
    invoke-static {v1}, Lvpadn/be;->a(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    :goto_0
    return-void

    .line 1180
    :catch_0
    move-exception v0

    .line 1181
    const-string v1, "VponActivity"

    const-string v2, "sendImpressionToServer throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1184
    :cond_0
    const-string v0, "VponActivity"

    const-string v1, "Cannot get interstitial impression URL"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic d(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->B:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 809
    const-string v0, "VponActivity"

    const-string v1, "call createCloseButton()"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity;->R:Z

    if-eqz v0, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 814
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->i:Landroid/widget/ImageView;

    .line 815
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 817
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    const-string v1, "inst_close_button_size"

    invoke-virtual {v0, v1}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "close_btn_big"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 818
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->i:Landroid/widget/ImageView;

    const-string v1, "/vpon_video2_close2.png"

    invoke-direct {p0, v1}, Lcom/vpadn/widget/VpadnActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 823
    :goto_1
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/vpadn/widget/VpadnActivity$8;

    invoke-direct {v1, p0}, Lcom/vpadn/widget/VpadnActivity$8;-><init>(Lcom/vpadn/widget/VpadnActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    invoke-static {p0}, Lvpadn/bm;->i(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 835
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 836
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 840
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 841
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    const-string v0, "visible"

    iput-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->j:Ljava/lang/String;

    goto :goto_0

    .line 820
    :cond_2
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->i:Landroid/widget/ImageView;

    const-string v1, "/vpon_video2_close.png"

    invoke-direct {p0, v1}, Lcom/vpadn/widget/VpadnActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1972
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v1

    .line 1973
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/p;

    .line 1974
    if-eqz v0, :cond_0

    .line 1975
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1977
    :try_start_0
    const-string v3, "e"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1981
    :goto_0
    invoke-virtual {v0, v2}, Lvpadn/p;->b(Lorg/json/JSONObject;)V

    .line 1982
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lvpadn/aw;->b(Ljava/lang/String;)V

    .line 1985
    :cond_0
    return-void

    .line 1978
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static synthetic e(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 849
    const-string v0, "VponActivity"

    const-string v1, "doClose()"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/df;->b(Z)V

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->f()V

    .line 858
    :cond_1
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->printLogForImpPolicy()V

    .line 859
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->finish()V

    .line 860
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2220
    :try_start_0
    new-instance v0, Lvpadn/df;

    const-string v1, "videoWebView"

    invoke-direct {v0, v1, p0, p0}, Lvpadn/df;-><init>(Ljava/lang/String;Landroid/content/Context;Lvpadn/at;)V

    iput-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    .line 2221
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/df;->setAcceptThirdPartyCookiesEnable(Z)V

    .line 2222
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/df;->setVerticalScrollBarEnabled(Z)V

    .line 2223
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Lvpadn/df;->setBackgroundColor(I)V

    .line 2224
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvpadn/df;->setFocusable(Z)V

    .line 2225
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0, p1}, Lvpadn/df;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2229
    :goto_0
    return-void

    .line 2226
    :catch_0
    move-exception v0

    .line 2227
    const-string v1, "VponActivity"

    const-string v2, "createVideoWebViewAndLoadUrl throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 1709
    new-instance v0, Lcom/vpadn/widget/VpadnActivity$13;

    invoke-direct {v0, p0}, Lcom/vpadn/widget/VpadnActivity$13;-><init>(Lcom/vpadn/widget/VpadnActivity;)V

    .line 1721
    new-instance v1, Lvpadn/cp;

    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    .line 1722
    invoke-virtual {v3}, Lvpadn/cs;->q()Lvpadn/cr;

    move-result-object v3

    invoke-virtual {v3}, Lvpadn/cr;->L()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, p0, v0, v3}, Lvpadn/cp;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/List;)V

    .line 1724
    new-instance v0, Lvpadn/bv;

    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-direct {v0, v2, v1}, Lvpadn/bv;-><init>(Lvpadn/cs;Lvpadn/by;)V

    .line 1725
    invoke-virtual {v0}, Lvpadn/bv;->performClick()Z

    .line 1726
    return-void
.end method

.method static synthetic f(Lcom/vpadn/widget/VpadnActivity;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->c()V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2232
    invoke-direct {p0, p1}, Lcom/vpadn/widget/VpadnActivity;->e(Ljava/lang/String;)V

    .line 2233
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    sget-object v2, Lcom/vpadn/widget/VpadnActivity;->O:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2234
    return-void
.end method

.method static synthetic g(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->D:Landroid/widget/Button;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1961
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v1

    .line 1962
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/p;

    .line 1963
    if-eqz v0, :cond_0

    .line 1964
    invoke-virtual {v0}, Lvpadn/p;->c()V

    .line 1965
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lvpadn/aw;->b(Ljava/lang/String;)V

    .line 1968
    :cond_0
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2237
    invoke-direct {p0, p1}, Lcom/vpadn/widget/VpadnActivity;->e(Ljava/lang/String;)V

    .line 2238
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->i()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2239
    return-void
.end method

.method static synthetic h(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->E:Landroid/widget/Button;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 2090
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    if-eqz v0, :cond_0

    .line 2092
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    if-nez v0, :cond_1

    .line 2113
    :cond_0
    :goto_0
    return-void

    .line 2096
    :cond_1
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->q()Lvpadn/cr;

    move-result-object v0

    .line 2097
    if-eqz v0, :cond_2

    sget-object v1, Lvpadn/cr$b;->b:Lvpadn/cr$b;

    invoke-virtual {v0, v1}, Lvpadn/cr;->a(Lvpadn/cr$b;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2098
    :cond_2
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2099
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0, v2}, Lvpadn/df;->setVisibility(I)V

    goto :goto_0

    .line 2104
    :cond_3
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v1}, Lvpadn/df;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 2105
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lvpadn/df;->setVisibility(I)V

    .line 2107
    :cond_4
    invoke-virtual {v0}, Lvpadn/cr;->e()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvpadn/cr;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2108
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->j()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvpadn/df;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2109
    :cond_5
    invoke-virtual {v0}, Lvpadn/cr;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lvpadn/cr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2110
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->i()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvpadn/df;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2242
    invoke-direct {p0, p1}, Lcom/vpadn/widget/VpadnActivity;->e(Ljava/lang/String;)V

    .line 2243
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->j()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2244
    return-void
.end method

.method static synthetic i(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->F:Landroid/widget/Button;

    return-object v0
.end method

.method private i()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 2252
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2254
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2255
    const/4 v1, 0x2

    const v2, 0x8235

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2256
    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2247
    invoke-direct {p0, p1}, Lcom/vpadn/widget/VpadnActivity;->e(Ljava/lang/String;)V

    .line 2248
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    sget-object v2, Lcom/vpadn/widget/VpadnActivity;->O:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2249
    return-void
.end method

.method static synthetic j(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->G:Landroid/widget/Button;

    return-object v0
.end method

.method private j()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 2260
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2262
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2263
    const/4 v1, 0x3

    const v2, 0x8235

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2264
    return-object v0
.end method

.method private k()Lvpadn/ag;
    .locals 2

    .prologue
    .line 2293
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    .line 2294
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2295
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2296
    if-eqz v0, :cond_0

    .line 2297
    check-cast v0, Lvpadn/ag;

    .line 2301
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic k(Lcom/vpadn/widget/VpadnActivity;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity;->h:Z

    return v0
.end method

.method private l()Lvpadn/ag;
    .locals 2

    .prologue
    .line 2305
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v1

    .line 2307
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2308
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->q:Ljava/lang/String;

    .line 2312
    :goto_0
    if-eqz v0, :cond_1

    .line 2313
    invoke-virtual {v1, v0}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2314
    if-eqz v0, :cond_1

    .line 2315
    check-cast v0, Lvpadn/ag;

    .line 2319
    :goto_1
    return-object v0

    .line 2310
    :cond_0
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    goto :goto_0

    .line 2319
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic l(Lcom/vpadn/widget/VpadnActivity;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->d()V

    return-void
.end method

.method static synthetic m(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/vpadn/widget/VpadnActivity;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->e()V

    return-void
.end method

.method static synthetic o(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->z:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic p(Lcom/vpadn/widget/VpadnActivity;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->a()V

    return-void
.end method

.method static synthetic q(Lcom/vpadn/widget/VpadnActivity;)Lvpadn/ag;
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->l()Lvpadn/ag;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1989
    .line 1992
    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->m:Ljava/lang/String;

    const-string v3, "landscape"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    move v1, v0

    .line 2016
    :goto_0
    const-string v0, "getVideoDataKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->s:Ljava/lang/String;

    .line 2017
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v3

    .line 2018
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->s:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2019
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->s:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2020
    if-nez v0, :cond_4

    .line 2021
    const-string v0, "VponActivity"

    const-string v1, "cannot get videoData"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->finish()V

    .line 2044
    :goto_1
    return-void

    .line 1996
    :cond_0
    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->m:Ljava/lang/String;

    const-string v3, "portrait"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    move v2, v0

    .line 1998
    goto :goto_0

    .line 2000
    :cond_1
    iget v2, p0, Lcom/vpadn/widget/VpadnActivity;->k:I

    if-nez v2, :cond_2

    .line 2003
    invoke-virtual {p0, v4}, Lcom/vpadn/widget/VpadnActivity;->setRequestedOrientation(I)V

    move v1, v0

    move v2, v0

    goto :goto_0

    .line 2005
    :cond_2
    iget v2, p0, Lcom/vpadn/widget/VpadnActivity;->k:I

    if-ne v2, v1, :cond_3

    .line 2008
    invoke-virtual {p0, v4}, Lcom/vpadn/widget/VpadnActivity;->setRequestedOrientation(I)V

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v0

    .line 2012
    goto :goto_0

    .line 2025
    :cond_4
    check-cast v0, Lvpadn/cr;

    .line 2026
    iget-wide v4, p0, Lcom/vpadn/widget/VpadnActivity;->M:J

    invoke-virtual {v0, v4, v5}, Lvpadn/cr;->a(J)V

    .line 2027
    iget-wide v4, p0, Lcom/vpadn/widget/VpadnActivity;->N:J

    invoke-virtual {v0, v4, v5}, Lvpadn/cr;->b(J)V

    .line 2028
    invoke-static {}, Lvpadn/bn;->a()Ljava/lang/String;

    move-result-object v4

    .line 2029
    if-eqz v4, :cond_5

    .line 2030
    invoke-virtual {v0, v4}, Lvpadn/cr;->g(Ljava/lang/String;)V

    .line 2032
    :cond_5
    iget-object v4, p0, Lcom/vpadn/widget/VpadnActivity;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lvpadn/aw;->b(Ljava/lang/String;)V

    .line 2034
    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Lvpadn/cr;->o()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2035
    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Lcom/vpadn/widget/VpadnActivity;->setContentView(Landroid/view/View;)V

    .line 2036
    new-instance v3, Lvpadn/cs;

    invoke-direct {v3, p0, p0, v0}, Lvpadn/cs;-><init>(Lcom/vpadn/widget/VpadnActivity;Lvpadn/ct;Lvpadn/cr;)V

    iput-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    .line 2037
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0, v2, v1}, Lvpadn/cs;->a(ZZ)V

    .line 2038
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->g()V

    goto :goto_1

    .line 2040
    :cond_6
    const-string v0, "VponActivity"

    const-string v1, "cannot get mGetVideoDataKey"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    const-string v0, "PlayVideoEx failed, Cannot get mGetVideoDataKey"

    invoke-direct {p0, v0}, Lcom/vpadn/widget/VpadnActivity;->d(Ljava/lang/String;)V

    .line 2042
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->finish()V

    goto :goto_1
.end method

.method a(Z)V
    .locals 3

    .prologue
    .line 428
    :try_start_0
    new-instance v1, Lcom/vpadn/widget/VpadnActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/vpadn/widget/VpadnActivity$2;-><init>(Lcom/vpadn/widget/VpadnActivity;Z)V

    .line 456
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 457
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 464
    :goto_0
    return-void

    .line 459
    :cond_0
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    const-string v1, "VponActivity"

    const-string v2, "asyncLoadHtmlToWebViewByUrl throw Exception:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addEventListener(Ljava/lang/String;ILvpadn/p;)V
    .locals 5

    .prologue
    .line 1406
    :try_start_0
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    if-eqz v0, :cond_1

    const-string v0, "video_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1407
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0, p1, p2, p3}, Lvpadn/cs;->a(Ljava/lang/String;ILvpadn/p;)V

    .line 1476
    :cond_0
    :goto_0
    return-void

    .line 1409
    :cond_1
    const-string v0, "onhide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "onshow"

    .line 1410
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ad_pos_change"

    .line 1411
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "onimpress"

    .line 1412
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "onclick_closebtn"

    .line 1413
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1415
    const-string v0, "video_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1416
    const-string v0, "VponActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoEventType add not supported! while mVideoManager is null. video event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "e"

    const-string v2, "VideoEventType add not supported!"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p3, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1467
    :catch_0
    move-exception v0

    .line 1469
    :try_start_1
    const-string v1, "VponActivity"

    const-string v2, "addEventListener  throw Exception:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1470
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "e"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addEventListener throw Exception:"

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

    invoke-virtual {p3, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1471
    :catch_1
    move-exception v0

    .line 1472
    const-string v1, "VponActivity"

    const-string v2, "addEventListener callbackContext throw Exception:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1420
    :cond_2
    :try_start_2
    const-string v0, "VponActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventType add not supported! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "e"

    const-string v2, "EventType add not supported!"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p3, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1427
    :cond_3
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->I:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1428
    if-nez v0, :cond_4

    .line 1429
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1430
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->I:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    :goto_1
    const-string v0, "ad_pos_change"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1437
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->c:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    .line 1438
    const-string v1, "VponActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send ad_position_change:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->c:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/w;->a(Z)V

    .line 1440
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    goto/16 :goto_0

    .line 1433
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1441
    :cond_5
    const-string v0, "onshow"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1442
    iget-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity;->K:Z

    if-eqz v0, :cond_0

    .line 1443
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    .line 1444
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/w;->a(Z)V

    .line 1445
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 1446
    const-string v0, "VponActivity"

    const-string v1, "VponActivity IS SHOW!!"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1448
    :cond_6
    const-string v0, "onhide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1449
    iget-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity;->K:Z

    if-nez v0, :cond_0

    .line 1450
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    .line 1451
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/w;->a(Z)V

    .line 1452
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 1453
    const-string v0, "VponActivity"

    const-string v1, "VponActivity IS HIDE!!"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1455
    :cond_7
    const-string v0, "onimpress"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    iget-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity;->L:Z

    if-nez v0, :cond_0

    .line 1458
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    .line 1459
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/w;->a(Z)V

    .line 1460
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 1461
    const-string v0, "VponActivity"

    const-string v1, "VponActivity IS IMPRESSION!!"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public cacheVideoByUrl(Lvpadn/p;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2279
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "e"

    const-string v2, "Cannot call cacheVideoByUrl while interstitial .show mehtod had called"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2282
    :goto_0
    const-string v0, "VponActivity"

    const-string v1, "Cannot call cacheVideoByUrl while interstitial .show mehtod had called"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    return-void

    .line 2280
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cleanPauseLocationsList()V
    .locals 2

    .prologue
    .line 1903
    const-string v0, "VponActivity"

    const-string v1, "Call cleanPauseLocationsList"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :try_start_0
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->q()Lvpadn/cr;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cr;->O()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1909
    :goto_0
    return-void

    .line 1906
    :catch_0
    move-exception v0

    .line 1907
    const-string v0, "VponActivity"

    const-string v1, "Call cleanPauseLocationsList throw Exception"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public controlNativeVideoPlayer(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 1

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    if-eqz v0, :cond_0

    .line 2288
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0, p1, p2, p3}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)V

    .line 2290
    :cond_0
    return-void
.end method

.method public dismissScreen(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1335
    return-void
.end method

.method public doCloseExpandForSDKPlugIn()V
    .locals 2

    .prologue
    .line 891
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/vpadn/widget/VpadnActivity$9;

    invoke-direct {v1, p0}, Lcom/vpadn/widget/VpadnActivity$9;-><init>(Lcom/vpadn/widget/VpadnActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 896
    return-void
.end method

.method public doLockBackKeyForSDKPlugIn(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1737
    const-string v0, "InterstitialAdWebView(new Activity)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1738
    iput v1, p0, Lcom/vpadn/widget/VpadnActivity;->T:I

    .line 1742
    :cond_0
    :goto_0
    return-void

    .line 1739
    :cond_1
    const-string v0, "videoWebView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    if-eqz v0, :cond_0

    .line 1740
    iput v1, p0, Lcom/vpadn/widget/VpadnActivity;->T:I

    goto :goto_0
.end method

.method public doUnLockBackKeyForSDKPlugIn(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1729
    const-string v0, "InterstitialAdWebView(new Activity)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1730
    iput v1, p0, Lcom/vpadn/widget/VpadnActivity;->T:I

    .line 1734
    :cond_0
    :goto_0
    return-void

    .line 1731
    :cond_1
    const-string v0, "videoWebView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    if-eqz v0, :cond_0

    .line 1732
    iput v1, p0, Lcom/vpadn/widget/VpadnActivity;->T:I

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 980
    return-object p0
.end method

.method public getActivityRootRelativeLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getClickUrlAndRemoveClickUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->J:Ljava/util/Map;

    const-string v1, "url_type_click"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1374
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v1

    .line 1375
    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1376
    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1377
    if-eqz v1, :cond_0

    instance-of v2, v1, Lvpadn/ag;

    if-eqz v2, :cond_0

    .line 1378
    check-cast v1, Lvpadn/ag;

    .line 1379
    invoke-interface {v1}, Lvpadn/ag;->getClickUrlAndRemoveClickUrl()Ljava/lang/String;

    .line 1382
    :cond_0
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 985
    return-object p0
.end method

.method public getImpressionUrlAndRemoveImpressionUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->J:Ljava/util/Map;

    const-string v1, "url_type_impression"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1388
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vpadn/widget/VpadnActivity;->b:Z

    .line 1389
    const-string v1, "onimpress"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/vpadn/widget/VpadnActivity;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1391
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v1

    .line 1392
    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1393
    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1394
    if-eqz v1, :cond_0

    instance-of v2, v1, Lvpadn/ag;

    if-eqz v2, :cond_0

    .line 1395
    check-cast v1, Lvpadn/ag;

    .line 1396
    invoke-interface {v1}, Lvpadn/ag;->getImpressionUrlAndRemoveImpressionUrl()Ljava/lang/String;

    .line 1399
    :cond_0
    return-object v0
.end method

.method public getSdkParam()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 1297
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1299
    :try_start_0
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    .line 1300
    invoke-virtual {v0, p0, v1}, Lvpadn/au;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1302
    :try_start_1
    const-string v1, "sid"

    iget-wide v2, p0, Lcom/vpadn/widget/VpadnActivity;->M:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1303
    const-string v1, "seq"

    iget-wide v2, p0, Lcom/vpadn/widget/VpadnActivity;->N:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1308
    :goto_0
    return-object v0

    .line 1305
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 1306
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1305
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->H:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public hasRegisterClickCloseBtnEvent()Z
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->I:Ljava/util/Map;

    const-string v1, "onclick_closebtn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 881
    const/4 v0, 0x1

    .line 883
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leaveApplicationFromVponActivity()V
    .locals 2

    .prologue
    .line 1785
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    .line 1786
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1787
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1788
    if-eqz v0, :cond_0

    instance-of v1, v0, Lvpadn/ag;

    if-eqz v1, :cond_0

    .line 1789
    check-cast v0, Lvpadn/ag;

    .line 1790
    invoke-interface {v0}, Lvpadn/ag;->leaveApplicationFromVponActivity()V

    .line 1794
    :cond_0
    return-void
.end method

.method public notifyClickFailed()V
    .locals 1

    .prologue
    .line 2337
    :try_start_0
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->k()Lvpadn/ag;

    move-result-object v0

    .line 2338
    if-eqz v0, :cond_0

    .line 2339
    invoke-interface {v0}, Lvpadn/ag;->notifyClickFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2343
    :cond_0
    :goto_0
    return-void

    .line 2341
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyClickOk()V
    .locals 1

    .prologue
    .line 2326
    :try_start_0
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->k()Lvpadn/ag;

    move-result-object v0

    .line 2327
    if-eqz v0, :cond_0

    .line 2328
    invoke-interface {v0}, Lvpadn/ag;->notifyClickOk()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2332
    :cond_0
    :goto_0
    return-void

    .line 2330
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyImpressionFailed()V
    .locals 1

    .prologue
    .line 2359
    :try_start_0
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->k()Lvpadn/ag;

    move-result-object v0

    .line 2360
    if-eqz v0, :cond_0

    .line 2361
    invoke-interface {v0}, Lvpadn/ag;->notifyImpressionFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2365
    :cond_0
    :goto_0
    return-void

    .line 2363
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyImpressionOk()V
    .locals 1

    .prologue
    .line 2348
    :try_start_0
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->k()Lvpadn/ag;

    move-result-object v0

    .line 2349
    if-eqz v0, :cond_0

    .line 2350
    invoke-interface {v0}, Lvpadn/ag;->notifyImpressionOk()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2354
    :cond_0
    :goto_0
    return-void

    .line 2352
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyToInVisible()V
    .locals 0

    .prologue
    .line 1325
    return-void
.end method

.method public notifyToVisible()V
    .locals 0

    .prologue
    .line 1320
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 948
    const-string v0, "VponActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------->>>requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->a:Lvpadn/r;

    .line 952
    if-eqz v0, :cond_0

    .line 953
    const-string v1, "VponActivity"

    const-string v2, "--------call callback.onActivityResult"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-virtual {v0, p1, p2, p3}, Lvpadn/r;->onActivityResult(IILandroid/content/Intent;)V

    .line 958
    :goto_0
    return-void

    .line 956
    :cond_0
    const-string v0, "VponActivity"

    const-string v1, "--------callback == null"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    const-string v1, "playVideoWithNativePlayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1634
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->hasRegisterClickCloseBtnEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1635
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->triggerClickCloseBtnEvent()V

    .line 1701
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1639
    :cond_1
    iget v0, p0, Lcom/vpadn/widget/VpadnActivity;->T:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1641
    :pswitch_1
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->q()Lvpadn/cr;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cr;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1642
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->s()Lvpadn/bv;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1643
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->s()Lvpadn/bv;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bv;->performClick()Z

    .line 1644
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1647
    :cond_2
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->q()Lvpadn/cr;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cr;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->r()Lvpadn/bv;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->q()Lvpadn/cr;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cr;->A()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1649
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->r()Lvpadn/bv;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bv;->performClick()Z

    .line 1653
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 1651
    :cond_3
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->f()V

    goto :goto_1

    .line 1656
    :cond_4
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->r()Lvpadn/bv;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->q()Lvpadn/cr;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cr;->A()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1657
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->r()Lvpadn/bv;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bv;->performClick()Z

    .line 1661
    :goto_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 1659
    :cond_5
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->f()V

    goto :goto_2

    .line 1667
    :pswitch_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto/16 :goto_0

    .line 1670
    :cond_6
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1671
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->hasRegisterClickCloseBtnEvent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1672
    const-string v0, "VponActivity"

    const-string v1, "hasRegisterClickCloseBtnEvent"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->triggerClickCloseBtnEvent()V

    goto/16 :goto_0

    .line 1677
    :cond_7
    iget v0, p0, Lcom/vpadn/widget/VpadnActivity;->T:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 1679
    :pswitch_3
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    .line 1680
    const-string v1, "inst_lock_back_key"

    invoke-virtual {v0, v1}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1681
    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1682
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->j:Ljava/lang/String;

    const-string v1, "visible"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1684
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    goto/16 :goto_0

    .line 1686
    :cond_8
    const-string v0, "VponActivity"

    const-string v1, "disable general interstitial back key."

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1689
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto/16 :goto_0

    .line 1695
    :pswitch_4
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto/16 :goto_0

    .line 1699
    :cond_a
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto/16 :goto_0

    .line 1639
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1677
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 900
    const-string v0, "VponActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v.getId():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 903
    :pswitch_0
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->e()V

    goto :goto_0

    .line 906
    :pswitch_1
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->canGoBack()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 907
    const-string v0, "VponActivity"

    const-string v1, "CanGoBack()"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->goBack()V

    goto :goto_0

    .line 916
    :pswitch_2
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->goForward()V

    goto :goto_0

    .line 920
    :pswitch_3
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->y:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 926
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 927
    const/high16 v0, 0x10000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 928
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 930
    invoke-virtual {p0, v1}, Lcom/vpadn/widget/VpadnActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 923
    :cond_1
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 901
    :pswitch_data_0
    .packed-switch 0x3df
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 2052
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2053
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->m:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2087
    :cond_0
    :goto_0
    return-void

    .line 2057
    :cond_1
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    const-string v1, "sdkOpenWebApp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2058
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2059
    new-instance v1, Lcom/vpadn/widget/VpadnActivity$14;

    invoke-direct {v1, p0}, Lcom/vpadn/widget/VpadnActivity$14;-><init>(Lcom/vpadn/widget/VpadnActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2068
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2069
    const-string v0, "VponActivity"

    const-string v1, "VponActivity orientation change to ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    if-eqz v0, :cond_0

    .line 2071
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->q()Lvpadn/cr;

    move-result-object v0

    .line 2072
    sget-object v1, Lvpadn/cr$b;->c:Lvpadn/cr$b;

    invoke-virtual {v0, v1}, Lvpadn/cr;->a(Lvpadn/cr$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2073
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    if-eqz v0, :cond_3

    .line 2074
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvpadn/df;->setVisibility(I)V

    .line 2077
    :cond_3
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lvpadn/cs;->a(I)V

    goto :goto_0

    .line 2080
    :cond_4
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2081
    const-string v0, "VponActivity"

    const-string v1, "VponActivity orientation change to ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    if-eqz v0, :cond_0

    .line 2083
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->h()V

    .line 2084
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lvpadn/cs;->a(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/high16 v5, 0x1000000

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 165
    const-string v0, "VponActivity"

    const-string v1, ">>>>>>>>>Enter onCreate"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 174
    if-nez v0, :cond_0

    .line 175
    const-string v0, "VponActivity"

    const-string v1, "bundle == null at VponActivity onCreate method"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->finish()V

    .line 277
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v1, "adType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    invoke-static {v1}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    const-string v0, "VponActivity"

    const-string v1, "mAdType is null at VponActivity onCreate method"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->finish()V

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p0, v3}, Lcom/vpadn/widget/VpadnActivity;->requestWindowFeature(I)Z

    .line 191
    const-string v1, "isFullScreen"

    .line 192
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 194
    if-eqz v1, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 202
    invoke-static {p0}, Lvpadn/bf;->a(Landroid/content/Context;)V

    .line 206
    const-string v1, "originalRequestedOrientation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vpadn/widget/VpadnActivity;->k:I

    .line 207
    const-string v1, "beforeActivityOrientation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vpadn/widget/VpadnActivity;->l:I

    .line 208
    const-string v1, "forceOrientation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->m:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    const-string v2, "playVideoWithNativePlayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 211
    iput-boolean v3, p0, Lcom/vpadn/widget/VpadnActivity;->n:Z

    .line 217
    :goto_1
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->m:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 218
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->m:Ljava/lang/String;

    const-string v2, "portrait"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 219
    invoke-virtual {p0, v3}, Lcom/vpadn/widget/VpadnActivity;->setRequestedOrientation(I)V

    .line 233
    :cond_3
    :goto_2
    const-string v1, "mIsSentImpToServer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vpadn/widget/VpadnActivity;->b:Z

    .line 234
    const-string v1, "mIsSentImpEventToNotifyJs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vpadn/widget/VpadnActivity;->L:Z

    .line 235
    const-string v1, "isUseCustomClose"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vpadn/widget/VpadnActivity;->h:Z

    .line 236
    const-string v1, "distance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vpadn/widget/VpadnActivity;->o:I

    .line 238
    const-string v1, "getControllerKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    .line 239
    const-string v1, "getPerviousControllerKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->q:Ljava/lang/String;

    .line 240
    const-string v1, "getCallbackContextKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->r:Ljava/lang/String;

    .line 241
    const-string v1, "getNativeUuid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->t:Ljava/lang/String;

    .line 243
    const-string v1, "click_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_4

    .line 245
    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->J:Ljava/util/Map;

    const-string v3, "url_type_click"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_4
    const-string v1, "impression_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_5

    .line 250
    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->J:Ljava/util/Map;

    const-string v3, "url_type_impression"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_5
    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vpadn/widget/VpadnActivity;->M:J

    .line 254
    const-string v1, "sequence_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vpadn/widget/VpadnActivity;->N:J

    .line 256
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    .line 258
    const-string v1, "statusBarHeight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vpadn/widget/VpadnActivity;->A:I

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    const-string v2, "interstitial"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 263
    invoke-direct {p0, v0}, Lcom/vpadn/widget/VpadnActivity;->c(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    const-string v1, "VponActivity"

    const-string v2, "VpadnActivity throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->finish()V

    goto/16 :goto_0

    .line 213
    :cond_6
    const-string v1, "isAllowOrientationChange"

    .line 214
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vpadn/widget/VpadnActivity;->n:Z

    goto/16 :goto_1

    .line 220
    :cond_7
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->m:Ljava/lang/String;

    const-string v2, "landscape"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 221
    invoke-virtual {p0, v4}, Lcom/vpadn/widget/VpadnActivity;->setRequestedOrientation(I)V

    goto/16 :goto_2

    .line 223
    :cond_8
    iget-boolean v1, p0, Lcom/vpadn/widget/VpadnActivity;->n:Z

    if-nez v1, :cond_3

    .line 225
    iget v1, p0, Lcom/vpadn/widget/VpadnActivity;->l:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 226
    invoke-virtual {p0, v4}, Lcom/vpadn/widget/VpadnActivity;->setRequestedOrientation(I)V

    goto/16 :goto_2

    .line 227
    :cond_9
    iget v1, p0, Lcom/vpadn/widget/VpadnActivity;->l:I

    if-ne v1, v3, :cond_3

    .line 228
    invoke-virtual {p0, v3}, Lcom/vpadn/widget/VpadnActivity;->setRequestedOrientation(I)V

    goto/16 :goto_2

    .line 264
    :cond_a
    :try_start_1
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    const-string v2, "sdkOpenWebApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 265
    invoke-direct {p0, v0}, Lcom/vpadn/widget/VpadnActivity;->b(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 266
    :cond_b
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    const-string v2, "playVideoWithNativePlayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 267
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vpadn/widget/VpadnActivity;->h:Z

    .line 268
    invoke-virtual {p0, v0}, Lcom/vpadn/widget/VpadnActivity;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 270
    :cond_c
    const-string v0, "VponActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illeage AdType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at VponActivity onCreate method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 715
    const-string v0, "VponActivity"

    const-string v1, "------------------> onDestroy"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity;->R:Z

    .line 717
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 719
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    const-string v1, "playVideoWithNativePlayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->n()V

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    if-eqz v0, :cond_1

    .line 725
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvpadn/df;->setWebViewJsAlertShow(Z)V

    .line 728
    :cond_1
    iget v0, p0, Lcom/vpadn/widget/VpadnActivity;->k:I

    invoke-virtual {p0, v0}, Lcom/vpadn/widget/VpadnActivity;->setRequestedOrientation(I)V

    .line 729
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v4

    .line 731
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 732
    const-string v0, "VponActivity"

    const-string v1, "onDestroy--> StringUtils.isBlank(mAdType)"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    if-eqz v0, :cond_3

    .line 752
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->stopLoading()V

    .line 753
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->removeAllViews()V

    .line 754
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->d()V

    .line 755
    iput-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    .line 758
    :cond_3
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 759
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    if-eqz v0, :cond_4

    .line 760
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->a()V

    .line 761
    iput-object v3, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    .line 764
    :cond_4
    return-void

    .line 735
    :cond_5
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity;->S:Z

    if-eqz v0, :cond_7

    .line 736
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 737
    if-eqz v1, :cond_7

    move-object v0, v1

    .line 738
    check-cast v0, Lvpadn/ag;

    .line 739
    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->t:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity;->t:Ljava/lang/String;

    :goto_1
    invoke-interface {v0, v2}, Lvpadn/ag;->dismissScreen(Ljava/lang/Object;)V

    .line 740
    instance-of v1, v1, Lvpadn/ai;

    if-nez v1, :cond_6

    .line 741
    invoke-interface {v0}, Lvpadn/ag;->notifyToVisible()V

    .line 743
    :cond_6
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lvpadn/aw;->b(Ljava/lang/String;)V

    .line 746
    :cond_7
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->q:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 747
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->q:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lvpadn/aw;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    move-object v2, v3

    .line 739
    goto :goto_1
.end method

.method public onExpandModePressBackKey()V
    .locals 0

    .prologue
    .line 1799
    return-void
.end method

.method public onFirstTimeLoadingVideo(Lvpadn/cr;Lvpadn/cr$b;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 2180
    invoke-virtual {p1}, Lvpadn/cr;->R()Ljava/lang/String;

    move-result-object v0

    .line 2181
    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2204
    :cond_0
    :goto_0
    return-void

    .line 2183
    :cond_1
    invoke-virtual {p1, p2}, Lvpadn/cr;->a(Lvpadn/cr$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2184
    sget-object v1, Lvpadn/cr$b;->b:Lvpadn/cr$b;

    invoke-virtual {p2, v1}, Lvpadn/cr$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2185
    invoke-virtual {p1}, Lvpadn/cr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/vpadn/widget/VpadnActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    if-nez v1, :cond_0

    .line 2192
    sget-object v1, Lvpadn/cr$b;->c:Lvpadn/cr$b;

    invoke-virtual {p2, v1}, Lvpadn/cr$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2193
    sget-object v1, Lvpadn/cr$b;->b:Lvpadn/cr$b;

    invoke-virtual {p1, v1}, Lvpadn/cr;->a(Lvpadn/cr$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2194
    invoke-virtual {p1}, Lvpadn/cr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/vpadn/widget/VpadnActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0, v2}, Lvpadn/df;->setVisibility(I)V

    goto :goto_0

    .line 2187
    :cond_3
    invoke-direct {p0, v0}, Lcom/vpadn/widget/VpadnActivity;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 2198
    :cond_4
    sget-object v1, Lvpadn/cr$b;->c:Lvpadn/cr$b;

    invoke-virtual {p1, v1}, Lvpadn/cr;->a(Lvpadn/cr$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2199
    invoke-direct {p0, v0}, Lcom/vpadn/widget/VpadnActivity;->f(Ljava/lang/String;)V

    .line 2200
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0, v2}, Lvpadn/df;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1616
    const/4 v0, 0x0

    .line 1618
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    if-eqz v1, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1622
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1623
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0, p1, p2}, Lvpadn/df;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1625
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1591
    const/4 v0, 0x0

    .line 1592
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    if-eqz v1, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1596
    :cond_0
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v1}, Lvpadn/df;->h()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-ne p1, v2, :cond_2

    .line 1597
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0, p1, p2}, Lvpadn/df;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1606
    :goto_0
    return v0

    .line 1603
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1604
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x200

    invoke-static {p2, v0}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p2

    .line 1606
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 990
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    const-string v0, "VponActivity"

    const-string v1, "Call onMessage id is close"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/vpadn/widget/VpadnActivity$10;

    invoke-direct {v1, p0}, Lcom/vpadn/widget/VpadnActivity$10;-><init>(Lcom/vpadn/widget/VpadnActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1001
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1749
    const-string v0, "VponActivity"

    const-string v1, "VponActivity onPause()"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1752
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    const-string v1, "playVideoWithNativePlayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1753
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->l()V

    .line 1756
    :cond_0
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    if-nez v0, :cond_1

    .line 1761
    :goto_0
    return-void

    .line 1759
    :cond_1
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/df;->b(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1768
    const-string v0, "VponActivity"

    const-string v1, "VponActivity onResume()"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1771
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    const-string v1, "playVideoWithNativePlayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->m()V

    .line 1775
    :cond_0
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    if-nez v0, :cond_1

    .line 1781
    :goto_0
    return-void

    .line 1779
    :cond_1
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v0, v2, v2}, Lvpadn/df;->a(ZZ)V

    goto :goto_0
.end method

.method public onVideoTrackComplete(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 2473
    const-string v0, "VponActivity"

    const-string v1, "[error] onVideoTrackComplete"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    return-void
.end method

.method public onVideoTrackFirstQuartile(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 2458
    const-string v0, "VponActivity"

    const-string v1, "[error] onVideoTrackFirstQuartile"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    return-void
.end method

.method public onVideoTrackMidpoint(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 2463
    const-string v0, "VponActivity"

    const-string v1, "[error] onVideoTrackMidpoint"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    return-void
.end method

.method public onVideoTrackProgressTime(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 2483
    const-string v0, "VponActivity"

    const-string v1, "[error] onVideoTrackProgressTime"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    return-void
.end method

.method public onVideoTrackReplay(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 2478
    const-string v0, "VponActivity"

    const-string v1, "[error] onVideoTrackReplay"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    return-void
.end method

.method public onVideoTrackStart(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 2453
    const-string v0, "VponActivity"

    const-string v1, "[error] onVideoTrackStart"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    return-void
.end method

.method public onVideoTrackThirdQuartile(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 2468
    const-string v0, "VponActivity"

    const-string v1, "[error] onVideoTrackThirdQuartile"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    return-void
.end method

.method public onVideoTrackingComplete(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 2417
    new-instance v0, Lcom/vpadn/widget/VpadnActivity$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/vpadn/widget/VpadnActivity$19;-><init>(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/vpadn/widget/VpadnActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2425
    return-void
.end method

.method public onVideoTrackingFirstQuartile(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 2381
    new-instance v0, Lcom/vpadn/widget/VpadnActivity$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/vpadn/widget/VpadnActivity$16;-><init>(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/vpadn/widget/VpadnActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2389
    return-void
.end method

.method public onVideoTrackingMidpoint(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 2393
    new-instance v0, Lcom/vpadn/widget/VpadnActivity$17;

    invoke-direct {v0, p0, p1, p2}, Lcom/vpadn/widget/VpadnActivity$17;-><init>(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/vpadn/widget/VpadnActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2401
    return-void
.end method

.method public onVideoTrackingProgressTime(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 2441
    new-instance v0, Lcom/vpadn/widget/VpadnActivity$21;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vpadn/widget/VpadnActivity$21;-><init>(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/vpadn/widget/VpadnActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2449
    return-void
.end method

.method public onVideoTrackingReplay(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 2429
    new-instance v0, Lcom/vpadn/widget/VpadnActivity$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/vpadn/widget/VpadnActivity$20;-><init>(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/vpadn/widget/VpadnActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2437
    return-void
.end method

.method public onVideoTrackingStart(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 2369
    new-instance v0, Lcom/vpadn/widget/VpadnActivity$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/vpadn/widget/VpadnActivity$15;-><init>(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/vpadn/widget/VpadnActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2377
    return-void
.end method

.method public onVideoTrackingThirdQuartile(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 2405
    new-instance v0, Lcom/vpadn/widget/VpadnActivity$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/vpadn/widget/VpadnActivity$18;-><init>(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/vpadn/widget/VpadnActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2413
    return-void
.end method

.method public onVideoViewHide(Lvpadn/cr;Lvpadn/cr$b;)V
    .locals 2

    .prologue
    .line 2269
    sget-object v0, Lvpadn/cr$b;->c:Lvpadn/cr$b;

    invoke-virtual {p2, v0}, Lvpadn/cr$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lvpadn/cr;->d()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lvpadn/cr;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2270
    :cond_0
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    if-eqz v0, :cond_1

    .line 2271
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    sget-object v1, Lcom/vpadn/widget/VpadnActivity;->O:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lvpadn/df;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2274
    :cond_1
    return-void
.end method

.method public onVponBannerImpression(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1190
    const-string v0, "VponActivity"

    const-string v1, "call onVponBannerImpression SUCCESS"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    return-void
.end method

.method public onVponBannerImpressionFailed(Lvpadn/aj;)V
    .locals 2

    .prologue
    .line 1195
    const-string v0, "VponActivity"

    const-string v1, "call onVponBannerImpression Failed"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    return-void
.end method

.method public onWebViewChangeToInvisible()V
    .locals 2

    .prologue
    .line 1026
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity;->K:Z

    .line 1027
    const-string v0, "onhide"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vpadn/widget/VpadnActivity;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1028
    return-void
.end method

.method public onWebViewChangeToVisible()V
    .locals 2

    .prologue
    .line 1019
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity;->K:Z

    .line 1020
    const-string v0, "onshow"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vpadn/widget/VpadnActivity;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1021
    return-void
.end method

.method public onWebViewLayoutChanged(IIII)V
    .locals 7

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    if-eqz v0, :cond_0

    .line 1214
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1215
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v1, v0}, Lvpadn/df;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1216
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {v1, p0}, Lcom/vpadn/ads/VpadnAdSize;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1217
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static {v2, p0}, Lcom/vpadn/ads/VpadnAdSize;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1218
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3, p0}, Lcom/vpadn/ads/VpadnAdSize;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1219
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v4, v0

    int-to-float v0, v0

    invoke-static {v0, p0}, Lcom/vpadn/ads/VpadnAdSize;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1220
    const-string v4, "VponActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Y1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " wDip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hDip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :try_start_0
    iget-object v4, p0, Lcom/vpadn/widget/VpadnActivity;->c:Lorg/json/JSONObject;

    const-string v5, "x"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1223
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->c:Lorg/json/JSONObject;

    const-string v4, "y"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1224
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->c:Lorg/json/JSONObject;

    const-string v2, "w"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1225
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->c:Lorg/json/JSONObject;

    const-string v2, "h"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1226
    const-string v0, "ad_pos_change"

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->c:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v1}, Lcom/vpadn/widget/VpadnActivity;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    :cond_0
    :goto_0
    return-void

    .line 1227
    :catch_0
    move-exception v0

    .line 1228
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1229
    const-string v0, "VponActivity"

    const-string v1, "onWebViewLayoutChanged throw exception"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onWebViewLoadPageFinish(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1032
    const-string v0, "VponActivity"

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

    .line 1033
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    const-string v1, "sdkOpenWebApp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1034
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/vpadn/widget/VpadnActivity$11;

    invoke-direct {v1, p0}, Lcom/vpadn/widget/VpadnActivity$11;-><init>(Lcom/vpadn/widget/VpadnActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1054
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1055
    const-string v0, "VponActivity"

    const-string v1, "end onWebViewLoadPageFinish"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->g()V

    .line 1059
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1060
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    .line 1061
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/ag;

    .line 1062
    if-eqz v0, :cond_0

    .line 1063
    invoke-interface {v0}, Lvpadn/ag;->notifyToInVisible()V

    .line 1163
    :cond_0
    :goto_0
    iget v0, p0, Lcom/vpadn/widget/VpadnActivity;->o:I

    if-lez v0, :cond_1

    .line 1164
    const-string v0, "javascript:getDistance(\'%d\')"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/vpadn/widget/VpadnActivity;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1165
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v1, v0}, Lvpadn/df;->loadUrl(Ljava/lang/String;)V

    .line 1168
    :cond_1
    return-void

    .line 1066
    :cond_2
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1069
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    .line 1070
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/ag;

    .line 1071
    if-eqz v0, :cond_3

    .line 1072
    invoke-interface {v0}, Lvpadn/ag;->notifyToInVisible()V

    .line 1075
    :cond_3
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    .line 1076
    const-string v1, "inst_send_imp_policy"

    invoke-virtual {v0, v1}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1077
    const-string v1, "page_finished"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1078
    invoke-direct {p0, v0}, Lcom/vpadn/widget/VpadnActivity;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWebViewPrepareToLoadUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1013
    const/4 v0, 0x0

    return v0
.end method

.method public onWebViewReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    const-string v1, "sdkOpenWebApp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->f:Ljava/lang/String;

    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1240
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/vpadn/widget/VpadnActivity$12;

    invoke-direct {v1, p0}, Lcom/vpadn/widget/VpadnActivity$12;-><init>(Lcom/vpadn/widget/VpadnActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1255
    :cond_1
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->r:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1256
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v1

    .line 1257
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/p;

    .line 1258
    if-eqz v0, :cond_2

    .line 1260
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1261
    const-string v3, "e"

    const-string v4, "call onWebViewReceivedError"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1262
    invoke-virtual {v0, v2}, Lvpadn/p;->b(Lorg/json/JSONObject;)V

    .line 1263
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lvpadn/aw;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    :cond_2
    :goto_0
    return-void

    .line 1264
    :catch_0
    move-exception v0

    .line 1265
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onWebViewSizeChanged(II)V
    .locals 3

    .prologue
    .line 1200
    const-string v0, "VponActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call onWebViewSizeChanged w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iget v0, p0, Lcom/vpadn/widget/VpadnActivity;->Q:I

    if-nez v0, :cond_0

    .line 1207
    :goto_0
    iget v0, p0, Lcom/vpadn/widget/VpadnActivity;->Q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vpadn/widget/VpadnActivity;->Q:I

    .line 1208
    return-void

    .line 1204
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vpadn/widget/VpadnActivity;->b(Z)V

    .line 1205
    invoke-direct {p0}, Lcom/vpadn/widget/VpadnActivity;->b()V

    goto :goto_0
.end method

.method public playVideoOnNativePlayer(Lvpadn/p;Lvpadn/cr;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1806
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1807
    const-string v0, "adType"

    const-string v3, "playVideoWithNativePlayer"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    const-string v0, "originalRequestedOrientation"

    iget v3, p0, Lcom/vpadn/widget/VpadnActivity;->k:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1810
    const-string v0, "beforeActivityOrientation"

    iget v3, p0, Lcom/vpadn/widget/VpadnActivity;->l:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1812
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v3

    .line 1814
    invoke-virtual {p2}, Lvpadn/cr;->S()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1819
    const-string v0, "getControllerKey"

    iget-object v4, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity;->S:Z

    .line 1829
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1830
    const-string v4, "getCallbackContextKey"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    invoke-virtual {v3, v0, p1}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1833
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1834
    const-string v4, "getVideoDataKey"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    invoke-virtual {v3, v0, p2}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1837
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1838
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1839
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 1840
    const-string v4, "statusBarHeight"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1846
    const-string v0, "none"

    .line 1847
    invoke-virtual {p2}, Lvpadn/cr;->n()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1848
    invoke-virtual {p2}, Lvpadn/cr;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1849
    const-string v0, "landscape"

    .line 1854
    :cond_0
    :goto_1
    const-string v4, "forceOrientation"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    const-string v4, "click_url"

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->J:Ljava/util/Map;

    const-string v5, "url_type_click"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    const-string v0, "inst_send_imp_policy"

    invoke-virtual {v3, v0}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1860
    const-string v3, "js_side"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1861
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->J:Ljava/util/Map;

    const-string v3, "url_type_impression"

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1862
    if-eqz v0, :cond_5

    .line 1863
    const-string v3, "impression_url"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    :cond_1
    :goto_2
    const-string v0, "mIsSentImpToServer"

    iget-boolean v3, p0, Lcom/vpadn/widget/VpadnActivity;->b:Z

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1877
    const-string v0, "session_id"

    iget-wide v4, p0, Lcom/vpadn/widget/VpadnActivity;->M:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1878
    const-string v0, "sequence_number"

    iget-wide v4, p0, Lcom/vpadn/widget/VpadnActivity;->N:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1880
    new-instance v3, Landroid/content/Intent;

    const-class v0, Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1881
    const/high16 v0, 0x10000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1882
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1884
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 1886
    :goto_3
    const-string v1, "isFullScreen"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1888
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1889
    invoke-virtual {p0, v3}, Lcom/vpadn/widget/VpadnActivity;->startActivity(Landroid/content/Intent;)V

    .line 1891
    invoke-virtual {p2}, Lvpadn/cr;->S()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1892
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->finish()V

    .line 1900
    :cond_2
    :goto_4
    return-void

    .line 1822
    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1823
    const-string v4, "getControllerKey"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    invoke-virtual {v3, v0, p0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1826
    const-string v0, "getPerviousControllerKey"

    iget-object v4, p0, Lcom/vpadn/widget/VpadnActivity;->p:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1895
    :catch_0
    move-exception v0

    .line 1896
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1897
    const-string v1, "VponActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVideoOnNativePlayer throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1851
    :cond_4
    :try_start_1
    const-string v0, "portrait"

    goto/16 :goto_1

    .line 1865
    :cond_5
    iget-boolean v0, p0, Lcom/vpadn/widget/VpadnActivity;->b:Z

    if-eqz v0, :cond_6

    .line 1866
    const-string v0, "VponActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "has already sent impression url in the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vpadn/widget/VpadnActivity;->d:Lvpadn/df;

    invoke-virtual {v4}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1868
    :cond_6
    const-string v0, "VponActivity"

    const-string v3, "[something wrong] policy.equals(\"js_side\") && impressionUrl == null at calling playVideoOnNativePlayer && mIsSentImpToServer == false"

    invoke-static {v0, v3}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_7
    move v0, v1

    .line 1884
    goto/16 :goto_3
.end method

.method public printLogForImpPolicy()V
    .locals 4

    .prologue
    .line 863
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    const-string v1, "inst_send_imp_policy"

    invoke-virtual {v0, v1}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 864
    const-string v1, "call_show_func"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vpadn/widget/VpadnActivity;->b:Z

    if-nez v1, :cond_0

    .line 865
    const-string v1, "VponActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current imp policy ------> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ,!mIsSentImpToServer"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :goto_0
    return-void

    .line 866
    :cond_0
    const-string v1, "page_finished"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/vpadn/widget/VpadnActivity;->b:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->J:Ljava/util/Map;

    const-string v2, "url_type_impression"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 867
    const-string v1, "VponActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current imp policy ------> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ,!mIsSentImpToServer && mUrlMap.get(VponControllerInterface.URL_TYPE_IMPRESSION) != null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 868
    :cond_1
    const-string v1, "js_side"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/vpadn/widget/VpadnActivity;->b:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity;->J:Ljava/util/Map;

    const-string v2, "url_type_impression"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 869
    const-string v1, "VponActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current imp policy ------> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ,!mIsSentImpToServer && mUrlMap.get(VponControllerInterface.URL_TYPE_IMPRESSION) != null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 871
    :cond_2
    const-string v1, "call_show_func"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "page_finished"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "js_side"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 872
    :cond_3
    const-string v1, "VponActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current imp policy ------> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ,send imp success."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 874
    :cond_4
    const-string v1, "VponActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current imp policy ------> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ,send imp failure (this policy is not supported by SDK)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public removeEventListener(Ljava/lang/String;ILvpadn/p;)V
    .locals 5

    .prologue
    .line 1483
    :try_start_0
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    if-eqz v0, :cond_0

    const-string v0, "video_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->P:Lvpadn/cs;

    invoke-virtual {v0, p1, p2, p3}, Lvpadn/cs;->b(Ljava/lang/String;ILvpadn/p;)V

    .line 1526
    :goto_0
    return-void

    .line 1486
    :cond_0
    const-string v0, "onhide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onshow"

    .line 1487
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ad_pos_change"

    .line 1488
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onimpress"

    .line 1489
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onclick_closebtn"

    .line 1490
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1491
    const-string v0, "video_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1492
    const-string v0, "VponActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoEventType remove not supported! while mVideoManager is null. video event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "e"

    const-string v2, "VideoEventType remove not supported!"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p3, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1517
    :catch_0
    move-exception v0

    .line 1518
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1520
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

    goto/16 :goto_0

    .line 1521
    :catch_1
    move-exception v1

    .line 1522
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1496
    :cond_1
    :try_start_2
    const-string v0, "VponActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventType remove not supported! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "e"

    const-string v2, "EventType remove not supported!"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p3, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1503
    :cond_2
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->I:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1504
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->I:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1506
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1508
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->I:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    :cond_3
    invoke-virtual {p3}, Lvpadn/p;->c()V

    goto/16 :goto_0

    .line 1514
    :cond_4
    const-string v0, "VponActivity"

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

    .line 1515
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

.method public setActivityResultCallback(Lvpadn/r;)V
    .locals 0

    .prologue
    .line 975
    iput-object p1, p0, Lcom/vpadn/widget/VpadnActivity;->a:Lvpadn/r;

    .line 976
    return-void
.end method

.method public setAppDetectionBlockList(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1367
    return-void
.end method

.method public setAppDetectionMeth(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1363
    return-void
.end method

.method public setAppDetectionOn(J)V
    .locals 0

    .prologue
    .line 1355
    return-void
.end method

.method public setAppDetectionUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1359
    return-void
.end method

.method public setBannerUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1340
    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1345
    return-void
.end method

.method public setImpressionUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1350
    return-void
.end method

.method public setRefreshTime(J)V
    .locals 0

    .prologue
    .line 1330
    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .prologue
    .line 283
    const v0, 0x103000f

    invoke-super {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 284
    return-void
.end method

.method public setUseCustomClose(Z)V
    .locals 1

    .prologue
    .line 1313
    iput-boolean p1, p0, Lcom/vpadn/widget/VpadnActivity;->h:Z

    .line 1314
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vpadn/widget/VpadnActivity;->b(Z)V

    .line 1315
    return-void
.end method

.method public startActivityForResult(Lvpadn/r;Landroid/content/Intent;I)V
    .locals 3

    .prologue
    .line 964
    const-string v0, "VponActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------->>>Call startActivityForResult requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iput-object p1, p0, Lcom/vpadn/widget/VpadnActivity;->a:Lvpadn/r;

    .line 966
    invoke-virtual {p0, p2, p3}, Lcom/vpadn/widget/VpadnActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 969
    return-void
.end method

.method public triggerClickCloseBtnEvent()V
    .locals 2

    .prologue
    .line 887
    const-string v0, "onclick_closebtn"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vpadn/widget/VpadnActivity;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 888
    return-void
.end method

.method public videoActivityTo2PartActivity(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZZZ)V
    .locals 4

    .prologue
    .line 2118
    :try_start_0
    const-string v0, "VponActivity"

    const-string v1, "===========>>Enter videoActivityTo2PartActivity"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2121
    const-string v0, "adType"

    const-string v2, "sdkOpenWebApp"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    const-string v0, "url"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    const-string v0, "isUseCustomClose"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2126
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2127
    const-string v2, "getControllerKey"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v2

    .line 2129
    invoke-virtual {v2, v0, p0}, Lvpadn/aw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2131
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->getRequestedOrientation()I

    move-result v0

    .line 2132
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 2134
    const-string v3, "originalRequestedOrientation"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2135
    const-string v0, "beforeActivityOrientation"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2137
    const-string v0, "forceOrientation"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    const-string v0, "isAllowOrientationChange"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2141
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2142
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 2143
    const-string v2, "statusBarHeight"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2145
    if-eqz p2, :cond_0

    .line 2146
    const-string v0, "html"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    :cond_0
    const-string v0, "backgroundColor"

    invoke-virtual {v1, v0, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2150
    const-string v0, "isShowProgressBar"

    invoke-virtual {v1, v0, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2151
    const-string v0, "isShowNavigationBar"

    invoke-virtual {v1, v0, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2153
    const-string v0, "isUseWebViewLoadUrl"

    invoke-virtual {v1, v0, p9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2156
    const-string v2, "click_url"

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity;->J:Ljava/util/Map;

    const-string v3, "url_type_click"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    const-string v0, "session_id"

    iget-wide v2, p0, Lcom/vpadn/widget/VpadnActivity;->M:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2159
    const-string v0, "sequence_number"

    iget-wide v2, p0, Lcom/vpadn/widget/VpadnActivity;->N:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2161
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2162
    const/high16 v0, 0x10000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2163
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2165
    invoke-virtual {p0}, Lcom/vpadn/widget/VpadnActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2167
    :goto_0
    const-string v3, "isFullScreen"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2169
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2170
    invoke-virtual {p0, v2}, Lcom/vpadn/widget/VpadnActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2176
    :goto_1
    return-void

    .line 2165
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2172
    :catch_0
    move-exception v0

    .line 2174
    const-string v1, "VponActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoActivityTo2PartActivity throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
