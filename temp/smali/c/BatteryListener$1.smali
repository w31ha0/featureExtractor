.class Lc/BatteryListener$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/BatteryListener;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/BatteryListener;


# direct methods
.method constructor <init>(Lc/BatteryListener;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lc/BatteryListener$1;->a:Lc/BatteryListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lc/BatteryListener$1;->a:Lc/BatteryListener;

    invoke-static {v0, p2}, Lc/BatteryListener;->a(Lc/BatteryListener;Landroid/content/Intent;)V

    .line 74
    return-void
.end method
