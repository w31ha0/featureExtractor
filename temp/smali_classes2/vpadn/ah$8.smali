.class Lvpadn/ah$8;
.super Ljava/lang/Object;
.source "VponInterstitialAdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/ah;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/ah;


# direct methods
.method constructor <init>(Lvpadn/ah;)V
    .locals 0

    .prologue
    .line 1146
    iput-object p1, p0, Lvpadn/ah$8;->a:Lvpadn/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1148
    const-string v0, "VponInterstitialAdController"

    const-string v1, "CALL onDownloadSuccess() for cache Done"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-object v0, p0, Lvpadn/ah$8;->a:Lvpadn/ah;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lvpadn/ah;->a(Lvpadn/ah;Z)Z

    .line 1150
    iget-object v0, p0, Lvpadn/ah$8;->a:Lvpadn/ah;

    invoke-static {v0}, Lvpadn/ah;->a(Lvpadn/ah;)Lvpadn/ao;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lvpadn/ah$8;->a:Lvpadn/ah;

    invoke-static {v0}, Lvpadn/ah;->a(Lvpadn/ah;)Lvpadn/ao;

    move-result-object v0

    invoke-interface {v0}, Lvpadn/ao;->onVponAdReceived()V

    .line 1153
    :cond_0
    return-void
.end method
