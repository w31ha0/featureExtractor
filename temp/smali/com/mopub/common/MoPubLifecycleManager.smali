.class public Lcom/mopub/common/MoPubLifecycleManager;
.super Ljava/lang/Object;
.source "MoPubLifecycleManager.java"

# interfaces
.implements Lcom/mopub/common/LifecycleListener;


# static fields
.field private static sInstance:Lcom/mopub/common/MoPubLifecycleManager;


# instance fields
.field private final mLifecycleListeners:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mopub/common/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainActivity:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "mainActivity"    # Landroid/app/Activity;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/common/MoPubLifecycleManager;->mMainActivity:Ljava/lang/ref/WeakReference;

    .line 23
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;
    .locals 2
    .param p0, "mainActivity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 26
    const-class v1, Lcom/mopub/common/MoPubLifecycleManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mopub/common/MoPubLifecycleManager;->sInstance:Lcom/mopub/common/MoPubLifecycleManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/mopub/common/MoPubLifecycleManager;

    invoke-direct {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/mopub/common/MoPubLifecycleManager;->sInstance:Lcom/mopub/common/MoPubLifecycleManager;

    .line 30
    :cond_0
    sget-object v0, Lcom/mopub/common/MoPubLifecycleManager;->sInstance:Lcom/mopub/common/MoPubLifecycleManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addLifecycleListener(Lcom/mopub/common/LifecycleListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/mopub/common/LifecycleListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    if-nez p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/mopub/common/MoPubLifecycleManager;->mMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 45
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 46
    invoke-interface {p1, v0}, Lcom/mopub/common/LifecycleListener;->onCreate(Landroid/app/Activity;)V

    .line 47
    invoke-interface {p1, v0}, Lcom/mopub/common/LifecycleListener;->onStart(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onBackPressed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    iget-object v1, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/LifecycleListener;

    .line 104
    .local v0, "lifecycleListener":Lcom/mopub/common/LifecycleListener;
    invoke-interface {v0, p1}, Lcom/mopub/common/LifecycleListener;->onBackPressed(Landroid/app/Activity;)V

    goto :goto_0

    .line 106
    .end local v0    # "lifecycleListener":Lcom/mopub/common/LifecycleListener;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    iget-object v1, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/LifecycleListener;

    .line 55
    .local v0, "lifecycleListener":Lcom/mopub/common/LifecycleListener;
    invoke-interface {v0, p1}, Lcom/mopub/common/LifecycleListener;->onCreate(Landroid/app/Activity;)V

    goto :goto_0

    .line 57
    .end local v0    # "lifecycleListener":Lcom/mopub/common/LifecycleListener;
    :cond_0
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    iget-object v1, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/LifecycleListener;

    .line 97
    .local v0, "lifecycleListener":Lcom/mopub/common/LifecycleListener;
    invoke-interface {v0, p1}, Lcom/mopub/common/LifecycleListener;->onDestroy(Landroid/app/Activity;)V

    goto :goto_0

    .line 99
    .end local v0    # "lifecycleListener":Lcom/mopub/common/LifecycleListener;
    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    iget-object v1, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/LifecycleListener;

    .line 69
    .local v0, "lifecycleListener":Lcom/mopub/common/LifecycleListener;
    invoke-interface {v0, p1}, Lcom/mopub/common/LifecycleListener;->onPause(Landroid/app/Activity;)V

    goto :goto_0

    .line 71
    .end local v0    # "lifecycleListener":Lcom/mopub/common/LifecycleListener;
    :cond_0
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    iget-object v1, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/LifecycleListener;

    .line 83
    .local v0, "lifecycleListener":Lcom/mopub/common/LifecycleListener;
    invoke-interface {v0, p1}, Lcom/mopub/common/LifecycleListener;->onRestart(Landroid/app/Activity;)V

    goto :goto_0

    .line 85
    .end local v0    # "lifecycleListener":Lcom/mopub/common/LifecycleListener;
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    iget-object v1, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/LifecycleListener;

    .line 76
    .local v0, "lifecycleListener":Lcom/mopub/common/LifecycleListener;
    invoke-interface {v0, p1}, Lcom/mopub/common/LifecycleListener;->onResume(Landroid/app/Activity;)V

    goto :goto_0

    .line 78
    .end local v0    # "lifecycleListener":Lcom/mopub/common/LifecycleListener;
    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    iget-object v1, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/LifecycleListener;

    .line 62
    .local v0, "lifecycleListener":Lcom/mopub/common/LifecycleListener;
    invoke-interface {v0, p1}, Lcom/mopub/common/LifecycleListener;->onStart(Landroid/app/Activity;)V

    goto :goto_0

    .line 64
    .end local v0    # "lifecycleListener":Lcom/mopub/common/LifecycleListener;
    :cond_0
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    iget-object v1, p0, Lcom/mopub/common/MoPubLifecycleManager;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/LifecycleListener;

    .line 90
    .local v0, "lifecycleListener":Lcom/mopub/common/LifecycleListener;
    invoke-interface {v0, p1}, Lcom/mopub/common/LifecycleListener;->onStop(Landroid/app/Activity;)V

    goto :goto_0

    .line 92
    .end local v0    # "lifecycleListener":Lcom/mopub/common/LifecycleListener;
    :cond_0
    return-void
.end method
