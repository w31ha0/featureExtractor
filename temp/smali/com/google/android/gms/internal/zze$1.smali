.class Lcom/google/android/gms/internal/zze$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final synthetic zzt:Landroid/os/Handler;

.field final synthetic zzu:Lcom/google/android/gms/internal/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zze;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zze$1;->zzu:Lcom/google/android/gms/internal/zze;

    iput-object p2, p0, Lcom/google/android/gms/internal/zze$1;->zzt:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zze$1;->zzt:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
