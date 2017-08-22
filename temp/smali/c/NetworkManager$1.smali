.class Lc/NetworkManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/NetworkManager;->initialize(Lvpadn/q;Lvpadn/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/NetworkManager;


# direct methods
.method constructor <init>(Lc/NetworkManager;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lc/NetworkManager$1;->a:Lc/NetworkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lc/NetworkManager$1;->a:Lc/NetworkManager;

    iget-object v0, v0, Lc/NetworkManager;->webView:Lvpadn/f;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lc/NetworkManager$1;->a:Lc/NetworkManager;

    iget-object v1, p0, Lc/NetworkManager$1;->a:Lc/NetworkManager;

    iget-object v1, v1, Lc/NetworkManager;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lc/NetworkManager;->a(Lc/NetworkManager;Landroid/net/NetworkInfo;)V

    .line 116
    :cond_0
    return-void
.end method
