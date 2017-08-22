.class Lvpadn/af$12;
.super Ljava/lang/Object;
.source "VponBannerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/af;->notifyToVisible()V
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
    .line 305
    iput-object p1, p0, Lvpadn/af$12;->a:Lvpadn/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lvpadn/af$12;->a:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->d(Lvpadn/af;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lvpadn/af$12;->a:Lvpadn/af;

    iget-object v1, p0, Lvpadn/af$12;->a:Lvpadn/af;

    invoke-static {v1}, Lvpadn/af;->e(Lvpadn/af;)Lvpadn/ax;

    move-result-object v1

    invoke-virtual {v1}, Lvpadn/ax;->d()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lvpadn/af;->a(Lvpadn/af;J)V

    .line 310
    :cond_0
    iget-object v0, p0, Lvpadn/af$12;->a:Lvpadn/af;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lvpadn/af;->b(Lvpadn/af;Z)Z

    .line 311
    return-void
.end method
