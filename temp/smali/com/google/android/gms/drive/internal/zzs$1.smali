.class Lcom/google/android/gms/drive/internal/zzs$1;
.super Lcom/google/android/gms/drive/internal/zzr$zza;


# instance fields
.field final synthetic zzaeU:Lcom/google/android/gms/drive/DriveId;

.field final synthetic zzaeV:I

.field final synthetic zzaeW:Lcom/google/android/gms/drive/events/ChangesAvailableOptions;

.field final synthetic zzaeX:Lcom/google/android/gms/drive/internal/zzac;

.field final synthetic zzaeY:Lcom/google/android/gms/drive/internal/zzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzs;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/ChangesAvailableOptions;Lcom/google/android/gms/drive/internal/zzac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzs$1;->zzaeY:Lcom/google/android/gms/drive/internal/zzs;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/zzs$1;->zzaeU:Lcom/google/android/gms/drive/DriveId;

    iput p4, p0, Lcom/google/android/gms/drive/internal/zzs$1;->zzaeV:I

    iput-object p5, p0, Lcom/google/android/gms/drive/internal/zzs$1;->zzaeW:Lcom/google/android/gms/drive/events/ChangesAvailableOptions;

    iput-object p6, p0, Lcom/google/android/gms/drive/internal/zzs$1;->zzaeX:Lcom/google/android/gms/drive/internal/zzac;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/zzr$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzs;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzs$1;->zza(Lcom/google/android/gms/drive/internal/zzs;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzs;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzs;->zzpB()Lcom/google/android/gms/drive/internal/zzak;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzs$1;->zzaeU:Lcom/google/android/gms/drive/DriveId;

    iget v3, p0, Lcom/google/android/gms/drive/internal/zzs$1;->zzaeV:I

    iget-object v4, p0, Lcom/google/android/gms/drive/internal/zzs$1;->zzaeW:Lcom/google/android/gms/drive/events/ChangesAvailableOptions;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;-><init>(Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/ChangesAvailableOptions;)V

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzs$1;->zzaeX:Lcom/google/android/gms/drive/internal/zzac;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gms/drive/internal/zzbq;

    invoke-direct {v4, p0}, Lcom/google/android/gms/drive/internal/zzbq;-><init>(Lcom/google/android/gms/common/api/zza$zzb;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/zzak;->zza(Lcom/google/android/gms/drive/internal/AddEventListenerRequest;Lcom/google/android/gms/drive/internal/zzam;Ljava/lang/String;Lcom/google/android/gms/drive/internal/zzal;)V

    return-void
.end method
