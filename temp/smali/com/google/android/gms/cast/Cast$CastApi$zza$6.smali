.class Lcom/google/android/gms/cast/Cast$CastApi$zza$6;
.super Lcom/google/android/gms/internal/zzyv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$zza;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzyv;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzyq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$zza$6;->zza(Lcom/google/android/gms/internal/zzyq;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzyq;)V
    .locals 1

    :try_start_0
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/zzyq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzaad$zzb;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$CastApi$zza$6;->zzck(I)V

    goto :goto_0
.end method
