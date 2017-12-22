.class public Lcom/netflix/mediaclient/service/NetflixPowerManager;
.super Ljava/lang/Object;
.source "NetflixPowerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_power_manager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPartialWakeLockReasonSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLockReasonSet:Ljava/util/Set;

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public acquirePartialWakeLockFor(Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLockReasonSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLockReasonSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 45
    if-eqz v0, :cond_1

    .line 46
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 47
    const/4 v1, 0x1

    const-string/jumbo v2, "nf_power_manager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 58
    :cond_1
    return-void
.end method

.method public forceReleasePartialWakeLock()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLockReasonSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 91
    :cond_0
    return-void
.end method

.method public releasePartialWakeLockFor(Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLockReasonSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLockReasonSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixPowerManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 77
    :cond_0
    return-void
.end method
