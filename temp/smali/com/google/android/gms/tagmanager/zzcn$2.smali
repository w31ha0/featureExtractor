.class Lcom/google/android/gms/tagmanager/zzcn$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzaNc:Lcom/google/android/gms/tagmanager/zzcn;

.field final synthetic zzaNd:Lcom/google/android/gms/internal/zzpx$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/internal/zzpx$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcn$2;->zzaNc:Lcom/google/android/gms/tagmanager/zzcn;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcn$2;->zzaNd:Lcom/google/android/gms/internal/zzpx$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcn$2;->zzaNc:Lcom/google/android/gms/tagmanager/zzcn;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcn$2;->zzaNd:Lcom/google/android/gms/internal/zzpx$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzcn;->zzc(Lcom/google/android/gms/internal/zzpx$zza;)Z

    return-void
.end method
