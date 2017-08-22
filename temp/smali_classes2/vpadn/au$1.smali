.class Lvpadn/au$1;
.super Ljava/lang/Object;
.source "DeviceDataCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/au;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lvpadn/au;


# direct methods
.method constructor <init>(Lvpadn/au;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lvpadn/au$1;->b:Lvpadn/au;

    iput-object p2, p0, Lvpadn/au$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 274
    :try_start_0
    iget-object v0, p0, Lvpadn/au$1;->b:Lvpadn/au;

    iget-object v1, p0, Lvpadn/au$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lvpadn/au;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    const-string v1, "DeviceDataCollector"

    const-string v2, "createThreadToGetAdvertisingId return Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
