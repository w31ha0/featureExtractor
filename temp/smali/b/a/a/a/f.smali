.class public Lb/a/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static volatile a:Lb/a/a/a/f;

.field static final b:Lb/a/a/a/r;


# instance fields
.field final c:Lb/a/a/a/r;

.field final d:Z

.field private final e:Landroid/content/Context;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lb/a/a/a/p;",
            ">;",
            "Lb/a/a/a/p;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Landroid/os/Handler;

.field private final i:Lb/a/a/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/a/k",
            "<",
            "Lb/a/a/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lb/a/a/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/a/k",
            "<*>;"
        }
    .end annotation
.end field

.field private final k:Lb/a/a/a/a/b/z;

.field private l:Lb/a/a/a/a;

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lb/a/a/a/s;

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lb/a/a/a/e;

    invoke-direct {v0}, Lb/a/a/a/e;-><init>()V

    sput-object v0, Lb/a/a/a/f;->b:Lb/a/a/a/r;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lb/a/a/a/a/c/w;Landroid/os/Handler;Lb/a/a/a/r;ZLb/a/a/a/k;Lb/a/a/a/a/b/z;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lb/a/a/a/p;",
            ">;",
            "Lb/a/a/a/p;",
            ">;",
            "Lb/a/a/a/a/c/w;",
            "Landroid/os/Handler;",
            "Lb/a/a/a/r;",
            "Z",
            "Lb/a/a/a/k;",
            "Lb/a/a/a/a/b/z;",
            ")V"
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lb/a/a/a/f;->e:Landroid/content/Context;

    .line 266
    iput-object p2, p0, Lb/a/a/a/f;->f:Ljava/util/Map;

    .line 267
    iput-object p3, p0, Lb/a/a/a/f;->g:Ljava/util/concurrent/ExecutorService;

    .line 268
    iput-object p4, p0, Lb/a/a/a/f;->h:Landroid/os/Handler;

    .line 269
    iput-object p5, p0, Lb/a/a/a/f;->c:Lb/a/a/a/r;

    .line 270
    iput-boolean p6, p0, Lb/a/a/a/f;->d:Z

    .line 271
    iput-object p7, p0, Lb/a/a/a/f;->i:Lb/a/a/a/k;

    .line 272
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lb/a/a/a/f;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 273
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/a/a/a/f;->a(I)Lb/a/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/f;->j:Lb/a/a/a/k;

    .line 274
    iput-object p8, p0, Lb/a/a/a/f;->k:Lb/a/a/a/a/b/z;

    .line 275
    return-void
.end method

.method static a()Lb/a/a/a/f;
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must Initialize Fabric before using singleton()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    return-object v0
.end method

