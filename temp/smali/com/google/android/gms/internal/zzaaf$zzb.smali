.class final Lcom/google/android/gms/internal/zzaaf$zzb;
.super Ljava/lang/Object;


# instance fields
.field final synthetic zzaAt:Lcom/google/android/gms/internal/zzaaf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaaf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaf$zzb;->zzaAt:Lcom/google/android/gms/internal/zzaaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaaf;Lcom/google/android/gms/internal/zzaaf$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaaf$zzb;-><init>(Lcom/google/android/gms/internal/zzaaf;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf$zzb;->zzaAt:Lcom/google/android/gms/internal/zzaaf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaf;->zza(Lcom/google/android/gms/internal/zzaaf;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaf;->zzd(Lcom/google/android/gms/common/api/Result;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
