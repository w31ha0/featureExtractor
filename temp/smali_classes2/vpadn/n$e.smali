.class Lvpadn/n$e;
.super Ljava/lang/Object;
.source "NativeToJsMessageQueue.java"

# interfaces
.implements Lvpadn/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field a:Ljava/lang/reflect/Method;

.field b:Ljava/lang/Object;

.field c:Z

.field final synthetic d:Lvpadn/n;


# direct methods
.method private constructor <init>(Lvpadn/n;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lvpadn/n$e;->d:Lvpadn/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvpadn/n;Lvpadn/n$1;)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lvpadn/n$e;-><init>(Lvpadn/n;)V

    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 359
    iget-object v0, p0, Lvpadn/n$e;->d:Lvpadn/n;

    invoke-static {v0}, Lvpadn/n;->b(Lvpadn/n;)Lvpadn/f;

    move-result-object v0

    .line 360
    const-class v1, Landroid/webkit/WebView;

    .line 362
    :try_start_0
    const-string v2, "mProvider"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 363
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 364
    iget-object v3, p0, Lvpadn/n$e;->d:Lvpadn/n;

    invoke-static {v3}, Lvpadn/n;->b(Lvpadn/n;)Lvpadn/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 371
    :goto_0
    :try_start_1
    const-string v2, "mWebViewCore"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 372
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lvpadn/n$e;->b:Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lvpadn/n$e;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lvpadn/n$e;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sendMessage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Message;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lvpadn/n$e;->a:Ljava/lang/reflect/Method;

    .line 377
    iget-object v0, p0, Lvpadn/n$e;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 383
    :cond_0
    :goto_1
    return-void

    .line 366
    :catch_0
    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    .line 379
    :catch_1
    move-exception v0

    .line 380
    iput-boolean v5, p0, Lvpadn/n$e;->c:Z

    .line 381
    const-string v1, "JsMessageQueue"

    const-string v2, "PrivateApiBridgeMode failed to find the expected APIs."

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 386
    iget-object v0, p0, Lvpadn/n$e;->a:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lvpadn/n$e;->c:Z

    if-nez v0, :cond_0

    .line 387
    invoke-direct {p0}, Lvpadn/n$e;->b()V

    .line 390
    :cond_0
    iget-object v0, p0, Lvpadn/n$e;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lvpadn/n$e;->d:Lvpadn/n;

    invoke-static {v0}, Lvpadn/n;->a(Lvpadn/n;)Ljava/lang/String;

    move-result-object v0

    .line 392
    const/4 v1, 0x0

    const/16 v2, 0xc2

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 394
    :try_start_0
    iget-object v1, p0, Lvpadn/n$e;->a:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lvpadn/n$e;->b:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_1
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    const-string v1, "JsMessageQueue"

    const-string v2, "Reflection message bridge failed."

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
