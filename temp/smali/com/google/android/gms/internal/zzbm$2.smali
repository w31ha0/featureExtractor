.class Lcom/google/android/gms/internal/zzbm$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/zzbp$zza;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzrP:Lcom/google/android/gms/internal/zzbm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbm$2;->zzrP:Lcom/google/android/gms/internal/zzbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzbp$zza;

    check-cast p2, Lcom/google/android/gms/internal/zzbp$zza;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbm$2;->zza(Lcom/google/android/gms/internal/zzbp$zza;Lcom/google/android/gms/internal/zzbp$zza;)I

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbp$zza;Lcom/google/android/gms/internal/zzbp$zza;)I
    .locals 4

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzbp$zza;->value:J

    iget-wide v2, p2, Lcom/google/android/gms/internal/zzbp$zza;->value:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
