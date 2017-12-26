.class Lcom/google/android/gms/internal/zzoq$3;
.super Lcom/google/android/gms/internal/zzoq$zzc;


# instance fields
.field final synthetic zzaFE:Ljava/lang/String;

.field final synthetic zzaFH:J

.field final synthetic zzaFJ:Lcom/google/android/gms/internal/zzoq;

.field final synthetic zzaFK:Lcom/google/android/gms/common/api/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzoq;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/common/api/zzi;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoq$3;->zzaFJ:Lcom/google/android/gms/internal/zzoq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzoq$3;->zzaFE:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzoq$3;->zzaFH:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzoq$3;->zzaFK:Lcom/google/android/gms/common/api/zzi;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzoq$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzoq$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzop;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzoq$3;->zza(Lcom/google/android/gms/internal/zzop;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzop;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoq$3;->zzaFE:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzoq$3;->zzaFH:J

    iget-object v5, p0, Lcom/google/android/gms/internal/zzoq$3;->zzaFK:Lcom/google/android/gms/common/api/zzi;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzop;->zza(Lcom/google/android/gms/common/api/zza$zzb;Ljava/lang/String;JLcom/google/android/gms/common/api/zzi;)V

    return-void
.end method
