.class final Lcom/google/android/gms/appstate/AppStateManager$4;
.super Lcom/google/android/gms/appstate/AppStateManager$zze;


# instance fields
.field final synthetic zzOm:I

.field final synthetic zzOn:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;I[B)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/appstate/AppStateManager$4;->zzOm:I

    iput-object p3, p0, Lcom/google/android/gms/appstate/AppStateManager$4;->zzOn:[B

    invoke-direct {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$zze;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzjb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$4;->zza(Lcom/google/android/gms/internal/zzjb;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzjb;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/appstate/AppStateManager$4;->zzOm:I

    iget-object v1, p0, Lcom/google/android/gms/appstate/AppStateManager$4;->zzOn:[B

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/zzjb;->zza(Lcom/google/android/gms/common/api/zza$zzb;I[B)V

    return-void
.end method
