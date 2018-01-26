.class public Lcom/biznessapps/layout/BAcore;
.super Landroid/app/Application;
.source "BAcore.java"


# annotations
.annotation runtime Lorg/acra/annotation/ReportsCrashes;
    formKey = "dE16SnFkTllsLW1XUkc5Rkxrb01jZ2c6MQ"
.end annotation


# instance fields
.field private final activityTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/api/CommonTask",
            "<***>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/layout/BAcore;->activityTaskMap:Ljava/util/Map;

    .line 25
    return-void
.end method


# virtual methods
.method public addTask(Landroid/app/Activity;Lcom/biznessapps/api/CommonTask;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/biznessapps/api/CommonTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "task":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<***>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/layout/BAcore;->activityTaskMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 69
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/CommonTask<***>;>;"
    if-nez v1, :cond_0

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/CommonTask<***>;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .restart local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/CommonTask<***>;>;"
    iget-object v2, p0, Lcom/biznessapps/layout/BAcore;->activityTaskMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public attach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    iget-object v3, p0, Lcom/biznessapps/layout/BAcore;->activityTaskMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 87
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/CommonTask<***>;>;"
    if-eqz v2, :cond_0

    .line 88
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/api/CommonTask;

    .line 89
    .local v1, "task":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<***>;"
    invoke-virtual {v1, p1}, Lcom/biznessapps/api/CommonTask;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 92
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "task":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<***>;"
    :cond_0
    return-void
.end method

.method public clearActivityTask(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/biznessapps/layout/BAcore;->activityTaskMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 58
    .local v3, "taskList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/CommonTask<***>;>;"
    if-eqz v3, :cond_0

    .line 59
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/api/CommonTask;

    .line 61
    .local v2, "task":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<***>;"
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/biznessapps/api/CommonTask;->cancel(Z)Z

    goto :goto_0

    .line 64
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "task":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<***>;"
    :cond_0
    return-void
.end method

.method public detach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    iget-object v3, p0, Lcom/biznessapps/layout/BAcore;->activityTaskMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 78
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/CommonTask<***>;>;"
    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/api/CommonTask;

    .line 80
    .local v1, "task":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<***>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/biznessapps/api/CommonTask;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 83
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "task":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<***>;"
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V

    .line 30
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 31
    return-void
.end method

.method public removeTask(Lcom/biznessapps/api/CommonTask;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/api/CommonTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "task":Lcom/biznessapps/api/CommonTask;, "Lcom/biznessapps/api/CommonTask<***>;"
    iget-object v4, p0, Lcom/biznessapps/layout/BAcore;->activityTaskMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 35
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/biznessapps/api/CommonTask<***>;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 36
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/CommonTask<***>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 37
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_3

    .line 38
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 43
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 44
    iget-object v4, p0, Lcom/biznessapps/layout/BAcore;->activityTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/biznessapps/api/CommonTask<***>;>;>;"
    .end local v1    # "i":I
    .end local v3    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/CommonTask<***>;>;"
    :cond_2
    return-void

    .line 36
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/biznessapps/api/CommonTask<***>;>;>;"
    .restart local v1    # "i":I
    .restart local v3    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/CommonTask<***>;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
