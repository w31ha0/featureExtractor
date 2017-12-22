.class final Lorg/chromium/base/PowerMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerMonitor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p2}, Lorg/chromium/base/PowerMonitor;->access$000(Landroid/content/Intent;)V

    .line 53
    return-void
.end method
