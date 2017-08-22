.class Lc/Device$1;
.super Landroid/content/BroadcastReceiver;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/Device;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/Device;


# direct methods
.method constructor <init>(Lc/Device;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lc/Device$1;->a:Lc/Device;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 124
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    const-string v0, "Device"

    const-string v1, "Telephone RINGING"

    invoke-static {v0, v1}, Lvpadn/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lc/Device$1;->a:Lc/Device;

    iget-object v0, v0, Lc/Device;->webView:Lvpadn/f;

    const-string v1, "telephone"

    const-string v2, "ringing"

    invoke-virtual {v0, v1, v2}, Lvpadn/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    const-string v0, "Device"

    const-string v1, "Telephone OFFHOOK"

    invoke-static {v0, v1}, Lvpadn/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lc/Device$1;->a:Lc/Device;

    iget-object v0, v0, Lc/Device;->webView:Lvpadn/f;

    const-string v1, "telephone"

    const-string v2, "offhook"

    invoke-virtual {v0, v1, v2}, Lvpadn/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_2
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "Device"

    const-string v1, "Telephone IDLE"

    invoke-static {v0, v1}, Lvpadn/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lc/Device$1;->a:Lc/Device;

    iget-object v0, v0, Lc/Device;->webView:Lvpadn/f;

    const-string v1, "telephone"

    const-string v2, "idle"

    invoke-virtual {v0, v1, v2}, Lvpadn/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
