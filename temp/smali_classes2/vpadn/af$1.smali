.class Lvpadn/af$1;
.super Ljava/lang/Object;
.source "VponBannerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/af;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/af;


# direct methods
.method constructor <init>(Lvpadn/af;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lvpadn/af$1;->a:Lvpadn/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "VponBannerController"

    const-string v1, "doLoadBanner"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lvpadn/af$1;->a:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->a(Lvpadn/af;)Lvpadn/ao;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "VponBannerController"

    const-string v1, "Call mNotificationListener.onVponAdReceived();"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lvpadn/af$1;->a:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->a(Lvpadn/af;)Lvpadn/ao;

    move-result-object v0

    invoke-interface {v0}, Lvpadn/ao;->onVponAdReceived()V

    .line 167
    :cond_0
    iget-object v0, p0, Lvpadn/af$1;->a:Lvpadn/af;

    iget-object v1, p0, Lvpadn/af$1;->a:Lvpadn/af;

    invoke-static {v1}, Lvpadn/af;->b(Lvpadn/af;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lvpadn/af;->a(Z)V

    .line 168
    iget-object v0, p0, Lvpadn/af$1;->a:Lvpadn/af;

    invoke-virtual {v0}, Lvpadn/af;->c()V

    .line 169
    return-void
.end method
