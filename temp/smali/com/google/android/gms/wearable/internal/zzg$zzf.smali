.class final Lcom/google/android/gms/wearable/internal/zzg$zzf;
.super Lcom/google/android/gms/wearable/internal/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzf",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private zzaTC:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

.field private zzaTD:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzg$zzf;->zzaTC:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzg$zzf;->zzaTD:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;Ljava/lang/String;Lcom/google/android/gms/wearable/internal/zzg$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzg$zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzg$zzf;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzg$zzf;->zza(Lcom/google/android/gms/wearable/internal/zzbk;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/wearable/internal/zzbk;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzg$zzf;->zzaTC:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzg$zzf;->zzaTD:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzbk;->zzb(Lcom/google/android/gms/common/api/zza$zzb;Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/wearable/internal/zzg$zzf;->zzaTC:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    iput-object v2, p0, Lcom/google/android/gms/wearable/internal/zzg$zzf;->zzaTD:Ljava/lang/String;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzg$zzf;->zzaTC:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzg$zzf;->zzaTD:Ljava/lang/String;

    return-object p1
.end method
