.class Lcom/google/android/gms/location/internal/zzd$6;
.super Lcom/google/android/gms/location/internal/zzd$zza;


# instance fields
.field final synthetic zzayA:Lcom/google/android/gms/location/internal/zzd;

.field final synthetic zzayu:Landroid/app/PendingIntent;

.field final synthetic zzayy:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/zzd;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzd$6;->zzayA:Lcom/google/android/gms/location/internal/zzd;

    iput-object p3, p0, Lcom/google/android/gms/location/internal/zzd$6;->zzayy:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Lcom/google/android/gms/location/internal/zzd$6;->zzayu:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/location/internal/zzd$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/internal/zzj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/internal/zzd$6;->zza(Lcom/google/android/gms/location/internal/zzj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/internal/zzj;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzd$6;->zzayy:Lcom/google/android/gms/location/LocationRequest;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzd$6;->zzayu:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/internal/zzj;->zzb(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzXP:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/internal/zzd$6;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
