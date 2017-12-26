.class public Lcom/google/android/gms/cast/MediaQueueItem$Builder;
.super Ljava/lang/Object;


# instance fields
.field private final zzRZ:Lcom/google/android/gms/cast/MediaQueueItem;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/MediaInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaQueueItem$1;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzRZ:Lcom/google/android/gms/cast/MediaQueueItem;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lcom/google/android/gms/cast/MediaQueueItem;Lcom/google/android/gms/cast/MediaQueueItem$1;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzRZ:Lcom/google/android/gms/cast/MediaQueueItem;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-direct {v0, p1}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzRZ:Lcom/google/android/gms/cast/MediaQueueItem;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzRZ:Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaQueueItem;->zzlq()V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzRZ:Lcom/google/android/gms/cast/MediaQueueItem;

    return-object v0
.end method

.method public clearItemId()Lcom/google/android/gms/cast/MediaQueueItem$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzRZ:Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/MediaQueueItem;->zzaC(I)V

    return-object p0
.end method

.method public setActiveTrackIds([J)Lcom/google/android/gms/cast/MediaQueueItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzRZ:Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaQueueItem;->zza([J)V

    return-object p0
.end method

.method public setAutoplay(Z)Lcom/google/android/gms/cast/MediaQueueItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzRZ:Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaQueueItem;->zzP(Z)V

    return-object p0
.end method

.method public setCustomData(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaQueueItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzRZ:Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaQueueItem;->setCustomData(Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public setPreloadTime(D)Lcom/google/android/gms/cast/MediaQueueItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzRZ:Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/MediaQueueItem;->zzc(D)V

    return-object p0
.end method

.method public setStartTime(D)Lcom/google/android/gms/cast/MediaQueueItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzRZ:Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/MediaQueueItem;->zzb(D)V

    return-object p0
.end method
