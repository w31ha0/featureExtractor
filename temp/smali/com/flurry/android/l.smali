.class final Lcom/flurry/android/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field private static volatile c:Ljava/lang/String;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/util/Random;

.field private static h:I

.field private static volatile z:I


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:J

.field private o:J

.field private p:Lcom/flurry/android/ab;

.field private q:Z

.field private r:Ljava/util/Map;

.field private s:Landroid/os/Handler;

.field private t:Z

.field private transient u:Ljava/util/Map;

.field private v:Lcom/flurry/android/ai;

.field private w:Ljava/util/List;

.field private x:Ljava/util/Map;

.field private y:Lcom/flurry/android/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const-string v0, "market://"

    sput-object v0, Lcom/flurry/android/l;->c:Ljava/lang/String;

    .line 35
    const-string v0, "market://details?id="

    sput-object v0, Lcom/flurry/android/l;->d:Ljava/lang/String;

    .line 36
    const-string v0, "https://market.android.com/details?id="

    sput-object v0, Lcom/flurry/android/l;->e:Ljava/lang/String;

    .line 37
    const-string v0, "com.flurry.android.ACTION_CATALOG"

    sput-object v0, Lcom/flurry/android/l;->f:Ljava/lang/String;

    .line 42
    const-string v0, "FlurryAgent"

    sput-object v0, Lcom/flurry/android/l;->a:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/flurry/android/l;->g:Ljava/util/Random;

    .line 44
    const/16 v0, 0x1388

    sput v0, Lcom/flurry/android/l;->h:I

    .line 48
    sget-object v0, Lcom/flurry/android/l;->g:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 57
    const-string v0, ""

    sput-object v0, Lcom/flurry/android/l;->b:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    sput v0, Lcom/flurry/android/l;->z:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/s;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v4, p0, Lcom/flurry/android/l;->q:Z

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/l;->r:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/l;->u:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/l;->w:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/l;->x:Ljava/util/Map;

    .line 97
    iget-object v0, p2, Lcom/flurry/android/s;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/l;->i:Ljava/lang/String;

    .line 98
    iget-object v0, p2, Lcom/flurry/android/s;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/l;->j:Ljava/lang/String;

    .line 99
    iget-object v0, p2, Lcom/flurry/android/s;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/l;->k:Ljava/lang/String;

    .line 100
    iget-object v0, p2, Lcom/flurry/android/s;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/l;->l:Ljava/lang/String;

    .line 101
    iget-wide v0, p2, Lcom/flurry/android/s;->c:J

    iput-wide v0, p0, Lcom/flurry/android/l;->m:J

    .line 102
    iget-wide v0, p2, Lcom/flurry/android/s;->d:J

    iput-wide v0, p0, Lcom/flurry/android/l;->n:J

    .line 103
    iget-wide v0, p2, Lcom/flurry/android/s;->e:J

    iput-wide v0, p0, Lcom/flurry/android/l;->o:J

    .line 104
    iget-object v0, p2, Lcom/flurry/android/s;->h:Landroid/os/Handler;

    iput-object v0, p0, Lcom/flurry/android/l;->s:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/flurry/android/ai;

    iget-object v1, p0, Lcom/flurry/android/l;->s:Landroid/os/Handler;

    sget v2, Lcom/flurry/android/l;->h:I

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/ai;-><init>(Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/flurry/android/l;->v:Lcom/flurry/android/ai;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 110
    new-instance v0, Lcom/flurry/android/ab;

    invoke-direct {v0, p1, p0, p2}, Lcom/flurry/android/ab;-><init>(Landroid/content/Context;Lcom/flurry/android/l;Lcom/flurry/android/s;)V

    iput-object v0, p0, Lcom/flurry/android/l;->p:Lcom/flurry/android/ab;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/flurry/android/l;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/android/l;->q:Z

    .line 113
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/flurry/android/aj;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 607
    iget-object v0, p1, Lcom/flurry/android/aj;->b:Lcom/flurry/android/n;

    .line 608
    invoke-virtual {p1}, Lcom/flurry/android/aj;->a()J

    move-result-wide v1

    .line 610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?apik="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/l;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/flurry/android/n;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&adid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/flurry/android/n;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/l;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&iid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/flurry/android/l;->m:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/flurry/android/l;->n:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&its="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&hid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/android/aj;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/flurry/android/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/flurry/android/n;->g:[B

    invoke-static {v0}, Lcom/flurry/android/l;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 622
    iget-object v0, p0, Lcom/flurry/android/l;->r:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/l;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/flurry/android/l;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/flurry/android/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 628
    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 635
    :cond_0
    const-string v0, "&ats="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/flurry/android/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 647
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 649
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 650
    if-ge v2, v3, :cond_0

    .line 652
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 659
    :goto_1
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    .line 660
    if-ge v2, v3, :cond_1

    .line 662
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 647
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    :cond_0
    add-int/lit8 v2, v2, 0x41

    sub-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 666
    :cond_1
    add-int/lit8 v2, v2, 0x41

    sub-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 669
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/l;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 31
    sget-object v0, Lcom/flurry/android/l;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/android/l;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/android/l;->q:Z

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/flurry/android/l;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching Android Market for app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/flurry/android/l;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot launch Marketplace url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ak;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/flurry/android/l;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching Android Market website for app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/flurry/android/l;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/flurry/android/l;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected android market url scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ak;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 694
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 695
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 241
    sput-object p0, Lcom/flurry/android/l;->f:Ljava/lang/String;

    .line 242
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 284
    :try_start_0
    sget-object v0, Lcom/flurry/android/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 286
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 287
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 288
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 292
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 294
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 295
    :try_start_1
    sget-object v1, Lcom/flurry/android/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    invoke-direct {p0, v0}, Lcom/flurry/android/l;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 321
    :cond_0
    :goto_0
    return-object v0

    .line 302
    :cond_1
    :try_start_2
    sget-object v0, Lcom/flurry/android/l;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot process with responseCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ak;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    move-object v0, p1

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 309
    sget-object v1, Lcom/flurry/android/l;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/ak;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v1, p0, Lcom/flurry/android/l;->y:Lcom/flurry/android/ac;

    if-eqz v1, :cond_3

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-direct {p0, v0}, Lcom/flurry/android/l;->c(Ljava/lang/String;)V

    :cond_3
    move-object v0, v5

    .line 316
    goto :goto_0

    .line 318
    :catch_1
    move-exception v0

    move-object v1, p1

    .line 320
    :goto_1
    sget-object v2, Lcom/flurry/android/l;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed on url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/flurry/android/ak;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v5

    .line 321
    goto :goto_0

    .line 318
    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method static synthetic b(Lcom/flurry/android/l;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/flurry/android/l;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lcom/flurry/android/an;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/an;-><init>(Lcom/flurry/android/l;Ljava/lang/String;)V

    .line 338
    invoke-static {v0}, Lcom/flurry/android/l;->a(Ljava/lang/Runnable;)V

    .line 339
    return-void
.end method


# virtual methods
.method final a(J)Lcom/flurry/android/a;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flurry/android/l;->p:Lcom/flurry/android/ab;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/ab;->a(J)Lcom/flurry/android/a;

    move-result-object v0

    return-object v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Ljava/util/List;Ljava/lang/Long;IZ)Ljava/util/List;
    .locals 11

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/l;->p:Lcom/flurry/android/ab;

    invoke-virtual {v0}, Lcom/flurry/android/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    .line 458
    iget-object v0, p0, Lcom/flurry/android/l;->p:Lcom/flurry/android/ab;

    invoke-virtual {v0}, Lcom/flurry/android/ab;->c()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v1, p0, Lcom/flurry/android/l;->p:Lcom/flurry/android/ab;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/flurry/android/ab;->a(Ljava/lang/String;)[Lcom/flurry/android/n;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    if-lez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    if-eqz p3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/n;

    iget-wide v3, v0, Lcom/flurry/android/n;->a:J

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    .line 460
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 461
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 462
    const/4 v0, 0x0

    move v10, v0

    :goto_1
    if-ge v10, v8, :cond_7

    .line 464
    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/flurry/android/l;->p:Lcom/flurry/android/ab;

    invoke-virtual {v0, p3}, Lcom/flurry/android/ab;->b(Ljava/lang/String;)Lcom/flurry/android/w;

    move-result-object v4

    .line 466
    if-eqz v4, :cond_6

    .line 468
    new-instance v3, Lcom/flurry/android/aj;

    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/flurry/android/l;->h()J

    move-result-wide v0

    invoke-direct {v3, p3, v0, v1}, Lcom/flurry/android/aj;-><init>(Ljava/lang/String;J)V

    .line 469
    iget-object v0, p0, Lcom/flurry/android/l;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x7fff

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/flurry/android/l;->w:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/flurry/android/l;->u:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/flurry/android/aj;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_4

    .line 473
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/flurry/android/n;

    .line 474
    iput-object p3, v3, Lcom/flurry/android/aj;->b:Lcom/flurry/android/n;

    .line 475
    new-instance v0, Lcom/flurry/android/e;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/flurry/android/l;->h()J

    move-result-wide v5

    invoke-direct {v0, v1, v5, v6}, Lcom/flurry/android/e;-><init>(BJ)V

    invoke-virtual {v3, v0}, Lcom/flurry/android/aj;->a(Lcom/flurry/android/e;)V

    .line 477
    new-instance v0, Lcom/flurry/android/q;

    move-object v1, p1

    move-object v2, p0

    move v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/q;-><init>(Landroid/content/Context;Lcom/flurry/android/l;Lcom/flurry/android/aj;Lcom/flurry/android/w;IZ)V

    .line 479
    invoke-direct {p0, v3}, Lcom/flurry/android/l;->a(Lcom/flurry/android/aj;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/q;->a(Ljava/lang/String;)V

    .line 480
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_4
    :goto_2
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_1

    .line 458
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    .line 485
    :cond_6
    sget-object v0, Lcom/flurry/android/l;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find hook: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ak;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    move-object v0, v9

    .line 491
    :goto_3
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_3
.end method

.method final a()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/flurry/android/l;->p:Lcom/flurry/android/ab;

    invoke-virtual {v0}, Lcom/flurry/android/ab;->e()V

    .line 135
    return-void
.end method

.method final a(I)V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/flurry/android/l;->y:Lcom/flurry/android/ac;

    if-eqz v0, :cond_0

    .line 701
    new-instance v0, Lcom/flurry/android/am;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/am;-><init>(Lcom/flurry/android/l;I)V

    .line 711
    invoke-static {v0}, Lcom/flurry/android/l;->a(Ljava/lang/Runnable;)V

    .line 713
    :cond_0
    return-void
.end method

.method final declared-synchronized a(Landroid/content/Context;Lcom/flurry/android/aj;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/l;->s:Landroid/os/Handler;

    new-instance v1, Lcom/flurry/android/ae;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/flurry/android/ae;-><init>(Lcom/flurry/android/l;Ljava/lang/String;Landroid/content/Context;Lcom/flurry/android/aj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flurry/android/l;->p:Lcom/flurry/android/ab;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ab;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 151
    return-void
.end method

.method final b(J)Lcom/flurry/android/aj;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/flurry/android/l;->u:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/aj;

    return-object p0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/flurry/android/l;->p:Lcom/flurry/android/ab;

    invoke-virtual {v0}, Lcom/flurry/android/ab;->f()V

    .line 141
    return-void
.end method

.method final c()J
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/flurry/android/l;->p:Lcom/flurry/android/ab;

    invoke-virtual {v0}, Lcom/flurry/android/ab;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method final d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/flurry/android/l;->p:Lcom/flurry/android/ab;

    invoke-virtual {v0}, Lcom/flurry/android/ab;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final e()Ljava/util/List;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/flurry/android/l;->w:Ljava/util/List;

    return-object v0
.end method

.method final f()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/flurry/android/l;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 191
    return-void
.end method

.method final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/flurry/android/l;->i:Ljava/lang/String;

    return-object v0
.end method

.method final h()J
    .locals 4

    .prologue
    .line 547
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/l;->o:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method final i()Lcom/flurry/android/a;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/flurry/android/l;->p:Lcom/flurry/android/ab;

    invoke-virtual {v0}, Lcom/flurry/android/ab;->b()Lcom/flurry/android/a;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/flurry/android/q;

    move-object v1, v0

    .line 554
    invoke-virtual {v1}, Lcom/flurry/android/q;->a()Lcom/flurry/android/aj;

    move-result-object v2

    .line 555
    new-instance v3, Lcom/flurry/android/e;

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/flurry/android/l;->h()J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Lcom/flurry/android/e;-><init>(BJ)V

    invoke-virtual {v2, v3}, Lcom/flurry/android/aj;->a(Lcom/flurry/android/e;)V

    .line 558
    iget-boolean v3, p0, Lcom/flurry/android/l;->t:Z

    if-eqz v3, :cond_1

    .line 560
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/l;->i:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/flurry/android/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/flurry/android/l;->f:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "u"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_0

    const-string v1, "o"

    invoke-virtual {v2}, Lcom/flurry/android/aj;->a()J

    move-result-wide v5

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :goto_0
    monitor-exit p0

    return-void

    .line 564
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/l;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/flurry/android/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v2, v1}, Lcom/flurry/android/l;->a(Landroid/content/Context;Lcom/flurry/android/aj;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 553
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    const-string v1, "[adLogs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/l;->w:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
