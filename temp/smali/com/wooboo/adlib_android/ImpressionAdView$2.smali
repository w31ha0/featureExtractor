.class final Lcom/wooboo/adlib_android/ImpressionAdView$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/ImpressionAdView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 199
    :try_start_0
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->f(Landroid/content/Context;)Lcom/wooboo/adlib_android/c;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_0

    .line 201
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :try_start_1
    new-instance v0, Lcom/wooboo/adlib_android/a;

    .line 204
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->c()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getAdWidth()I

    move-result v4

    .line 205
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getAdHeight()I

    move-result v5

    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getDen()D

    move-result-wide v6

    .line 203
    invoke-direct/range {v0 .. v7}, Lcom/wooboo/adlib_android/a;-><init>(Lcom/wooboo/adlib_android/c;Landroid/content/Context;ZIID)V

    .line 207
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/a;->a(I)V

    .line 208
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/a;->setVisibility(I)V

    .line 210
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->d()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/wooboo/adlib_android/ImpressionAdView$2$1;

    invoke-direct {v2, p0, v0}, Lcom/wooboo/adlib_android/ImpressionAdView$2$1;-><init>(Lcom/wooboo/adlib_android/ImpressionAdView$2;Lcom/wooboo/adlib_android/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    monitor-exit p0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const-string v1, "Wooboo SDK"

    .line 270
    const-string v2, "Unhandled exception requesting a fresh ad."

    .line 269
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
