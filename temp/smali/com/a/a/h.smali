.class public Lcom/a/a/h;
.super Lb/a/a/a/p;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a/q;


# annotations
.annotation runtime Lb/a/a/a/a/c/n;
    a = {
        Lcom/a/a/c/a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/a/p",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lb/a/a/a/q;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lb/a/a/a/p",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Ljava/io/File;

.field private j:Lcom/a/a/w;

.field private k:Lcom/a/a/z;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:F

.field private u:Z

.field private final v:Lcom/a/a/bj;

.field private w:Lb/a/a/a/a/e/m;

.field private x:Lcom/a/a/t;

.field private y:Lcom/a/a/c/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/a/a/h;-><init>(FLcom/a/a/w;Lcom/a/a/bj;Z)V

    .line 203
    return-void
.end method

.method constructor <init>(FLcom/a/a/w;Lcom/a/a/bj;Z)V
    .locals 6

    .prologue
    .line 207
    const-string v0, "Crashlytics Exception Handler"

    invoke-static {v0}, Lb/a/a/a/a/b/v;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/a/a/h;-><init>(FLcom/a/a/w;Lcom/a/a/bj;ZLjava/util/concurrent/ExecutorService;)V

    .line 209
    return-void
.end method

.method constructor <init>(FLcom/a/a/w;Lcom/a/a/bj;ZLjava/util/concurrent/ExecutorService;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-direct {p0}, Lb/a/a/a/p;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/a/a/h;->l:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/a/a/h;->m:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/a/a/h;->n:Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/h;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/h;->a:J

    .line 219
    iput p1, p0, Lcom/a/a/h;->t:F

    .line 220
    iput-object p2, p0, Lcom/a/a/h;->j:Lcom/a/a/w;

    .line 221
    iput-object p3, p0, Lcom/a/a/h;->v:Lcom/a/a/bj;

    .line 222
    iput-boolean p4, p0, Lcom/a/a/h;->u:Z

    .line 223
    new-instance v0, Lcom/a/a/t;

    invoke-direct {v0, p5}, Lcom/a/a/t;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/a/a/h;->x:Lcom/a/a/t;

    .line 224
    const/4 v0, 0x2

    new-array v0, v0, [Lb/a/a/a/p;

    const/4 v1, 0x0

    new-instance v2, Lcom/a/a/a/a;

    invoke-direct {v2}, Lcom/a/a/a/a;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/a/a/b/a;

    invoke-direct {v2}, Lcom/a/a/b/a;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h;->h:Ljava/util/Collection;

    .line 225
    return-void
.end method

.method private H()V
    .locals 4

    .prologue
    .line 719
    new-instance v1, Lcom/a/a/i;

    invoke-direct {v1, p0}, Lcom/a/a/i;-><init>(Lcom/a/a/h;)V

    .line 731
    invoke-virtual {p0}, Lcom/a/a/h;->G()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/c/y;

    .line 732
    invoke-virtual {v1, v0}, Lb/a/a/a/a/c/s;->a(Lb/a/a/a/a/c/y;)V

    goto :goto_0

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/h;->D()Lb/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/f;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 737
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    invoke-interface {v1, v2, v3}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-wide/16 v1, 0x4

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 750
    :goto_1
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Crashlytics was interrupted during initialization."

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 745
    :catch_1
    move-exception v0

    .line 746
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Problem encountered during Crashlytics initialization."

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 747
    :catch_2
    move-exception v0

    .line 748
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Crashlytics timed out during initialization."

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static I()Z
    .locals 1

    .prologue
    .line 1107
    invoke-static {}, Lcom/a/a/h;->f()Lcom/a/a/h;

    move-result-object v0

    .line 1108
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/a/a/h;->u:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(FI)I
    .locals 1

    .prologue
    .line 1112
    int-to-float v0, p2

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/a/a/h;FI)I
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/a/a/h;->a(FI)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/a/a/h;)Ljava/io/File;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/a/a/h;->i:Ljava/io/File;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 308
    iget-object v0, p0, Lcom/a/a/h;->v:Lcom/a/a/bj;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/a/a/y;

    iget-object v1, p0, Lcom/a/a/h;->v:Lcom/a/a/bj;

    invoke-direct {v0, v1}, Lcom/a/a/y;-><init>(Lcom/a/a/bj;)V

    .line 310
    :goto_0
    new-instance v1, Lb/a/a/a/a/e/b;

    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v2

    invoke-direct {v1, v2}, Lb/a/a/a/a/e/b;-><init>(Lb/a/a/a/r;)V

    iput-object v1, p0, Lcom/a/a/h;->w:Lb/a/a/a/a/e/m;

    .line 311
    iget-object v1, p0, Lcom/a/a/h;->w:Lb/a/a/a/a/e/m;

    invoke-interface {v1, v0}, Lb/a/a/a/a/e/m;->a(Lb/a/a/a/a/e/o;)V

    .line 314
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h;->p:Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Lcom/a/a/h;->B()Lb/a/a/a/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/b/z;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h;->q:Ljava/lang/String;

    .line 316
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installer package name is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/h;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/a/a/h;->p:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 321
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/h;->r:Ljava/lang/String;

    .line 322
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v0, "0.0"

    :goto_1
    iput-object v0, p0, Lcom/a/a/h;->s:Ljava/lang/String;

    .line 327
    invoke-static {p1}, Lb/a/a/a/a/b/m;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_2
    invoke-virtual {p0}, Lcom/a/a/h;->B()Lb/a/a/a/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/b/z;->m()Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/a/a/h;->o:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/a/a/h;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Z)Lcom/a/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/h;->p:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 322
    :cond_1
    :try_start_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Error setting up app properties"

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 760
    const-class v0, Lcom/a/a/a/a;

    invoke-static {v0}, Lb/a/a/a/f;->a(Ljava/lang/Class;)Lb/a/a/a/p;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a;

    .line 761
    if-eqz v0, :cond_0

    .line 762
    new-instance v1, Lb/a/a/a/a/b/r;

    invoke-direct {v1, p0}, Lb/a/a/a/a/b/r;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Lb/a/a/a/a/b/r;)V

    .line 765
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 442
    invoke-static {}, Lcom/a/a/h;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    invoke-static {}, Lcom/a/a/h;->f()Lcom/a/a/h;

    move-result-object v0

    .line 447
    const-string v1, "prior to logging exceptions."

    invoke-static {v1, v0}, Lcom/a/a/h;->a(Ljava/lang/String;Lcom/a/a/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    if-nez p0, :cond_2

    .line 449
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "Fabric"

    const-string v3, "Crashlytics is ignoring a request to log a null exception."

    invoke-interface {v0, v1, v2, v3}, Lb/a/a/a/r;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_2
    iget-object v0, v0, Lcom/a/a/h;->k:Lcom/a/a/z;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/a/a/z;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Lb/a/a/a/a/g/o;)Z
    .locals 6

    .prologue
    .line 986
    new-instance v4, Lcom/a/a/at;

    invoke-direct {v4, p1, p2}, Lcom/a/a/at;-><init>(Landroid/content/Context;Lb/a/a/a/a/g/o;)V

    .line 990
    new-instance v3, Lcom/a/a/s;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/a/a/s;-><init>(Lcom/a/a/h;Lcom/a/a/i;)V

    .line 994
    new-instance v0, Lcom/a/a/o;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/a/a/o;-><init>(Lcom/a/a/h;Landroid/app/Activity;Lcom/a/a/s;Lcom/a/a/at;Lb/a/a/a/a/g/o;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1059
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Waiting for user opt-in."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v3}, Lcom/a/a/s;->b()V

    .line 1061
    invoke-virtual {v3}, Lcom/a/a/s;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/a/a/h;Landroid/app/Activity;Lb/a/a/a/a/g/o;)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/a/a/h;->a(Landroid/app/Activity;Lb/a/a/a/a/g/o;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Lcom/a/a/h;)Z
    .locals 4

    .prologue
    .line 1086
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/a/a/h;->k:Lcom/a/a/z;

    if-nez v0, :cond_1

    .line 1087
    :cond_0
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashlytics must be initialized by calling Fabric.with(Context) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1090
    const/4 v0, 0x0

    .line 1092
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 771
    const-class v0, Lcom/a/a/a/a;

    invoke-static {v0}, Lb/a/a/a/f;->a(Ljava/lang/Class;)Lb/a/a/a/p;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a;

    .line 772
    if-eqz v0, :cond_0

    .line 773
    new-instance v1, Lb/a/a/a/a/b/q;

    invoke-direct {v1, p0}, Lb/a/a/a/a/b/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Lb/a/a/a/a/b/q;)V

    .line 776
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1073
    const-string v0, "com.crashlytics.RequireBuildId"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lb/a/a/a/a/b/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f()Lcom/a/a/h;
    .locals 5

    .prologue
    .line 419
    :try_start_0
    const-class v0, Lcom/a/a/h;

    invoke-static {v0}, Lb/a/a/a/f;->a(Ljava/lang/Class;)Lb/a/a/a/p;

    move-result-object v0

    check-cast v0, Lcom/a/a/h;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    throw v0
