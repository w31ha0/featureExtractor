.class public Lio/realm/internal/android/AndroidCapabilities;
.super Ljava/lang/Object;
.source "AndroidCapabilities.java"

# interfaces
.implements Lio/realm/internal/Capabilities;


# instance fields
.field private final hasLooper:Z

.field private final isIntentServiceThread:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lio/realm/internal/android/AndroidCapabilities;->hasLooper:Z

    .line 32
    invoke-static {}, Lio/realm/internal/android/AndroidCapabilities;->isIntentServiceThread()Z

    move-result v0

    iput-boolean v0, p0, Lio/realm/internal/android/AndroidCapabilities;->isIntentServiceThread:Z

    .line 33
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIntentServiceThread()Z
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    const-string/jumbo v1, "IntentService["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canDeliverNotification()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lio/realm/internal/android/AndroidCapabilities;->hasLooper:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/realm/internal/android/AndroidCapabilities;->isIntentServiceThread:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkCanDeliverNotification(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 42
    iget-boolean v0, p0, Lio/realm/internal/android/AndroidCapabilities;->hasLooper:Z

    if-nez v0, :cond_1

    .line 43
    new-instance v1, Ljava/lang/IllegalStateException;

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "Realm cannot be automatically updated on a thread without a looper."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_1
    iget-boolean v0, p0, Lio/realm/internal/android/AndroidCapabilities;->isIntentServiceThread:Z

    if-eqz v0, :cond_3

    .line 47
    new-instance v1, Ljava/lang/IllegalStateException;

    if-nez p1, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "Realm cannot be automatically updated on an IntentService thread."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 50
    :cond_3
    return-void
.end method
