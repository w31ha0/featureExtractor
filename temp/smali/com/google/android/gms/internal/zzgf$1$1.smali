.class Lcom/google/android/gms/internal/zzgf$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzhx$zzc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzhx$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzbe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzDD:Lcom/google/android/gms/internal/zzcd;

.field final synthetic zzDE:Lcom/google/android/gms/internal/zzgf$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgf$1;Lcom/google/android/gms/internal/zzcd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgf$1$1;->zzDE:Lcom/google/android/gms/internal/zzgf$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgf$1$1;->zzDD:Lcom/google/android/gms/internal/zzcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzbe;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgf$1$1;->zzDE:Lcom/google/android/gms/internal/zzgf$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgf$1;->zzDA:Lcom/google/android/gms/internal/zzce;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf$1$1;->zzDD:Lcom/google/android/gms/internal/zzcd;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "jsf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzce;->zza(Lcom/google/android/gms/internal/zzcd;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgf$1$1;->zzDE:Lcom/google/android/gms/internal/zzgf$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgf$1;->zzDA:Lcom/google/android/gms/internal/zzce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzce;->zzdp()V

    const-string v0, "/invalidRequest"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf$1$1;->zzDE:Lcom/google/android/gms/internal/zzgf$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgf$1;->zzDz:Lcom/google/android/gms/internal/zzgh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgh;->zzDO:Lcom/google/android/gms/internal/zzdg;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbe;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdg;)V

    const-string v0, "/loadAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf$1$1;->zzDE:Lcom/google/android/gms/internal/zzgf$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgf$1;->zzDz:Lcom/google/android/gms/internal/zzgh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgh;->zzDP:Lcom/google/android/gms/internal/zzdg;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbe;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdg;)V

    :try_start_0
    const-string v0, "AFMA_buildAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf$1$1;->zzDE:Lcom/google/android/gms/internal/zzgf$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgf$1;->zzDC:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbe;->zza(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic zzc(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbe;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzgf$1$1;->zzb(Lcom/google/android/gms/internal/zzbe;)V

    return-void
.end method