.end method


# virtual methods
.method a(Ljava/lang/String;Z)Lcom/a/a/a;
    .locals 1

    .prologue
    .line 788
    new-instance v0, Lcom/a/a/a;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method a(Lb/a/a/a/a/g/w;)Lcom/a/a/ar;
    .locals 4

    .prologue
    .line 976
    if-eqz p1, :cond_0

    .line 977
    new-instance v0, Lcom/a/a/as;

    invoke-virtual {p0}, Lcom/a/a/h;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lb/a/a/a/a/g/w;->a:Lb/a/a/a/a/g/e;

    iget-object v2, v2, Lb/a/a/a/a/g/e;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/a/a/h;->w:Lb/a/a/a/a/e/m;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/a/a/as;-><init>(Lb/a/a/a/p;Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/a/e/m;)V

    .line 981
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 950
    new-instance v0, Lb/a/a/a/a/f/c;

    invoke-direct {v0, p0}, Lb/a/a/a/a/f/c;-><init>(Lb/a/a/a/p;)V

    .line 951
    invoke-interface {v0}, Lb/a/a/a/a/f/b;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "always_send_reports_opt_in"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/a/a/a/a/f/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 952
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lb/a/a/a/p;->C()Landroid/content/Context;

    move-result-object v0

    .line 234
    invoke-virtual {p0, v0}, Lcom/a/a/h;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method a(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 241
    iget-boolean v0, p0, Lcom/a/a/h;->u:Z

    if-eqz v0, :cond_0

    move v0, v7

    .line 304
    :goto_0
    return v0

    .line 246
    :cond_0
    new-instance v0, Lb/a/a/a/a/b/k;

    invoke-direct {v0}, Lb/a/a/a/a/b/k;-><init>()V

    invoke-virtual {v0, p1}, Lb/a/a/a/a/b/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 248
    if-nez v0, :cond_1

    move v0, v7

    .line 249
    goto :goto_0

    .line 252
    :cond_1
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initializing Crashlytics "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/a/a/h;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lb/a/a/a/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/a/a/h;->u()Ljava/io/File;

    move-result-object v2

    const-string v3, "initialization_marker"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/a/a/h;->i:Ljava/io/File;

    .line 258
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/a/a/h;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/a/a/x; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 261
    :try_start_1
    new-instance v5, Lcom/a/a/bo;

    invoke-virtual {p0}, Lcom/a/a/h;->C()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/h;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/a/a/h;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v1, v2}, Lcom/a/a/bo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Installing exception handler..."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v0, Lcom/a/a/z;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/h;->j:Lcom/a/a/w;

    iget-object v3, p0, Lcom/a/a/h;->x:Lcom/a/a/t;

    invoke-virtual {p0}, Lcom/a/a/h;->B()Lb/a/a/a/a/b/z;

    move-result-object v4

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/a/a/z;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/a/a/w;Lcom/a/a/t;Lb/a/a/a/a/b/z;Lcom/a/a/bo;Lcom/a/a/h;)V

    iput-object v0, p0, Lcom/a/a/h;->k:Lcom/a/a/z;

    .line 275
    invoke-virtual {p0}, Lcom/a/a/h;->s()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/a/a/x; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 280
    :try_start_2
    iget-object v0, p0, Lcom/a/a/h;->k:Lcom/a/a/z;

    invoke-virtual {v0}, Lcom/a/a/z;->b()V

    .line 282
    iget-object v0, p0, Lcom/a/a/h;->k:Lcom/a/a/z;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 283
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v2, "Fabric"

    const-string v3, "Successfully installed exception handler."

    invoke-interface {v0, v2, v3}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/a/a/x; {:try_start_2 .. :try_end_2} :catch_1

    .line 289
    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-static {p1}, Lb/a/a/a/a/b/m;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    invoke-direct {p0}, Lcom/a/a/h;->H()V

    move v0, v7

    .line 294
    goto/16 :goto_0

    .line 284
    :catch_0
    move-exception v0

    move v1, v7

    .line 285
    :goto_2
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "There was a problem installing the exception handler."

    invoke-interface {v2, v3, v4, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lcom/a/a/x; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 297
    :catch_1
    move-exception v0

    .line 299
    new-instance v1, Lb/a/a/a/a/c/z;

    invoke-direct {v1, v0}, Lb/a/a/a/a/c/z;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 296
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 300
    :catch_2
    move-exception v0

    .line 301
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Crashlytics was not started due to an exception during initialization"

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v7

    .line 304
    goto/16 :goto_0

    .line 284
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method protected b()Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 345
    invoke-virtual {p0}, Lcom/a/a/h;->q()V

    .line 346
    iget-object v0, p0, Lcom/a/a/h;->k:Lcom/a/a/z;

    invoke-virtual {v0}, Lcom/a/a/z;->g()V

    .line 349
    const/4 v0, 0x1

    .line 352
    :try_start_0
    invoke-static {}, Lb/a/a/a/a/g/q;->a()Lb/a/a/a/a/g/q;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/a/a/g/q;->b()Lb/a/a/a/a/g/w;

    move-result-object v1

    .line 354
    if-nez v1, :cond_0

    .line 355
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Received null settings, skipping initialization!"

    invoke-interface {v1, v2, v3}, Lb/a/a/a/r;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-virtual {p0}, Lcom/a/a/h;->r()V

    .line 392
    :goto_0
    return-object v5

    .line 359
    :cond_0
    :try_start_1
    iget-object v2, v1, Lb/a/a/a/a/g/w;->d:Lb/a/a/a/a/g/m;

    iget-boolean v2, v2, Lb/a/a/a/a/g/m;->c:Z

    if-eqz v2, :cond_1

    .line 360
    const/4 v0, 0x0

    .line 361
    iget-object v2, p0, Lcom/a/a/h;->k:Lcom/a/a/z;

    invoke-virtual {v2}, Lcom/a/a/z;->d()Z

    .line 363
    invoke-virtual {p0, v1}, Lcom/a/a/h;->a(Lb/a/a/a/a/g/w;)Lcom/a/a/ar;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_3

    .line 365
    new-instance v2, Lcom/a/a/bl;

    invoke-direct {v2, v1}, Lcom/a/a/bl;-><init>(Lcom/a/a/ar;)V

    iget v1, p0, Lcom/a/a/h;->t:F

    invoke-virtual {v2, v1}, Lcom/a/a/bl;->a(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 375
    :try_start_2
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Crash reporting disabled."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    :cond_2
    invoke-virtual {p0}, Lcom/a/a/h;->r()V

    goto :goto_0

    .line 367
    :cond_3
    :try_start_3
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Unable to create a call to upload reports."

    invoke-interface {v1, v2, v3}, Lb/a/a/a/r;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 370
    :catch_0
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    .line 371
    :try_start_4
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Error dealing with settings"

    invoke-interface {v2, v3, v4, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    goto :goto_1

    .line 377
    :catch_1
    move-exception v0

    .line 378
    :try_start_5
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Problem encountered during Crashlytics initialization."

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 389
    invoke-virtual {p0}, Lcom/a/a/h;->r()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/a/a/h;->r()V

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    const-string v0, "com.crashlytics.sdk.android:crashlytics"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    const-string v0, "2.2.2.37"

    return-object v0
.end method

.method public e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lb/a/a/a/p;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/a/a/h;->h:Ljava/util/Collection;

    return-object v0
.end method

.method g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 784
    iget-object v0, p0, Lcom/a/a/h;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/a/a/h;->p:Ljava/lang/String;

    return-object v0
.end method

.method i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/a/a/h;->q:Ljava/lang/String;

    return-object v0
.end method

.method j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/a/a/h;->s:Ljava/lang/String;

    return-object v0
.end method

.method k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/a/a/h;->r:Ljava/lang/String;

    return-object v0
.end method

.method l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 814
    invoke-static {}, Lcom/a/a/h;->f()Lcom/a/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/h;->C()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lb/a/a/a/a/b/m;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method m()Lcom/a/a/z;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/a/a/h;->k:Lcom/a/a/z;

    return-object v0
.end method

.method n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/a/a/h;->B()Lb/a/a/a/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/b/z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h;->l:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/a/a/h;->B()Lb/a/a/a/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/b/z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h;->m:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/a/a/h;->B()Lb/a/a/a/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/b/z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h;->n:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method q()V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/a/a/h;->x:Lcom/a/a/t;

    new-instance v1, Lcom/a/a/j;

    invoke-direct {v1, p0}, Lcom/a/a/j;-><init>(Lcom/a/a/h;)V

    invoke-virtual {v0, v1}, Lcom/a/a/t;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 856
    return-void
.end method

.method r()V
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/a/a/h;->x:Lcom/a/a/t;

    new-instance v1, Lcom/a/a/k;

    invoke-direct {v1, p0}, Lcom/a/a/k;-><init>(Lcom/a/a/h;)V

    invoke-virtual {v0, v1}, Lcom/a/a/t;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 877
    return-void
.end method

.method s()Z
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/a/a/h;->x:Lcom/a/a/t;

    new-instance v1, Lcom/a/a/l;

    invoke-direct {v1, p0}, Lcom/a/a/l;-><init>(Lcom/a/a/h;)V

    invoke-virtual {v0, v1}, Lcom/a/a/t;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method t()Lcom/a/a/c/a/c;
    .locals 2

    .prologue
    .line 901
    const/4 v0, 0x0

    .line 902
    iget-object v1, p0, Lcom/a/a/h;->y:Lcom/a/a/c/a;

    if-eqz v1, :cond_0

    .line 903
    iget-object v0, p0, Lcom/a/a/h;->y:Lcom/a/a/c/a;

    invoke-interface {v0}, Lcom/a/a/c/a;->a()Lcom/a/a/c/a/c;

    move-result-object v0

    .line 905
    :cond_0
    return-object v0
.end method

.method u()Ljava/io/File;
    .locals 1

    .prologue
    .line 927
    new-instance v0, Lb/a/a/a/a/f/a;

    invoke-direct {v0, p0}, Lb/a/a/a/a/f/a;-><init>(Lb/a/a/a/p;)V

    invoke-virtual {v0}, Lb/a/a/a/a/f/a;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method v()Z
    .locals 3

    .prologue
    .line 931
    invoke-static {}, Lb/a/a/a/a/g/q;->a()Lb/a/a/a/a/g/q;

    move-result-object v0

    new-instance v1, Lcom/a/a/m;

    invoke-direct {v1, p0}, Lcom/a/a/m;-><init>(Lcom/a/a/h;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/a/g/q;->a(Lb/a/a/a/a/g/t;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method w()Z
    .locals 3

    .prologue
    .line 944
    new-instance v0, Lb/a/a/a/a/f/c;

    invoke-direct {v0, p0}, Lb/a/a/a/a/f/c;-><init>(Lb/a/a/a/p;)V

    .line 945
    invoke-interface {v0}, Lb/a/a/a/a/f/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "always_send_reports_opt_in"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method x()Z
    .locals 3

    .prologue
    .line 955
    invoke-static {}, Lb/a/a/a/a/g/q;->a()Lb/a/a/a/a/g/q;

    move-result-object v0

    new-instance v1, Lcom/a/a/n;

    invoke-direct {v1, p0}, Lcom/a/a/n;-><init>(Lcom/a/a/h;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/a/g/q;->a(Lb/a/a/a/a/g/t;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method y()Lb/a/a/a/a/g/p;
    .locals 1

    .prologue
    .line 1068
    invoke-static {}, Lb/a/a/a/a/g/q;->a()Lb/a/a/a/a/g/q;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/g/q;->b()Lb/a/a/a/a/g/w;

    move-result-object v0

    .line 1069
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lb/a/a/a/a/g/w;->b:Lb/a/a/a/a/g/p;

    goto :goto_0
.end method

.method protected synthetic z()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/a/a/h;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