.method public static varargs a(Landroid/content/Context;[Lb/a/a/a/p;)Lb/a/a/a/f;
    .locals 2

    .prologue
    .line 289
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    if-nez v0, :cond_1

    .line 290
    const-class v1, Lb/a/a/a/f;

    monitor-enter v1

    .line 291
    :try_start_0
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Lb/a/a/a/i;

    invoke-direct {v0, p0}, Lb/a/a/a/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lb/a/a/a/i;->a([Lb/a/a/a/p;)Lb/a/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/i;->a()Lb/a/a/a/f;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a/f;->c(Lb/a/a/a/f;)V

    .line 294
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_1
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    return-object v0

    .line 294
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/Class;)Lb/a/a/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb/a/a/a/p;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 502
    invoke-static {}, Lb/a/a/a/f;->a()Lb/a/a/a/f;

    move-result-object v0

    iget-object v0, v0, Lb/a/a/a/f;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/p;

    return-object v0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lb/a/a/a/f;->b(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lb/a/a/a/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lb/a/a/a/f;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lb/a/a/a/p;",
            ">;",
            "Lb/a/a/a/p;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "Lb/a/a/a/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/p;

    .line 559
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    instance-of v2, v0, Lb/a/a/a/q;

    if-eqz v2, :cond_0

    .line 562
    check-cast v0, Lb/a/a/a/q;

    invoke-interface {v0}, Lb/a/a/a/q;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Lb/a/a/a/f;->a(Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_0

    .line 565
    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 466
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 467
    check-cast p1, Landroid/app/Activity;

    .line 469
    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lb/a/a/a/f;)Lb/a/a/a/k;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lb/a/a/a/f;->i:Lb/a/a/a/k;

    return-object v0
.end method

.method private static b(Ljava/util/Collection;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lb/a/a/a/p;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lb/a/a/a/p;",
            ">;",
            "Lb/a/a/a/p;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 550
    invoke-static {v0, p0}, Lb/a/a/a/f;->a(Ljava/util/Map;Ljava/util/Collection;)V

    .line 552
    return-object v0
.end method

.method private static c(Lb/a/a/a/f;)V
    .locals 0

    .prologue
    .line 320
    sput-object p0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    .line 321
    invoke-direct {p0}, Lb/a/a/a/f;->j()V

    .line 322
    return-void
.end method

.method public static g()Lb/a/a/a/r;
    .locals 1

    .prologue
    .line 509
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    if-nez v0, :cond_0

    .line 510
    sget-object v0, Lb/a/a/a/f;->b:Lb/a/a/a/r;

    .line 512
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    iget-object v0, v0, Lb/a/a/a/f;->c:Lb/a/a/a/r;

    goto :goto_0
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 519
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    if-nez v0, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 522
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    iget-boolean v0, v0, Lb/a/a/a/f;->d:Z

    goto :goto_0
.end method

.method public static i()Z
    .locals 1

    .prologue
    .line 529
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    if-eqz v0, :cond_0

    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    iget-object v0, v0, Lb/a/a/a/f;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lb/a/a/a/f;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Lb/a/a/a/f;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/f;->a(Landroid/app/Activity;)Lb/a/a/a/f;

    .line 345
    new-instance v0, Lb/a/a/a/a;

    iget-object v1, p0, Lb/a/a/a/f;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/a/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/a/a/a/f;->l:Lb/a/a/a/a;

    .line 346
    iget-object v0, p0, Lb/a/a/a/f;->l:Lb/a/a/a/a;

    new-instance v1, Lb/a/a/a/g;

    invoke-direct {v1, p0}, Lb/a/a/a/g;-><init>(Lb/a/a/a/f;)V

    invoke-virtual {v0, v1}, Lb/a/a/a/a;->a(Lb/a/a/a/d;)Z

    .line 364
    iget-object v0, p0, Lb/a/a/a/f;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lb/a/a/a/f;->a(Landroid/content/Context;)V

    .line 365
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lb/a/a/a/f;
    .locals 1

    .prologue
    .line 328
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/a/f;->m:Ljava/lang/ref/WeakReference;

    .line 329
    return-object p0
.end method

.method a(I)Lb/a/a/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lb/a/a/a/k",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 568
    new-instance v0, Lb/a/a/a/h;

    invoke-direct {v0, p0, p1}, Lb/a/a/a/h;-><init>(Lb/a/a/a/f;I)V

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 384
    invoke-virtual {p0}, Lb/a/a/a/f;->f()Ljava/util/Collection;

    move-result-object v0

    .line 385
    new-instance v1, Lb/a/a/a/s;

    invoke-direct {v1, v0}, Lb/a/a/a/s;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lb/a/a/a/f;->n:Lb/a/a/a/s;

    .line 386
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 387
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 391
    iget-object v0, p0, Lb/a/a/a/f;->n:Lb/a/a/a/s;

    sget-object v1, Lb/a/a/a/k;->d:Lb/a/a/a/k;

    iget-object v3, p0, Lb/a/a/a/f;->k:Lb/a/a/a/a/b/z;

    invoke-virtual {v0, p1, p0, v1, v3}, Lb/a/a/a/s;->a(Landroid/content/Context;Lb/a/a/a/f;Lb/a/a/a/k;Lb/a/a/a/a/b/z;)V

    .line 392
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/p;

    .line 393
    iget-object v3, p0, Lb/a/a/a/f;->j:Lb/a/a/a/k;

    iget-object v4, p0, Lb/a/a/a/f;->k:Lb/a/a/a/a/b/z;

    invoke-virtual {v0, p1, p0, v3, v4}, Lb/a/a/a/p;->a(Landroid/content/Context;Lb/a/a/a/f;Lb/a/a/a/k;Lb/a/a/a/a/b/z;)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lb/a/a/a/f;->n:Lb/a/a/a/s;

    invoke-virtual {v0}, Lb/a/a/a/s;->A()V

    .line 402
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    const/4 v3, 0x3

    invoke-interface {v0, v1, v3}, Lb/a/a/a/r;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/a/a/a/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/a/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], with the following kits:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, v0

    .line 412
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/p;

    .line 413
    iget-object v3, v0, Lb/a/a/a/p;->c:Lb/a/a/a/o;

    iget-object v4, p0, Lb/a/a/a/f;->n:Lb/a/a/a/s;

    iget-object v4, v4, Lb/a/a/a/s;->c:Lb/a/a/a/o;

    invoke-virtual {v3, v4}, Lb/a/a/a/o;->a(Lb/a/a/a/a/c/y;)V

    .line 415
    iget-object v3, p0, Lb/a/a/a/f;->f:Ljava/util/Map;

    invoke-virtual {p0, v3, v0}, Lb/a/a/a/f;->a(Ljava/util/Map;Lb/a/a/a/p;)V

    .line 417
    invoke-virtual {v0}, Lb/a/a/a/p;->A()V

    .line 419
    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v0}, Lb/a/a/a/p;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [Version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lb/a/a/a/p;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 409
    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 427
    :cond_3
    if-eqz v1, :cond_4

    .line 428
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v2, "Fabric"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_4
    return-void
.end method

.method a(Ljava/util/Map;Lb/a/a/a/p;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lb/a/a/a/p;",
            ">;",
            "Lb/a/a/a/p;",
            ">;",
            "Lb/a/a/a/p;",
            ")V"
        }
    .end annotation

    .prologue
    .line 438
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lb/a/a/a/a/c/n;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/c/n;

    .line 439
    if-eqz v0, :cond_4

    .line 440
    invoke-interface {v0}, Lb/a/a/a/a/c/n;->a()[Ljava/lang/Class;

    move-result-object v2

    .line 441
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 442
    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/p;

    .line 445
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 446
    iget-object v6, p2, Lb/a/a/a/p;->c:Lb/a/a/a/o;

    iget-object v0, v0, Lb/a/a/a/p;->c:Lb/a/a/a/o;

    invoke-virtual {v6, v0}, Lb/a/a/a/o;->a(Lb/a/a/a/a/c/y;)V

    goto :goto_1

    .line 452
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/p;

    .line 453
    if-nez v0, :cond_2

    .line 454
    new-instance v0, Lb/a/a/a/a/c/z;

    const-string v1, "Referenced Kit was null, does the kit exist?"

    invoke-direct {v0, v1}, Lb/a/a/a/a/c/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_2
    iget-object v5, p2, Lb/a/a/a/p;->c:Lb/a/a/a/o;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/p;

    iget-object v0, v0, Lb/a/a/a/p;->c:Lb/a/a/a/o;

    invoke-virtual {v5, v0}, Lb/a/a/a/o;->a(Lb/a/a/a/a/c/y;)V

    .line 441
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 463
    :cond_4
    return-void
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lb/a/a/a/f;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lb/a/a/a/f;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 340
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    const-string v0, "1.2.0.37"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public e()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lb/a/a/a/f;->g:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lb/a/a/a/p;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lb/a/a/a/f;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
