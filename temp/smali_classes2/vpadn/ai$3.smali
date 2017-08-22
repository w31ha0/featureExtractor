.class Lvpadn/ai$3;
.super Ljava/lang/Object;
.source "VponNativeAdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/ai;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lvpadn/ai;


# direct methods
.method constructor <init>(Lvpadn/ai;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Lvpadn/ai$3;->b:Lvpadn/ai;

    iput-object p2, p0, Lvpadn/ai$3;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 661
    const-string v0, "VponNativeAdController"

    const-string v1, "doLoadBanner"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lvpadn/ai$3;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/ai$3;->a:Ljava/lang/Object;

    instance-of v0, v0, Lvpadn/ay;

    if-eqz v0, :cond_0

    .line 663
    iget-object v1, p0, Lvpadn/ai$3;->b:Lvpadn/ai;

    iget-object v0, p0, Lvpadn/ai$3;->a:Ljava/lang/Object;

    check-cast v0, Lvpadn/ay;

    invoke-static {v1, v0}, Lvpadn/ai;->a(Lvpadn/ai;Lvpadn/ay;)V

    .line 664
    iget-object v0, p0, Lvpadn/ai$3;->b:Lvpadn/ai;

    invoke-virtual {v0}, Lvpadn/ai;->c()V

    .line 668
    :goto_0
    return-void

    .line 666
    :cond_0
    const-string v0, "VponNativeAdController"

    const-string v1, "doLoadBanner happen Error!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
