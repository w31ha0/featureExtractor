.class Lcom/google/android/gms/internal/zzns$zza;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field final synthetic zzaEn:Lcom/google/android/gms/internal/zzns;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzns;)V
    .locals 7

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzns$zza;->zzaEn:Lcom/google/android/gms/internal/zzns;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    new-instance v0, Lcom/google/android/gms/internal/zzns$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzns$zzb;-><init>(Lcom/google/android/gms/internal/zzns$1;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzns$zza;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzns$zza$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzns$zza$1;-><init>(Lcom/google/android/gms/internal/zzns$zza;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method
