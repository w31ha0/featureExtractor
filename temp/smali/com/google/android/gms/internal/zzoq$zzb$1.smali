.class Lcom/google/android/gms/internal/zzoq$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;


# instance fields
.field final synthetic zzOl:Lcom/google/android/gms/common/api/Status;

.field final synthetic zzaFN:Lcom/google/android/gms/internal/zzoq$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzoq$zzb;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoq$zzb$1;->zzaFN:Lcom/google/android/gms/internal/zzoq$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzoq$zzb$1;->zzOl:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalEndpointName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoq$zzb$1;->zzOl:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
