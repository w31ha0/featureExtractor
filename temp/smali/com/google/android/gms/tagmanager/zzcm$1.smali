.class Lcom/google/android/gms/tagmanager/zzcm$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcm$zzb;


# instance fields
.field final synthetic zzaNa:Lcom/google/android/gms/tagmanager/zzcm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcm$1;->zzaNa:Lcom/google/android/gms/tagmanager/zzcm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzzm()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
