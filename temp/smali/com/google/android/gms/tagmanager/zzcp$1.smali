.class Lcom/google/android/gms/tagmanager/zzcp$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzm$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/zzm$zza",
        "<",
        "Lcom/google/android/gms/internal/zzqf$zza;",
        "Lcom/google/android/gms/tagmanager/zzbw",
        "<",
        "Lcom/google/android/gms/internal/zzag$zza;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic zzaNq:Lcom/google/android/gms/tagmanager/zzcp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcp$1;->zzaNq:Lcom/google/android/gms/tagmanager/zzcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzqf$zza;

    check-cast p2, Lcom/google/android/gms/tagmanager/zzbw;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzcp$1;->zza(Lcom/google/android/gms/internal/zzqf$zza;Lcom/google/android/gms/tagmanager/zzbw;)I

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzqf$zza;Lcom/google/android/gms/tagmanager/zzbw;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqf$zza;",
            "Lcom/google/android/gms/tagmanager/zzbw",
            "<",
            "Lcom/google/android/gms/internal/zzag$zza;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/zzbw;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzag$zza;->zzBU()I

    move-result v0

    return v0
.end method
