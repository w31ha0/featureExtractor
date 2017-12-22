.class Lcom/netflix/android/widgetry/buffet/BuffetManager;
.super Ljava/lang/Object;
.source "BuffetManager.java"


# static fields
.field private static final LONG_DURATION_MS:I = 0xabe

.field static final MSG_TIMEOUT:I = 0x0

.field private static final SHORT_DURATION_MS:I = 0x5dc

.field private static sBuffetManager:Lcom/netflix/android/widgetry/buffet/BuffetManager;


# instance fields
.field private mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/netflix/android/widgetry/buffet/BuffetManager$1;

    invoke-direct {v2, p0}, Lcom/netflix/android/widgetry/buffet/BuffetManager$1;-><init>(Lcom/netflix/android/widgetry/buffet/BuffetManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method private cancelSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;I)Z
    .locals 2

    .prologue
    .line 195
    iget-object v0, p1, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    .line 196
    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 199
    invoke-interface {v0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;->dismiss(I)V

    .line 200
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->sBuffetManager:Lcom/netflix/android/widgetry/buffet/BuffetManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/netflix/android/widgetry/buffet/BuffetManager;

    invoke-direct {v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;-><init>()V

    sput-object v0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->sBuffetManager:Lcom/netflix/android/widgetry/buffet/BuffetManager;

    .line 33
    :cond_0
    sget-object v0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->sBuffetManager:Lcom/netflix/android/widgetry/buffet/BuffetManager;

    return-object v0
.end method

.method private isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->isSnackbar(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNextSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->isSnackbar(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scheduleTimeoutLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;)V
    .locals 6

    .prologue
    .line 214
    iget v0, p1, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 219
    :cond_0
    const/16 v0, 0xabe

    .line 220
    iget v1, p1, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    if-lez v1, :cond_2

    .line 221
    iget v0, p1, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    .line 225
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 226
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 222
    :cond_2
    iget v1, p1, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 223
    const/16 v0, 0x5dc

    goto :goto_1
.end method

.method private showNextSnackbarLocked(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    .line 182
    iput-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    .line 184
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    iget-object v0, v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    .line 185
    if-eqz v0, :cond_1

    .line 186
    invoke-interface {v0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;->show(Z)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iput-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    goto :goto_0
.end method


# virtual methods
.method public cancelTimeout(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 140
    :cond_0
    monitor-exit v1

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dismiss(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;I)V
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {p0, v0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->cancelSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;I)Z

    .line 104
    :cond_0
    :goto_0
    monitor-exit v1

    .line 105
    return-void

    .line 101
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isNextSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {p0, v0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->cancelSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;I)Z

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleTimeout(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;)V
    .locals 2

    .prologue
    .line 230
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-ne v0, p1, :cond_1

    .line 232
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->cancelSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;I)Z

    .line 234
    :cond_1
    monitor-exit v1

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCurrent(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z
    .locals 2

    .prologue
    .line 152
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCurrentOrNext(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isNextSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDismissed(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    .line 116
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    iget-boolean v0, v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->animated:Z

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->showNextSnackbarLocked(Z)V

    .line 120
    :cond_0
    monitor-exit v1

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onShown(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->scheduleTimeoutLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;)V

    .line 132
    :cond_0
    monitor-exit v1

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreTimeout(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V
    .locals 2

    .prologue
    .line 144
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->scheduleTimeoutLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;)V

    .line 148
    :cond_0
    monitor-exit v1

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public show(ILcom/netflix/android/widgetry/buffet/BuffetManager$Callback;Z)V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    invoke-direct {p0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isCurrentSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    iput p1, v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    .line 73
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->scheduleTimeoutLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;)V

    .line 75
    monitor-exit v1

    .line 95
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-direct {p0, p2}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->isNextSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    iput p1, v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;->duration:I

    .line 84
    :goto_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->cancelSnackbarLocked(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    monitor-exit v1

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 81
    :cond_1
    :try_start_1
    new-instance v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-direct {v0, p1, p3, p2}, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;-><init>(IZLcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mNextSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    goto :goto_1

    .line 90
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager;->mCurrentSnackbar:Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    .line 92
    invoke-direct {p0, p3}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->showNextSnackbarLocked(Z)V

    .line 94
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
