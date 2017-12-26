.class Lcom/google/android/gms/drive/internal/zzq$1;
.super Lcom/google/android/gms/drive/internal/zzq$zzg;


# instance fields
.field final synthetic zzaeG:Lcom/google/android/gms/drive/query/Query;

.field final synthetic zzaeH:Lcom/google/android/gms/drive/internal/zzq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzq;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzq$1;->zzaeH:Lcom/google/android/gms/drive/internal/zzq;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/zzq$1;->zzaeG:Lcom/google/android/gms/drive/query/Query;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/zzq$zzg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzs;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzq$1;->zza(Lcom/google/android/gms/drive/internal/zzs;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzs;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzs;->zzpB()Lcom/google/android/gms/drive/internal/zzak;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/QueryRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzq$1;->zzaeG:Lcom/google/android/gms/drive/query/Query;

    invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/QueryRequest;-><init>(Lcom/google/android/gms/drive/query/Query;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/zzq$zzi;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/zzq$zzi;-><init>(Lcom/google/android/gms/common/api/zza$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/zzak;->zza(Lcom/google/android/gms/drive/internal/QueryRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    return-void
.end method
