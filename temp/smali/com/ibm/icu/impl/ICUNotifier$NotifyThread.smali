.class Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;
.super Ljava/lang/Thread;
.source "ICUNotifier.java"


# instance fields
.field private final notifier:Lcom/ibm/icu/impl/ICUNotifier;

.field private final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUNotifier;)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    .line 121
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;->notifier:Lcom/ibm/icu/impl/ICUNotifier;

    .line 122
    return-void
.end method


# virtual methods
.method public queue([Ljava/util/EventListener;)V
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 131
    monitor-exit p0

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 143
    :cond_0
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0

    .line 147
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;->queue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    .line 148
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v2

    .line 150
    :goto_2
    :try_start_4
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;->notifier:Lcom/ibm/icu/impl/ICUNotifier;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/ICUNotifier;->notifyListener(Ljava/util/EventListener;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
