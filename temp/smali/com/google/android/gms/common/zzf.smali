.class Lcom/google/android/gms/common/zzf;
.super Ljava/lang/Object;


# static fields
.field private static final zzayq:Ljava/lang/Object;

.field private static zzayr:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zzf;->zzayq:Ljava/lang/Object;

    return-void
.end method

.method static declared-synchronized zzaG(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/google/android/gms/common/zzf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/zzf;->zzayr:Landroid/content/Context;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/zzf;->zzayr:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v0, "GoogleCertificates"

    const-string/jumbo v2, "GoogleCertificates has been initialized already"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
