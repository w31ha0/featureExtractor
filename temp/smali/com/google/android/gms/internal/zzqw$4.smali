.class Lcom/google/android/gms/internal/zzqw$4;
.super Lcom/google/android/gms/wallet/Wallet$zzb;


# instance fields
.field final synthetic zzaSo:Lcom/google/android/gms/internal/zzqw;

.field final synthetic zzaSr:Ljava/lang/String;

.field final synthetic zzaSs:Ljava/lang/String;

.field final synthetic zzaww:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqw$4;->zzaSo:Lcom/google/android/gms/internal/zzqw;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqw$4;->zzaSr:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqw$4;->zzaSs:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/zzqw$4;->zzaww:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wallet/Wallet$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzqx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqw$4;->zza(Lcom/google/android/gms/internal/zzqx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzqx;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqw$4;->zzaSr:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqw$4;->zzaSs:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/zzqw$4;->zzaww:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzqx;->zze(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzXP:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqw$4;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
