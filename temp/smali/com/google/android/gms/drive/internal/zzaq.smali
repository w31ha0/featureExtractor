.class public final Lcom/google/android/gms/drive/internal/zzaq;
.super Lcom/google/android/gms/internal/zzrh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrh",
        "<",
        "Lcom/google/android/gms/drive/internal/zzaq;",
        ">;"
    }
.end annotation


# instance fields
.field public versionCode:I

.field public zzafU:J

.field public zzafV:J

.field public zzafW:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/zzaq;->zzpG()Lcom/google/android/gms/drive/internal/zzaq;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/drive/internal/zzaq;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzaq;

    iget v1, p0, Lcom/google/android/gms/drive/internal/zzaq;->versionCode:I

    iget v2, p1, Lcom/google/android/gms/drive/internal/zzaq;->versionCode:I

    if-ne v1, v2, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafU:J

    iget-wide v3, p1, Lcom/google/android/gms/drive/internal/zzaq;->zzafU:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafV:J

    iget-wide v3, p1, Lcom/google/android/gms/drive/internal/zzaq;->zzafV:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafW:J

    iget-wide v3, p1, Lcom/google/android/gms/drive/internal/zzaq;->zzafW:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzaq;->zza(Lcom/google/android/gms/internal/zzrh;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    const/16 v5, 0x20

    iget v0, p0, Lcom/google/android/gms/drive/internal/zzaq;->versionCode:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafU:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafU:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafV:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafV:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafW:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafW:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/zzaq;->zzBI()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected zzB()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzrh;->zzB()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzaq;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafU:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrg;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafV:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrg;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafW:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrg;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrg;)V
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/drive/internal/zzaq;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrg;->zzy(II)V

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafU:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzc(IJ)V

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafV:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzc(IJ)V

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafW:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzrg;->zzc(IJ)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzrh;->zza(Lcom/google/android/gms/internal/zzrg;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzrn;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzaq;->zzm(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/drive/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public zzm(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/drive/internal/zzaq;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBr()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/drive/internal/zzaq;->zza(Lcom/google/android/gms/internal/zzrf;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBu()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzaq;->versionCode:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafU:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafV:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzBx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafW:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public zzpG()Lcom/google/android/gms/drive/internal/zzaq;
    .locals 3

    const-wide/16 v1, -0x1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzaq;->versionCode:I

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafU:J

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafV:J

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzafW:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzaVU:Lcom/google/android/gms/internal/zzrj;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/zzaq;->zzaWf:I

    return-object p0
.end method
