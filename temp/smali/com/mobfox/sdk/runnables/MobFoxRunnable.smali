.class public abstract Lcom/mobfox/sdk/runnables/MobFoxRunnable;
.super Ljava/lang/Object;
.source "MobFoxRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mobfox/sdk/runnables/MobFoxRunnable;->context:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method protected condition()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public abstract mobFoxRun()V
.end method

.method public run()V
    .locals 6

    .prologue
    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcom/mobfox/sdk/runnables/MobFoxRunnable;->condition()Z

    move-result v3

    if-nez v3, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/mobfox/sdk/runnables/MobFoxRunnable;->mobFoxRun()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, "err":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/mobfox/sdk/logging/MobFoxReport;->getCause(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "cause":Ljava/lang/String;
    sget-object v3, Lcom/mobfox/sdk/runnables/WebViewRunnable;->CONNECTION_EXCEPTION:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 29
    iget-object v3, p0, Lcom/mobfox/sdk/runnables/MobFoxRunnable;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/mobfox/sdk/logging/MobFoxReport;->postException(Landroid/content/Context;Ljava/lang/Throwable;Lcom/mobfox/sdk/networking/AsyncCallback;)V

    goto :goto_0

    .line 30
    .end local v0    # "cause":Ljava/lang/String;
    .end local v1    # "err":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 31
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "MobFoxBanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobFoxRunnable err "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
