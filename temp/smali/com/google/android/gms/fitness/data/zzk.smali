.class public Lcom/google/android/gms/fitness/data/zzk;
.super Lcom/google/android/gms/fitness/data/zzj$zza;


# instance fields
.field private final zzakC:Lcom/google/android/gms/fitness/request/OnDataPointListener;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/request/OnDataPointListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/zzj$zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/OnDataPointListener;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/zzk;->zzakC:Lcom/google/android/gms/fitness/request/OnDataPointListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/OnDataPointListener;Lcom/google/android/gms/fitness/data/zzk$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/zzk;-><init>(Lcom/google/android/gms/fitness/request/OnDataPointListener;)V

    return-void
.end method


# virtual methods
.method public zzc(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/zzk;->zzakC:Lcom/google/android/gms/fitness/request/OnDataPointListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/request/OnDataPointListener;->onDataPoint(Lcom/google/android/gms/fitness/data/DataPoint;)V

    return-void
.end method
