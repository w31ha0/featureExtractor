.class public Lcom/netflix/mediaclient/service/player/exoplayback/PowerStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerStatusReceiver.java"


# instance fields
.field private mBatteryStats:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PowerStatusReceiver;->mBatteryStats:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

    .line 17
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 22
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 25
    const-string/jumbo v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 26
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    :cond_0
    move v0, v1

    .line 50
    :goto_0
    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PowerStatusReceiver;->mBatteryStats:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;->setWasCharged(Z)V

    .line 53
    :cond_1
    return-void

    .line 26
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
