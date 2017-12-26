.class Lcom/google/android/gms/drive/internal/zzs$2;
.super Lcom/google/android/gms/drive/internal/zzr$zza;


# instance fields
.field final synthetic zzaeU:Lcom/google/android/gms/drive/DriveId;

.field final synthetic zzaeV:I

.field final synthetic zzaeX:Lcom/google/android/gms/drive/internal/zzac;

.field final synthetic zzaeY:Lcom/google/android/gms/drive/internal/zzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzs;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/internal/zzac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzs$2;->zzaeY:Lcom/google/android/gms/drive/internal/zzs;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/zzs$2;->zzaeU:Lcom/google/android/gms/drive/DriveId;

    iput p4, p0, Lcom/google/android/gms/drive/internal/zzs$2;->zzaeV:I

    iput-object p5, p0, Lcom/google/android/gms/drive/internal/zzs$2;->zzaeX:Lcom/google/android/gms/drive/internal/zzac;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/zzr$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzs;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzs$2;->zza(Lcom/google/android/gms/drive/internal/zzs;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzs;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzs;->zzpB()Lcom/google/android/gms/drive/internal/zzak;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzs$2;->zzaeU:Lcom/google/android/gms/drive/DriveId;

    iget v3, p0, Lcom/google/android/gms/drive/internal/zzs$2;->zzaeV:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;-><init>(Lcom/google/android/gms/drive/DriveId;I)V

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzs$2;->zzaeX:Lcom/google/android/gms/drive/internal/zzac;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gms/drive/internal/zzbq;

    invoke-direct {v4, p0}, Lcom/google/android/gms/drive/internal/zzbq;-><init>(Lcom/google/android/gms/common/api/zza$zzb;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/zzak;->zza(Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;Lcom/google/android/gms/drive/internal/zzam;Ljava/lang/String;Lcom/google/android/gms/drive/internal/zzal;)V

    return-void
.end method
