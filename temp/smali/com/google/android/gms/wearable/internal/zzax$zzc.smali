.class public Lcom/google/android/gms/wearable/internal/zzax$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;


# instance fields
.field private final zzOt:Lcom/google/android/gms/common/api/Status;

.field private final zzaUK:Lcom/google/android/gms/wearable/Node;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzax$zzc;->zzOt:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzax$zzc;->zzaUK:Lcom/google/android/gms/wearable/Node;

    return-void
.end method


# virtual methods
.method public getNode()Lcom/google/android/gms/wearable/Node;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzax$zzc;->zzaUK:Lcom/google/android/gms/wearable/Node;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzax$zzc;->zzOt:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
