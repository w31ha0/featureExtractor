.class Lvpadn/af$5;
.super Ljava/lang/Object;
.source "VponBannerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/af;->c(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lvpadn/af;


# direct methods
.method constructor <init>(Lvpadn/af;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1388
    iput-object p1, p0, Lvpadn/af$5;->b:Lvpadn/af;

    iput-object p2, p0, Lvpadn/af$5;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1390
    iget-object v0, p0, Lvpadn/af$5;->a:Ljava/lang/Object;

    check-cast v0, Lvpadn/ax;

    .line 1391
    iget-object v1, p0, Lvpadn/af$5;->b:Lvpadn/af;

    iget-wide v2, v1, Lvpadn/af;->m:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1392
    iget-object v1, p0, Lvpadn/af$5;->b:Lvpadn/af;

    iget-wide v2, v1, Lvpadn/af;->m:J

    invoke-virtual {v0, v2, v3}, Lvpadn/ax;->a(J)V

    .line 1398
    :goto_0
    :try_start_0
    iget-object v1, p0, Lvpadn/af$5;->b:Lvpadn/af;

    invoke-static {v1, v0}, Lvpadn/af;->a(Lvpadn/af;Lvpadn/ax;)V

    .line 1399
    iget-object v0, p0, Lvpadn/af$5;->b:Lvpadn/af;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lvpadn/af;->a(Lvpadn/af;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1403
    :goto_1
    return-void

    .line 1394
    :cond_0
    const-string v1, "VponBannerController"

    const-string v2, "Cannot get refresh time, set isFresh field to false"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v1, p0, Lvpadn/af$5;->b:Lvpadn/af;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lvpadn/af;->c(Lvpadn/af;Z)Z

    goto :goto_0

    .line 1400
    :catch_0
    move-exception v0

    .line 1401
    const-string v1, "VponBannerController"

    const-string v2, "prepareBanner throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
