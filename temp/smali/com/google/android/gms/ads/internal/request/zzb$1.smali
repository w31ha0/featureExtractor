.class Lcom/google/android/gms/ads/internal/request/zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzCg:Lcom/google/android/gms/ads/internal/request/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzb$1;->zzCg:Lcom/google/android/gms/ads/internal/request/zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb$1;->zzCg:Lcom/google/android/gms/ads/internal/request/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zzb;->onStop()V

    return-void
.end method
