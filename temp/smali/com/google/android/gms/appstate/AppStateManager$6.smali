.class final Lcom/google/android/gms/appstate/AppStateManager$6;
.super Lcom/google/android/gms/appstate/AppStateManager$zze;


# instance fields
.field final synthetic zzOm:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/appstate/AppStateManager$6;->zzOm:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$zze;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzjb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$6;->zza(Lcom/google/android/gms/internal/zzjb;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzjb;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/appstate/AppStateManager$6;->zzOm:I

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/zzjb;->zzb(Lcom/google/android/gms/common/api/zza$zzb;I)V

    return-void
.end method
