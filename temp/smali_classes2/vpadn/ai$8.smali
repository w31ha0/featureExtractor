.class Lvpadn/ai$8;
.super Ljava/lang/Object;
.source "VponNativeAdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/ai;->c(Ljava/lang/Object;)V
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
    .line 1207
    iput-object p1, p0, Lvpadn/ai$8;->b:Lvpadn/ai;

    iput-object p2, p0, Lvpadn/ai$8;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1209
    iget-object v0, p0, Lvpadn/ai$8;->a:Ljava/lang/Object;

    check-cast v0, Lvpadn/ax;

    .line 1211
    :try_start_0
    iget-object v1, p0, Lvpadn/ai$8;->b:Lvpadn/ai;

    invoke-static {v1, v0}, Lvpadn/ai;->a(Lvpadn/ai;Lvpadn/ax;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    :goto_0
    return-void

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    const-string v1, "VponNativeAdController"

    const-string v2, "prepareBanner throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
