.class Lcom/google/android/gms/drive/internal/zzq$2;
.super Lcom/google/android/gms/drive/internal/zzq$zzb;


# instance fields
.field final synthetic zzaeH:Lcom/google/android/gms/drive/internal/zzq;

.field final synthetic zzaeI:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzq;Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzq$2;->zzaeH:Lcom/google/android/gms/drive/internal/zzq;

    iput p3, p0, Lcom/google/android/gms/drive/internal/zzq$2;->zzaeI:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/zzq$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzs;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzq$2;->zza(Lcom/google/android/gms/drive/internal/zzs;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzs;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzs;->zzpB()Lcom/google/android/gms/drive/internal/zzak;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/CreateContentsRequest;

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzq$2;->zzaeI:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/CreateContentsRequest;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/drive/internal/zzq$zzh;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/zzq$zzh;-><init>(Lcom/google/android/gms/common/api/zza$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/zzak;->zza(Lcom/google/android/gms/drive/internal/CreateContentsRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    return-void
.end method
