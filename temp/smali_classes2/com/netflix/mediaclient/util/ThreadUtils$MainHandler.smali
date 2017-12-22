.class public Lcom/netflix/mediaclient/util/ThreadUtils$MainHandler;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# static fields
.field private static sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/netflix/mediaclient/util/ThreadUtils$MainHandler;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/netflix/mediaclient/util/ThreadUtils$MainHandler;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/netflix/mediaclient/util/ThreadUtils$MainHandler;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public static removeCallback(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "runnable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/ThreadUtils$MainHandler;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method
