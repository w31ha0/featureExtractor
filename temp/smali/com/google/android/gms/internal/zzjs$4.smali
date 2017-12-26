.class Lcom/google/android/gms/internal/zzjs$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzTB:Lcom/google/android/gms/internal/zzjs;

.field final synthetic zzTG:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjs;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjs$4;->zzTB:Lcom/google/android/gms/internal/zzjs;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzjs$4;->zzTG:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzjs$4;->zzm(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public zzm(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs$4;->zzTB:Lcom/google/android/gms/internal/zzjs;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzjs$4;->zzTG:J

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzjs;->zzb(JI)V

    :cond_0
    return-void
.end method
