.class public Lcom/netflix/falkor/ObjectPathEvaluator;
.super Lcom/netflix/falkor/BasePathEvaluator;
.source "ObjectPathEvaluator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ObjectPathEvaluator"


# instance fields
.field map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/netflix/falkor/BasePathEvaluator;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/falkor/ObjectPathEvaluator;->map:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized deletePath(Ljava/util/Map;Lcom/netflix/falkor/PQL;ILcom/netflix/falkor/Watcher;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Lcom/netflix/falkor/PQL;",
            "I",
            "Lcom/netflix/falkor/Watcher",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 134
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 135
    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 136
    invoke-virtual {p2, p3, v2}, Lcom/netflix/falkor/PQL;->replaceKeySegment(ILjava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-direct {p0, p1, v2, p3, p4}, Lcom/netflix/falkor/ObjectPathEvaluator;->deletePath(Ljava/util/Map;Lcom/netflix/falkor/PQL;ILcom/netflix/falkor/Watcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 139
    :cond_0
    :try_start_1
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 140
    check-cast v1, Ljava/util/Map;

    .line 141
    const-string/jumbo v2, "from"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 142
    if-nez v2, :cond_1

    .line 143
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 146
    :cond_1
    const-string/jumbo v3, "to"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 147
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Lcom/netflix/falkor/PQL;->replaceKeySegment(ILjava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v3

    invoke-direct {p0, p1, v3, p3, p4}, Lcom/netflix/falkor/ObjectPathEvaluator;->deletePath(Ljava/util/Map;Lcom/netflix/falkor/PQL;ILcom/netflix/falkor/Watcher;)V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 152
    :cond_2
    invoke-virtual {p2}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v2

    .line 154
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p3, v2, :cond_4

    .line 155
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    .line 158
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 160
    if-eqz v2, :cond_5

    instance-of v1, v2, Lcom/netflix/falkor/Option;

    if-eqz v1, :cond_5

    move-object v0, v2

    check-cast v0, Lcom/netflix/falkor/Option;

    move-object v1, v0

    .line 162
    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/netflix/falkor/Option;->getHasValue()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/netflix/falkor/Option;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/netflix/falkor/PQL;

    if-eqz v4, :cond_6

    .line 163
    new-instance v2, Lcom/netflix/falkor/PathBoundValue;

    const/4 v3, 0x0

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p2, v3, v4}, Lcom/netflix/falkor/PQL;->slice(II)Lcom/netflix/falkor/PQL;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/netflix/falkor/PathBoundValue;-><init>(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/Option;)V

    invoke-interface {p4, v2}, Lcom/netflix/falkor/Watcher;->onNext(Ljava/lang/Object;)V

    .line 164
    iget-object v2, p0, Lcom/netflix/falkor/ObjectPathEvaluator;->map:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/netflix/falkor/Option;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/falkor/PQL;

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {p2, v1, v3}, Lcom/netflix/falkor/PQL;->rewrite(Lcom/netflix/falkor/PQL;I)Lcom/netflix/falkor/PQL;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3, p4}, Lcom/netflix/falkor/ObjectPathEvaluator;->deletePath(Ljava/util/Map;Lcom/netflix/falkor/PQL;ILcom/netflix/falkor/Watcher;)V

    goto :goto_2

    .line 160
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 167
    :cond_6
    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_7

    check-cast v2, Ljava/util/Map;

    .line 168
    :goto_4
    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v2, p2, v1, p4}, Lcom/netflix/falkor/ObjectPathEvaluator;->deletePath(Ljava/util/Map;Lcom/netflix/falkor/PQL;ILcom/netflix/falkor/Watcher;)V

    goto :goto_2

    .line 167
    :cond_7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private declared-synchronized getPath(Ljava/util/Map;Lcom/netflix/falkor/PQL;ILcom/netflix/falkor/Watcher;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Lcom/netflix/falkor/PQL;",
            "I",
            "Lcom/netflix/falkor/Watcher",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 177
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 178
    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 179
    invoke-virtual {p2, p3, v2}, Lcom/netflix/falkor/PQL;->replaceKeySegment(ILjava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-direct {p0, p1, v2, p3, p4}, Lcom/netflix/falkor/ObjectPathEvaluator;->getPath(Ljava/util/Map;Lcom/netflix/falkor/PQL;ILcom/netflix/falkor/Watcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 182
    :cond_0
    :try_start_1
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 183
    check-cast v1, Ljava/util/Map;

    .line 184
    const-string/jumbo v2, "from"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 185
    if-nez v2, :cond_1

    .line 186
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 189
    :cond_1
    const-string/jumbo v3, "to"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 190
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Lcom/netflix/falkor/PQL;->replaceKeySegment(ILjava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v3

    invoke-direct {p0, p1, v3, p3, p4}, Lcom/netflix/falkor/ObjectPathEvaluator;->getPath(Ljava/util/Map;Lcom/netflix/falkor/PQL;ILcom/netflix/falkor/Watcher;)V

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 195
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_3

    .line 198
    instance-of v1, v2, Lcom/netflix/falkor/Option;

    if-eqz v1, :cond_4

    move-object v0, v2

    check-cast v0, Lcom/netflix/falkor/Option;

    move-object v1, v0

    .line 200
    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/netflix/falkor/Option;->getHasValue()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/netflix/falkor/Option;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/netflix/falkor/PQL;

    if-eqz v3, :cond_5

    .line 201
    new-instance v3, Lcom/netflix/falkor/PathBoundValue;

    const/4 v4, 0x0

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p2, v4, v5}, Lcom/netflix/falkor/PQL;->slice(II)Lcom/netflix/falkor/PQL;

    move-result-object v4

    check-cast v2, Lcom/netflix/falkor/Option;

    invoke-direct {v3, v4, v2}, Lcom/netflix/falkor/PathBoundValue;-><init>(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/Option;)V

    invoke-interface {p4, v3}, Lcom/netflix/falkor/Watcher;->onNext(Ljava/lang/Object;)V

    .line 202
    iget-object v2, p0, Lcom/netflix/falkor/ObjectPathEvaluator;->map:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/netflix/falkor/Option;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/falkor/PQL;

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {p2, v1, v3}, Lcom/netflix/falkor/PQL;->rewrite(Lcom/netflix/falkor/PQL;I)Lcom/netflix/falkor/PQL;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3, p4}, Lcom/netflix/falkor/ObjectPathEvaluator;->getPath(Ljava/util/Map;Lcom/netflix/falkor/PQL;ILcom/netflix/falkor/Watcher;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 198
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 204
    :cond_5
    :try_start_2
    invoke-virtual {p2}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p3, v1, :cond_6

    .line 205
    new-instance v1, Lcom/netflix/falkor/PathBoundValue;

    check-cast v2, Lcom/netflix/falkor/Option;

    invoke-direct {v1, p2, v2}, Lcom/netflix/falkor/PathBoundValue;-><init>(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/Option;)V

    invoke-interface {p4, v1}, Lcom/netflix/falkor/Watcher;->onNext(Ljava/lang/Object;)V

    goto :goto_3

    .line 208
    :cond_6
    check-cast v2, Ljava/util/Map;

    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v2, p2, v1, p4}, Lcom/netflix/falkor/ObjectPathEvaluator;->getPath(Ljava/util/Map;Lcom/netflix/falkor/PQL;ILcom/netflix/falkor/Watcher;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private declared-synchronized setPath(Ljava/util/Map;Lcom/netflix/falkor/PQL;ILcom/netflix/falkor/Option;Lcom/netflix/falkor/Watcher;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Lcom/netflix/falkor/PQL;",
            "I",
            "Lcom/netflix/falkor/Option;",
            "Lcom/netflix/falkor/Watcher",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 90
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 91
    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 92
    invoke-virtual {p2, p3, v1}, Lcom/netflix/falkor/PQL;->replaceKeySegment(ILjava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/netflix/falkor/ObjectPathEvaluator;->setPath(Ljava/util/Map;Lcom/netflix/falkor/PQL;ILcom/netflix/falkor/Option;Lcom/netflix/falkor/Watcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 95
    :cond_0
    :try_start_1
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 96
    check-cast v1, Ljava/util/Map;

    .line 97
    const-string/jumbo v2, "from"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 98
    if-nez v2, :cond_1

    .line 99
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 102
    :cond_1
    const-string/jumbo v3, "to"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v7, v0

    .line 103
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v8, v1

    :goto_1
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v8, v1, :cond_3

    .line 104
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lcom/netflix/falkor/PQL;->replaceKeySegment(ILjava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/netflix/falkor/ObjectPathEvaluator;->setPath(Ljava/util/Map;Lcom/netflix/falkor/PQL;ILcom/netflix/falkor/Option;Lcom/netflix/falkor/Watcher;)V

    .line 103
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {p2}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v2

    .line 110
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p3, v2, :cond_4

    .line 111
    invoke-interface {p1, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v1, Lcom/netflix/falkor/PathBoundValue;

    invoke-direct {v1, p2, p4}, Lcom/netflix/falkor/PathBoundValue;-><init>(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/Option;)V

    invoke-interface {p5, v1}, Lcom/netflix/falkor/Watcher;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    .line 115
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 117
    if-eqz v2, :cond_5

    instance-of v1, v2, Lcom/netflix/falkor/Option;

    if-eqz v1, :cond_5

    move-object v0, v2

    check-cast v0, Lcom/netflix/falkor/Option;

    move-object v1, v0

    .line 119
    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/netflix/falkor/Option;->getHasValue()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/netflix/falkor/Option;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/netflix/falkor/PQL;

    if-eqz v4, :cond_6

    .line 120
    new-instance v2, Lcom/netflix/falkor/PathBoundValue;

    const/4 v3, 0x0

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p2, v3, v4}, Lcom/netflix/falkor/PQL;->slice(II)Lcom/netflix/falkor/PQL;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/netflix/falkor/PathBoundValue;-><init>(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/Option;)V

    invoke-interface {p5, v2}, Lcom/netflix/falkor/Watcher;->onNext(Ljava/lang/Object;)V

    .line 121
    iget-object v2, p0, Lcom/netflix/falkor/ObjectPathEvaluator;->map:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/netflix/falkor/Option;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/falkor/PQL;

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {p2, v1, v3}, Lcom/netflix/falkor/PQL;->rewrite(Lcom/netflix/falkor/PQL;I)Lcom/netflix/falkor/PQL;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/netflix/falkor/ObjectPathEvaluator;->setPath(Ljava/util/Map;Lcom/netflix/falkor/PQL;ILcom/netflix/falkor/Option;Lcom/netflix/falkor/Watcher;)V

    goto :goto_2

    .line 117
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 124
    :cond_6
    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_7

    check-cast v2, Ljava/util/Map;

    .line 125
    :goto_4
    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    add-int/lit8 v4, p3, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/netflix/falkor/ObjectPathEvaluator;->setPath(Ljava/util/Map;Lcom/netflix/falkor/PQL;ILcom/netflix/falkor/Option;Lcom/netflix/falkor/Watcher;)V

    goto :goto_2

    .line 124
    :cond_7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method


# virtual methods
.method public deleteAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 20
    iget-object v3, p0, Lcom/netflix/falkor/ObjectPathEvaluator;->map:Ljava/util/Map;

    const/4 v4, 0x0

    new-instance v5, Lcom/netflix/falkor/ObjectPathEvaluator$1;

    invoke-direct {v5, p0, v1}, Lcom/netflix/falkor/ObjectPathEvaluator$1;-><init>(Lcom/netflix/falkor/ObjectPathEvaluator;Ljava/util/ArrayList;)V

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/netflix/falkor/ObjectPathEvaluator;->deletePath(Ljava/util/Map;Lcom/netflix/falkor/PQL;ILcom/netflix/falkor/Watcher;)V

    goto :goto_0

    .line 36
    :cond_0
    return-object v1
.end method

.method public dumpMemory()V
    .locals 3

    .prologue
    .line 215
    const-string/jumbo v0, "ObjectPathEvaluator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ObjectPathEvaluator map="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/falkor/ObjectPathEvaluator;->map:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method public getAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 67
    iget-object v3, p0, Lcom/netflix/falkor/ObjectPathEvaluator;->map:Ljava/util/Map;

    const/4 v4, 0x0

    new-instance v5, Lcom/netflix/falkor/ObjectPathEvaluator$3;

    invoke-direct {v5, p0, v1}, Lcom/netflix/falkor/ObjectPathEvaluator$3;-><init>(Lcom/netflix/falkor/ObjectPathEvaluator;Ljava/util/ArrayList;)V

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/netflix/falkor/ObjectPathEvaluator;->getPath(Ljava/util/Map;Lcom/netflix/falkor/PQL;ILcom/netflix/falkor/Watcher;)V

    goto :goto_0

    .line 85
    :cond_0
    return-object v1
.end method

.method public getRoot()Lcom/netflix/falkor/AbstractPathEvaluator;
    .locals 0

    .prologue
    .line 220
    return-object p0
.end method

.method public setAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PathBoundValue;

    .line 43
    iget-object v1, p0, Lcom/netflix/falkor/ObjectPathEvaluator;->map:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/falkor/PathBoundValue;->getPath()Lcom/netflix/falkor/PQL;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/netflix/falkor/PathBoundValue;->getValue()Lcom/netflix/falkor/Option;

    move-result-object v4

    new-instance v5, Lcom/netflix/falkor/ObjectPathEvaluator$2;

    invoke-direct {v5, p0, v6}, Lcom/netflix/falkor/ObjectPathEvaluator$2;-><init>(Lcom/netflix/falkor/ObjectPathEvaluator;Ljava/util/ArrayList;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/ObjectPathEvaluator;->setPath(Ljava/util/Map;Lcom/netflix/falkor/PQL;ILcom/netflix/falkor/Option;Lcom/netflix/falkor/Watcher;)V

    goto :goto_0

    .line 59
    :cond_0
    return-object v6
.end method
