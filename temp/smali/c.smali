.class public final Lc;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;

.field private c:Lcom/google/ads/a;

.field private d:Lcom/google/ads/d;

.field private e:Lf;

.field private f:Lcom/google/ads/c;

.field private g:Lcom/google/ads/f;

.field private h:La;

.field private i:Ljava/lang/String;

.field private j:Lb;

.field private k:Ln;

.field private l:Landroid/os/Handler;

.field private m:J

.field private n:Z

.field private o:Z

.field private p:Landroid/content/SharedPreferences;

.field private q:J

.field private r:Lx;

.field private s:Ljava/util/LinkedList;

.field private t:Ljava/util/LinkedList;

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/a;Lcom/google/ads/f;Ljava/lang/String;)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lc;->u:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lc;->c:Lcom/google/ads/a;

    iput-object p3, p0, Lc;->g:Lcom/google/ads/f;

    iput-object p4, p0, Lc;->i:Ljava/lang/String;

    new-instance v0, La;

    invoke-direct {v0}, La;-><init>()V

    iput-object v0, p0, Lc;->h:La;

    iput-object v2, p0, Lc;->d:Lcom/google/ads/d;

    iput-object v2, p0, Lc;->e:Lf;

    iput-object v2, p0, Lc;->f:Lcom/google/ads/c;

    iput-boolean v1, p0, Lc;->n:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lc;->l:Landroid/os/Handler;

    iput-wide v5, p0, Lc;->q:J

    iput-boolean v1, p0, Lc;->o:Z

    sget-object v0, Lc;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "GoogleAdMobAdsPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lc;->p:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lc;->p:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterstitialTimeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-gez v3, :cond_0

    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lc;->m:J

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lx;

    invoke-direct {v0, p0}, Lx;-><init>(Lc;)V

    iput-object v0, p0, Lc;->r:Lx;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc;->s:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc;->t:Ljava/util/LinkedList;

    invoke-virtual {p0}, Lc;->a()V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->h(Landroid/content/Context;)V

    return-void

    :cond_0
    :try_start_1
    iput-wide v1, p0, Lc;->m:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized u()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc;->e:Lf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized v()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "activity was null while trying to ping tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lc;->s:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lp;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lp;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lc;->s:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lc;->d()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "activity was null while trying to create an AdWebView."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lb;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lc;->g:Lcom/google/ads/f;

    invoke-direct {v1, v0, v2}, Lb;-><init>(Landroid/content/Context;Lcom/google/ads/f;)V

    iput-object v1, p0, Lc;->j:Lb;

    iget-object v0, p0, Lc;->j:Lb;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lb;->setVisibility(I)V

    iget-object v0, p0, Lc;->c:Lcom/google/ads/a;

    instance-of v0, v0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_1

    new-instance v0, Ln;

    sget-object v1, Lg;->b:Ljava/util/Map;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Ln;-><init>(Lc;Ljava/util/Map;ZZ)V

    iput-object v0, p0, Lc;->k:Ln;

    :goto_1
    iget-object v0, p0, Lc;->j:Lb;

    iget-object v1, p0, Lc;->k:Ln;

    invoke-virtual {v0, v1}, Lb;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Ln;

    sget-object v1, Lg;->b:Ljava/util/Map;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Ln;-><init>(Lc;Ljava/util/Map;ZZ)V

    iput-object v0, p0, Lc;->k:Ln;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized a(F)V
    .locals 2

    monitor-enter p0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    float-to-long v0, v0

    :try_start_0
    iput-wide v0, p0, Lc;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lc;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(J)V
    .locals 4

    sget-object v0, Lc;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc;->p:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterstitialTimeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-wide p1, p0, Lc;->m:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final declared-synchronized a(Lcom/google/ads/b;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lc;->e:Lf;

    iget-object v0, p0, Lc;->c:Lcom/google/ads/a;

    instance-of v0, v0, Lcom/google/ads/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ads/b;->b:Lcom/google/ads/b;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lc;->h:La;

    invoke-virtual {v0}, La;->n()V

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailedToReceiveAd("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lc;->d:Lcom/google/ads/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc;->d:Lcom/google/ads/d;

    invoke-interface {v0, p1}, Lcom/google/ads/d;->a(Lcom/google/ads/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/google/ads/b;->c:Lcom/google/ads/b;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lc;->h:La;

    invoke-virtual {v0}, La;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/c;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lc;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "loadAd called while the ad is already loading."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lc;->d()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "activity is null while trying to load an ad."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc;->n:Z

    iput-object p1, p0, Lc;->f:Lcom/google/ads/c;

    new-instance v0, Lf;

    invoke-direct {v0, p0}, Lf;-><init>(Lc;)V

    iput-object v0, p0, Lc;->e:Lf;

    iget-object v0, p0, Lc;->e:Lf;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/ads/c;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/google/ads/d;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lc;->d:Lcom/google/ads/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc;->s:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "Disabling refreshing."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lc;->l:Landroid/os/Handler;

    iget-object v1, p0, Lc;->r:Lx;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already disabled."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc;->t:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc;->c:Lcom/google/ads/a;

    instance-of v0, v0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lc;->o:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabling refreshing every "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lc;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lc;->l:Landroid/os/Handler;

    iget-object v1, p0, Lc;->r:Lx;

    iget-wide v2, p0, Lc;->q:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already enabled."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "Tried to enable refreshing on something other than an AdView."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final d()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lc;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method final e()Lcom/google/ads/a;
    .locals 1

    iget-object v0, p0, Lc;->c:Lcom/google/ads/a;

    return-object v0
.end method

.method public final declared-synchronized f()Lf;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc;->e:Lf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized h()Lb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc;->j:Lb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized i()Ln;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc;->k:Ln;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j()Lcom/google/ads/f;
    .locals 1

    iget-object v0, p0, Lc;->g:Lcom/google/ads/f;

    return-object v0
.end method

.method public final k()La;
    .locals 1

    iget-object v0, p0, Lc;->h:La;

    return-object v0
.end method

.method public final declared-synchronized l()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lc;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final m()J
    .locals 3

    iget-object v0, p0, Lc;->c:Lcom/google/ads/a;

    instance-of v0, v0, Lcom/google/ads/e;

    if-eqz v0, :cond_0

    sget-object v0, Lc;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lc;->m:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v1

    :goto_0
    return-wide v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    const-wide/32 v0, 0xea60

    goto :goto_0
.end method

.method public final declared-synchronized n()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized o()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lc;->e:Lf;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc;->n:Z

    iget-object v0, p0, Lc;->j:Lb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb;->setVisibility(I)V

    iget-object v0, p0, Lc;->h:La;

    invoke-virtual {v0}, La;->c()V

    iget-object v0, p0, Lc;->c:Lcom/google/ads/a;

    instance-of v0, v0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc;->v()V

    :cond_0
    const-string v0, "onReceiveAd()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc;->h:La;

    invoke-virtual {v0}, La;->o()V

    const-string v0, "onDismissScreen()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized q()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc;->h:La;

    invoke-virtual {v0}, La;->b()V

    const-string v0, "onPresentScreen()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "onLeaveApplication()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized s()Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    iget-object v0, p0, Lc;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "activity was null while trying to ping click tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lc;->t:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lp;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lp;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lc;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    goto :goto_1
.end method

.method public final declared-synchronized t()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc;->f:Lcom/google/ads/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc;->c:Lcom/google/ads/a;

    instance-of v0, v0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc;->c:Lcom/google/ads/a;

    check-cast v0, Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/ads/util/AdUtil;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Refreshing ad."

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lc;->f:Lcom/google/ads/c;

    invoke-virtual {p0, v0}, Lc;->a(Lcom/google/ads/c;)V

    :goto_0
    iget-object v0, p0, Lc;->l:Landroid/os/Handler;

    iget-object v1, p0, Lc;->r:Lx;

    iget-wide v2, p0, Lc;->q:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Not refreshing because the ad is not visible."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "Tried to refresh an ad that wasn\'t an AdView."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "Tried to refresh before calling loadAd()."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
