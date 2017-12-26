.class Lcom/google/android/gms/location/internal/zze$2;
.super Lcom/google/android/gms/location/internal/zze$zza;


# instance fields
.field final synthetic zzalz:Landroid/app/PendingIntent;

.field final synthetic zzayG:Lcom/google/android/gms/location/internal/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/zze;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zze$2;->zzayG:Lcom/google/android/gms/location/internal/zze;

    iput-object p3, p0, Lcom/google/android/gms/location/internal/zze$2;->zzalz:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/location/internal/zze$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/internal/zzj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/internal/zze$2;->zza(Lcom/google/android/gms/location/internal/zzj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/internal/zzj;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/internal/zze$2$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/internal/zze$2$1;-><init>(Lcom/google/android/gms/location/internal/zze$2;)V

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zze$2;->zzalz:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/location/internal/zzj;->zza(Landroid/app/PendingIntent;Lcom/google/android/gms/location/zze$zzb;)V

    return-void
.end method
