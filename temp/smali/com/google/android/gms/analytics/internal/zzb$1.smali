.class Lcom/google/android/gms/analytics/internal/zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzJr:I

.field final synthetic zzJs:Lcom/google/android/gms/analytics/internal/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzb;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzb$1;->zzJs:Lcom/google/android/gms/analytics/internal/zzb;

    iput p2, p0, Lcom/google/android/gms/analytics/internal/zzb$1;->zzJr:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzb$1;->zzJs:Lcom/google/android/gms/analytics/internal/zzb;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzb;->zza(Lcom/google/android/gms/analytics/internal/zzb;)Lcom/google/android/gms/analytics/internal/zzl;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/analytics/internal/zzb$1;->zzJr:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzl;->zzs(J)V

    return-void
.end method
