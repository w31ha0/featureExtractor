.class public final Lcom/google/android/gms/internal/zznj$zza$zza;
.super Lcom/google/android/gms/internal/zzrh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrh",
        "<",
        "Lcom/google/android/gms/internal/zznj$zza$zza;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzawl:[Lcom/google/android/gms/internal/zznj$zza$zza;


# instance fields
.field public viewId:I

.field public zzawm:Ljava/lang/String;

.field public zzawn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznj$zza$zza;->zztW()Lcom/google/android/gms/internal/zznj$zza$zza;

    return-void
.end method

.method public static zztV()[Lcom/google/android/gms/internal/zznj$zza$zza;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawl:[Lcom/google/android/gms/internal/zznj$zza$zza;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzrl;->zzaWe:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawl:[Lcom/google/android/gms/internal/zznj$zza$zza;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zznj$zza$zza;

    sput-object v0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawl:[Lcom/google/android/gms/internal/zznj$zza$zza;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawl:[Lcom/google/android/gms/internal/zznj$zza$zza;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/zznj$zza$zza;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zznj$zza$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawm:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawm:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawn:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawn:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->viewId:I

    iget v2, p1, Lcom/google/android/gms/internal/zznj$zza$zza;->viewId:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zznj$zza$zza;->zza(Lcom/google/android/gms/internal/zzrh;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawm:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawn:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawm:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawn:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->viewId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznj$zza$zza;->zzBI()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method protected zzB()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrh;->zzB()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawm:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawm:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzk(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawn:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawn:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzk(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->viewId:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->viewId:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrg;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawm:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawm:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzb(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawn:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzb(ILjava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->viewId:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->viewId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzy(II)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzrh;->zza(Lcom/google/android/gms/internal/zzrg;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzrn;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zznj$zza$zza;->zzq(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zznj$zza$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzq(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zznj$zza$zza;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zznj$zza$zza;->zza(Lcom/google/android/gms/internal/zzrf;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawm:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawn:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->viewId:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public zztW()Lcom/google/android/gms/internal/zznj$zza$zza;
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawm:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzawn:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->viewId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzaVU:Lcom/google/android/gms/internal/zzrj;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zznj$zza$zza;->zzaWf:I

    return-object p0
.end method
