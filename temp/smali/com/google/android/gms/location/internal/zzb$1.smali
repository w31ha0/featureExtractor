.class Lcom/google/android/gms/location/internal/zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/internal/zzn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/location/internal/zzn",
        "<",
        "Lcom/google/android/gms/location/internal/zzg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzayx:Lcom/google/android/gms/location/internal/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzb$1;->zzayx:Lcom/google/android/gms/location/internal/zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zznL()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzb$1;->zzayx:Lcom/google/android/gms/location/internal/zzb;

    invoke-static {v0}, Lcom/google/android/gms/location/internal/zzb;->zza(Lcom/google/android/gms/location/internal/zzb;)V

    return-void
.end method

.method public synthetic zznM()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/zzb$1;->zzut()Lcom/google/android/gms/location/internal/zzg;

    move-result-object v0

    return-object v0
.end method

.method public zzut()Lcom/google/android/gms/location/internal/zzg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzb$1;->zzayx:Lcom/google/android/gms/location/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/zzb;->zznM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzg;

    return-object v0
.end method
