.class public Lcom/mobfox/sdk/video/VASTTasks;
.super Ljava/lang/Object;
.source "VASTTasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobfox/sdk/video/VASTTasks$Tasks;,
        Lcom/mobfox/sdk/video/VASTTasks$DoneCallback;
    }
.end annotation


# instance fields
.field cb:Lcom/mobfox/sdk/video/VASTTasks$DoneCallback;

.field count:I

.field done:Z

.field tasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mobfox/sdk/video/VASTTasks$Tasks;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mobfox/sdk/video/VASTTasks$DoneCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/mobfox/sdk/video/VASTTasks$DoneCallback;

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v2, p0, Lcom/mobfox/sdk/video/VASTTasks;->count:I

    .line 29
    iput-boolean v2, p0, Lcom/mobfox/sdk/video/VASTTasks;->done:Z

    .line 30
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/mobfox/sdk/video/VASTTasks$Tasks;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/mobfox/sdk/video/VASTTasks;->tasks:Ljava/util/Map;

    .line 31
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTTasks;->tasks:Ljava/util/Map;

    sget-object v1, Lcom/mobfox/sdk/video/VASTTasks$Tasks;->GET_DRAWABLES:Lcom/mobfox/sdk/video/VASTTasks$Tasks;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lcom/mobfox/sdk/video/VASTTasks;->cb:Lcom/mobfox/sdk/video/VASTTasks$DoneCallback;

    .line 33
    return-void
.end method


# virtual methods
.method public notifyTaskDone(Lcom/mobfox/sdk/video/VASTTasks$Tasks;)V
    .locals 7
    .param p1, "t"    # Lcom/mobfox/sdk/video/VASTTasks$Tasks;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 37
    :try_start_0
    const-string v2, "MobFoxBanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init done for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mobfox/sdk/video/VASTTasks$Tasks;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    monitor-enter p0

    .line 44
    :try_start_1
    iget-boolean v2, p0, Lcom/mobfox/sdk/video/VASTTasks;->done:Z

    if-eqz v2, :cond_1

    .line 45
    monitor-exit p0

    .line 60
    :cond_0
    :goto_1
    return-void

    .line 47
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    iget-object v2, p0, Lcom/mobfox/sdk/video/VASTTasks;->tasks:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const/4 v0, 0x1

    .line 51
    .local v0, "allDone":Z
    iget-object v2, p0, Lcom/mobfox/sdk/video/VASTTasks;->tasks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobfox/sdk/video/VASTTasks$Tasks;

    .line 52
    .local v1, "next":Lcom/mobfox/sdk/video/VASTTasks$Tasks;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/mobfox/sdk/video/VASTTasks;->tasks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    .line 53
    :goto_3
    goto :goto_2

    .line 47
    .end local v0    # "allDone":Z
    .end local v1    # "next":Lcom/mobfox/sdk/video/VASTTasks$Tasks;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v0    # "allDone":Z
    .restart local v1    # "next":Lcom/mobfox/sdk/video/VASTTasks$Tasks;
    :cond_2
    move v0, v4

    .line 52
    goto :goto_3

    .line 55
    .end local v1    # "next":Lcom/mobfox/sdk/video/VASTTasks$Tasks;
    :cond_3
    if-eqz v0, :cond_0

    .line 56
    iput-boolean v3, p0, Lcom/mobfox/sdk/video/VASTTasks;->done:Z

    .line 57
    iput v4, p0, Lcom/mobfox/sdk/video/VASTTasks;->count:I

    .line 58
    iget-object v2, p0, Lcom/mobfox/sdk/video/VASTTasks;->cb:Lcom/mobfox/sdk/video/VASTTasks$DoneCallback;

    invoke-interface {v2}, Lcom/mobfox/sdk/video/VASTTasks$DoneCallback;->onDone()V

    goto :goto_1

    .line 39
    .end local v0    # "allDone":Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method
