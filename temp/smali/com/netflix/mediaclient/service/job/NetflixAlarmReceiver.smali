.class public Lcom/netflix/mediaclient/service/job/NetflixAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetflixAlarmReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_alarm_receiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->onAlarmReceived(Landroid/content/Context;Landroid/content/Intent;)V

    .line 30
    :cond_0
    return-void
.end method
