.class public abstract Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;
.super Ljava/lang/Object;
.source "AsyncTaskCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 32
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->shouldUseLowMemConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    sput v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->MAXIMUM_POOL_SIZE:I

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 46
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 52
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x4

    sget v3, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 63
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 68
    new-instance v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$InternalHandler;-><init>(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$1;)V

    sput-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->sHandler:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$InternalHandler;

    .line 70
    sget-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void

    .line 32
    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->PENDING:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mStatus:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    new-instance v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$2;-><init>(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mWorker:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$WorkerRunnable;

    .line 123
    new-instance v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$3;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mWorker:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$3;-><init>(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 138
    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 433
    sget-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 434
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->onCancelled(Ljava/lang/Object;)V

    .line 463
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->FINISHED:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mStatus:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    .line 464
    return-void

    .line 461
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->sHandler:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$InternalHandler;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$InternalHandler;->getLooper()Landroid/os/Looper;

    .line 101
    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 149
    sget-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->sHandler:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$InternalHandler;

    new-instance v1, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;-><init>(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 152
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 142
    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 105
    sput-object p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 106
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 363
    sget-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mStatus:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    sget-object v1, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->PENDING:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    if-eq v0, v1, :cond_0

    .line 403
    sget-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$4;->$SwitchMap$com$netflix$mediaclient$android$osp$AsyncTaskCompat$Status:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mStatus:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 414
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;->RUNNING:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mStatus:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    .line 416
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->onPreExecute()V

    .line 418
    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mWorker:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$WorkerRunnable;

    iput-object p2, v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 421
    return-object p0

    .line 405
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mStatus:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->onCancelled()V

    .line 234
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 204
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 216
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    sget-object v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->sHandler:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;-><init>(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 455
    :cond_0
    return-void
.end method
