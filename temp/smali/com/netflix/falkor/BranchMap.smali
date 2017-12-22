.class public Lcom/netflix/falkor/BranchMap;
.super Ljava/util/HashMap;
.source "BranchMap.java"

# interfaces
.implements Lcom/netflix/falkor/BranchNode;
.implements Lcom/netflix/falkor/Expires;
.implements Lcom/netflix/falkor/ReferenceTarget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "TT;>;",
        "Lcom/netflix/falkor/BranchNode;",
        "Lcom/netflix/falkor/Expires;",
        "Lcom/netflix/falkor/ReferenceTarget;"
    }
.end annotation


# instance fields
.field private errorsOrUndefineds:Ljava/util/Map;
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

.field private expires:Ljava/util/Date;

.field private references:Lcom/netflix/falkor/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/LinkedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation
.end field

.field private final typeCreator:Lcom/netflix/falkor/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/Func",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/Func;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/Func",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/netflix/falkor/BranchMap;->typeCreator:Lcom/netflix/falkor/Func;

    .line 17
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 21
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/netflix/falkor/BranchMap;->errorsOrUndefineds:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/netflix/falkor/BranchMap;->errorsOrUndefineds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    :cond_0
    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/falkor/BranchMap;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/netflix/falkor/BranchMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 63
    iget-object v1, p0, Lcom/netflix/falkor/BranchMap;->errorsOrUndefineds:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/netflix/falkor/BranchMap;->errorsOrUndefineds:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 66
    :cond_0
    return-object v0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/netflix/falkor/BranchMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/netflix/falkor/BranchMap;->typeCreator:Lcom/netflix/falkor/Func;

    invoke-interface {v0}, Lcom/netflix/falkor/Func;->call()Ljava/lang/Object;

    move-result-object v0

    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/netflix/falkor/BranchMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_0
    return-object v0
.end method

.method public getReferences()Lcom/netflix/falkor/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/falkor/LinkedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/falkor/BranchMap;->references:Lcom/netflix/falkor/LinkedList;

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/netflix/falkor/BranchMap;->errorsOrUndefineds:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/netflix/falkor/BranchMap;->errorsOrUndefineds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 30
    instance-of v0, p2, Ljava/lang/Exception;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/netflix/falkor/Undefined;

    if-eqz v0, :cond_3

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/BranchMap;->errorsOrUndefineds:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/falkor/BranchMap;->errorsOrUndefineds:Ljava/util/Map;

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/netflix/falkor/BranchMap;->errorsOrUndefineds:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p0, p1}, Lcom/netflix/falkor/BranchMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_2
    :goto_0
    return-void

    .line 43
    :cond_3
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/netflix/falkor/BranchMap;->errorsOrUndefineds:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/falkor/BranchMap;->errorsOrUndefineds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/netflix/falkor/BranchMap;->errorsOrUndefineds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setExpires(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/netflix/falkor/BranchMap;->expires:Ljava/util/Date;

    .line 77
    return-void
.end method

.method public setReferences(Lcom/netflix/falkor/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/LinkedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lcom/netflix/falkor/BranchMap;->references:Lcom/netflix/falkor/LinkedList;

    .line 87
    return-void
.end method
