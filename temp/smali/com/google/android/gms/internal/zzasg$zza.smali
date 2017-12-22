.class Lcom/google/android/gms/internal/zzasg$zza;
.super Lcom/google/android/gms/location/zzj$zza;


# instance fields
.field private final zzaDf:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/location/LocationCallback;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg$zza;->zzaDf:Lcom/google/android/gms/internal/zzabh;

    new-instance v1, Lcom/google/android/gms/internal/zzasg$zza$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzasg$zza$2;-><init>(Lcom/google/android/gms/internal/zzasg$zza;Lcom/google/android/gms/location/LocationAvailability;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    return-void
.end method

.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasg$zza;->zzaDf:Lcom/google/android/gms/internal/zzabh;

    new-instance v1, Lcom/google/android/gms/internal/zzasg$zza$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzasg$zza$1;-><init>(Lcom/google/android/gms/internal/zzasg$zza;Lcom/google/android/gms/location/LocationResult;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    return-void
.end method
