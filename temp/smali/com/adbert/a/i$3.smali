.class final Lcom/adbert/a/i$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/a/i;->a(Landroid/content/Context;Lcom/adbert/a/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/adbert/a/i$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/adbert/a/i$a;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/adbert/a/i$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/adbert/a/i$3;->b:Lcom/adbert/a/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 356
    const-string v0, ""

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/adbert/a/i$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    .line 361
    if-nez v0, :cond_0

    .line 362
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 371
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    sget-object v1, Lcom/adbert/a/b/g;->x:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adbert/a/i;->c(Ljava/lang/String;)V

    .line 374
    :cond_1
    sput-object v0, Lcom/adbert/a/i;->g:Ljava/lang/String;

    .line 375
    iget-object v1, p0, Lcom/adbert/a/i$3;->b:Lcom/adbert/a/i$a;

    invoke-interface {v1, v0}, Lcom/adbert/a/i$a;->onResult(Ljava/lang/String;)V

    .line 376
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    .line 366
    const-string v0, ""

    goto :goto_0

    .line 367
    :catch_1
    move-exception v0

    .line 368
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    .line 369
    const-string v0, ""

    goto :goto_0
.end method
