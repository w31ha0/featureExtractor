.class Lcom/google/android/gms/internal/zzqw$1;
.super Lcom/google/android/gms/wallet/Wallet$zzb;


# instance fields
.field final synthetic zzaSo:Lcom/google/android/gms/internal/zzqw;

.field final synthetic zzaww:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqw$1;->zzaSo:Lcom/google/android/gms/internal/zzqw;

    iput p3, p0, Lcom/google/android/gms/internal/zzqw$1;->zzaww:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wallet/Wallet$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzqx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqw$1;->zza(Lcom/google/android/gms/internal/zzqx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzqx;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzqw$1;->zzaww:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqx;->zzjB(I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzXP:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqw$1;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
