.class Lcom/google/android/gms/internal/zzie$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzf;


# instance fields
.field private zzHc:Lcom/google/android/gms/ads/internal/overlay/zzf;

.field private zzHn:Lcom/google/android/gms/internal/zzid;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/ads/internal/overlay/zzf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzie$zzb;->zzHn:Lcom/google/android/gms/internal/zzid;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzie$zzb;->zzHc:Lcom/google/android/gms/ads/internal/overlay/zzf;

    return-void
.end method


# virtual methods
.method public zzaV()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzie$zzb;->zzHc:Lcom/google/android/gms/ads/internal/overlay/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzf;->zzaV()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzie$zzb;->zzHn:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzid;->zzgA()V

    return-void
.end method

.method public zzaW()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzie$zzb;->zzHc:Lcom/google/android/gms/ads/internal/overlay/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzf;->zzaW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzie$zzb;->zzHn:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzid;->zzew()V

    return-void
.end method
