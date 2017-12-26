.class Lcom/google/android/gms/internal/zzkn$1;
.super Lcom/google/android/gms/internal/zzko$zza;


# instance fields
.field final synthetic zzabk:Lcom/google/android/gms/internal/zzkn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkn;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkn$1;->zzabk:Lcom/google/android/gms/internal/zzkn;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzko$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzkp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzkn$1;->zza(Lcom/google/android/gms/internal/zzkp;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzkp;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzkp;->zznM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzkr;

    new-instance v1, Lcom/google/android/gms/internal/zzkn$zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzkn$zza;-><init>(Lcom/google/android/gms/common/api/zza$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzkr;->zza(Lcom/google/android/gms/internal/zzkq;)V

    return-void
.end method
