.class Lcom/google/android/gms/internal/zzmz$1;
.super Lcom/google/android/gms/internal/zzlx$zzc;


# instance fields
.field final synthetic zzakX:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

.field final synthetic zzakY:Lcom/google/android/gms/internal/zzmz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmz;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/StartBleScanRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmz$1;->zzakY:Lcom/google/android/gms/internal/zzmz;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzmz$1;->zzakX:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzlx$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzlx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmz$1;->zza(Lcom/google/android/gms/internal/zzlx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzlx;)V
    .locals 5

    new-instance v1, Lcom/google/android/gms/internal/zzng;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzng;-><init>(Lcom/google/android/gms/common/api/zza$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzlx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzlx;->zznM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmi;

    new-instance v3, Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzmz$1;->zzakX:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;-><init>(Lcom/google/android/gms/fitness/request/StartBleScanRequest;Lcom/google/android/gms/internal/zzmu;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzmi;->zza(Lcom/google/android/gms/fitness/request/StartBleScanRequest;)V

    return-void
.end method
