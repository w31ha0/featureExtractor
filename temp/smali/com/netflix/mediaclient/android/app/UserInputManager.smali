.class public Lcom/netflix/mediaclient/android/app/UserInputManager;
.super Ljava/lang/Object;
.source "UserInputManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_input"

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mActivitiesCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mActivitiesVisibleCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCachedIntent:Landroid/content/Intent;

.field private final mLastUserInteraction:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/android/app/ApplicationStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/netflix/mediaclient/android/app/UserInputManager$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/android/app/UserInputManager;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mLastUserInteraction:Ljava/util/concurrent/atomic/AtomicLong;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mListeners:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesVisibleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    sget-object v0, Lcom/netflix/mediaclient/android/app/UserInputManager;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/android/app/UserInputManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized isSuspendLoggingReady()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 194
    :goto_0
    monitor-exit p0

    return v0

    .line 187
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/app/ApplicationStateListener;

    .line 188
    const-string/jumbo v3, "nf_input"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSuspendLoggingReady: listener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    instance-of v0, v0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    if-eqz v0, :cond_1

    .line 190
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Logger ready!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 194
    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyOthersOfLastUserInteraction()V
    .locals 2

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->getTimeSinceLastUserInteraction()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->lastUserInteractionTime(J)V

    .line 446
    return-void
.end method

.method private postOnBackground(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->isApplicationInForeground()Z

    move-result v0

    .line 249
    if-eqz v0, :cond_0

    .line 250
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Our app is still in foreground!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    return-void

    .line 253
    :cond_0
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Our app is in background now"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/android/app/UserInputManager$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/app/UserInputManager$5;-><init>(Lcom/netflix/mediaclient/android/app/UserInputManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private postOnFocusGain(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->isApplicationInForeground()Z

    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesVisibleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    .line 306
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Our app UI was not in focus!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/android/app/UserInputManager$7;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/app/UserInputManager$7;-><init>(Lcom/netflix/mediaclient/android/app/UserInputManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 321
    :goto_0
    return-void

    .line 308
    :cond_0
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Our app UI had focus before!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private postOnFocusLost(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->isApplicationInForeground()Z

    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesVisibleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 278
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Our app UI still has focus!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_0
    return-void

    .line 281
    :cond_0
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Our app UI lost focus"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/android/app/UserInputManager$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/app/UserInputManager$6;-><init>(Lcom/netflix/mediaclient/android/app/UserInputManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private declared-synchronized postOnForeground(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 2

    .prologue
    .line 206
    monitor-enter p0

    if-eqz p3, :cond_2

    .line 207
    if-nez p2, :cond_1

    .line 208
    :try_start_0
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Our app is in foreground already and we do not have a deep link"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 212
    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Our app is in foreground already, deep link most likely"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->isSuspendLoggingReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "We are initialized, report..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/android/app/UserInputManager$4;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/android/app/UserInputManager$4;-><init>(Lcom/netflix/mediaclient/android/app/UserInputManager;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 215
    :cond_2
    :try_start_2
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Our app was in background"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 231
    :cond_3
    if-eqz p2, :cond_0

    .line 232
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Logger is not ready, cold start, save intent"

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 233
    iput-object p2, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mCachedIntent:Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private postUiExit(I)V
    .locals 2

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "UI is  gone"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/android/app/UserInputManager$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/app/UserInputManager$3;-><init>(Lcom/netflix/mediaclient/android/app/UserInputManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 176
    :cond_0
    return-void
.end method

.method private postUiStart(I)V
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 132
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "UI may just started, only one activity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/android/app/UserInputManager$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/app/UserInputManager$2;-><init>(Lcom/netflix/mediaclient/android/app/UserInputManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/netflix/mediaclient/android/app/ApplicationStateListener;)Z
    .locals 2

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 102
    :goto_0
    monitor-exit p0

    return v0

    .line 101
    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "Listener already exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkState()V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->notifyOthersOfLastUserInteraction()V

    .line 442
    return-void
.end method

.method public declared-synchronized getAndClearCachedIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 462
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mCachedIntent:Landroid/content/Intent;

    .line 463
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mCachedIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-object v0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNumberOfActivities()I
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTimeSinceLastUserInteraction()J
    .locals 4

    .prologue
    .line 434
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mLastUserInteraction:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isApplicationBackground()Z
    .locals 1

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->isApplicationInForeground()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApplicationInForeground()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesVisibleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->postUiStart(I)V

    .line 334
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->postUiExit(I)V

    .line 345
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 355
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;

    if-eqz v0, :cond_0

    .line 356
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "NetflixComLaunchActivity, ignore"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesVisibleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 359
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/app/UserInputManager;->postOnFocusLost(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 373
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;

    if-eqz v0, :cond_0

    .line 374
    const-string/jumbo v0, "nf_input"

    const-string/jumbo v1, "NetflixComLaunchActivity, ignore"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->isApplicationInForeground()Z

    move-result v0

    .line 377
    iget-object v1, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mActivitiesVisibleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 381
    instance-of v1, p1, Lcom/netflix/mediaclient/ui/launch/UIWebViewActivity;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    if-eqz v1, :cond_3

    .line 382
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 383
    if-eqz v1, :cond_2

    .line 384
    const-string/jumbo v2, "nf_input"

    const-string/jumbo v3, "LaunchActivity: Foreground with intent"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 389
    :goto_1
    invoke-direct {p0, p1, v1, v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->postOnForeground(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 393
    :goto_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/app/UserInputManager;->postOnFocusGain(Landroid/content/Context;)V

    goto :goto_0

    .line 386
    :cond_2
    const-string/jumbo v2, "nf_input"

    const-string/jumbo v3, "LaunchActivity: Foreground without intent"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 391
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->postOnForeground(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_2
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 415
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/app/UserInputManager;->postOnBackground(Landroid/content/Context;)V

    .line 426
    return-void
.end method

.method public removeListener(Lcom/netflix/mediaclient/android/app/ApplicationStateListener;)Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateUserInteraction()V
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 121
    iget-object v2, p0, Lcom/netflix/mediaclient/android/app/UserInputManager;->mLastUserInteraction:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 122
    return-void
.end method
