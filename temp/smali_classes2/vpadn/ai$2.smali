.class Lvpadn/ai$2;
.super Ljava/lang/Object;
.source "VponNativeAdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/ai;->m(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lvpadn/ai;


# direct methods
.method constructor <init>(Lvpadn/ai;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lvpadn/ai$2;->b:Lvpadn/ai;

    iput-object p2, p0, Lvpadn/ai$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 485
    :try_start_0
    new-instance v0, Lvpadn/ai$2$1;

    invoke-direct {v0, p0}, Lvpadn/ai$2$1;-><init>(Lvpadn/ai$2;)V

    .line 526
    invoke-static {v0}, Lvpadn/be;->a(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    const-string v1, "VponNativeAdController"

    const-string v2, "send3rdImpressionToServer throw Exception:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
