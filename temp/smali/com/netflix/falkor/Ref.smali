.class public Lcom/netflix/falkor/Ref;
.super Lcom/netflix/model/leafs/BaseFalkorLeafItem;
.source "Ref.java"

# interfaces
.implements Lcom/netflix/falkor/Expires;
.implements Lcom/netflix/falkor/PathBound;
.implements Lcom/netflix/falkor/ReferenceTarget;


# static fields
.field private static final TAG:Ljava/lang/String; = "Ref"


# instance fields
.field private expires:Ljava/util/Date;

.field private path:Lcom/netflix/falkor/PQL;

.field private refPath:Lcom/netflix/falkor/PQL;

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

.field private final valueRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/netflix/model/leafs/BaseFalkorLeafItem;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/netflix/falkor/Ref;->valueRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/netflix/falkor/PQL;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/netflix/model/leafs/BaseFalkorLeafItem;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/netflix/falkor/Ref;->valueRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    iput-object p1, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

    .line 22
    return-void
.end method


# virtual methods
.method public clearValue()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->valueRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getHardValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->valueRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method public getPath()Lcom/netflix/falkor/PQL;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->path:Lcom/netflix/falkor/PQL;

    return-object v0
.end method

.method public getRefPath()Lcom/netflix/falkor/PQL;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

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
    .line 109
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->references:Lcom/netflix/falkor/LinkedList;

    return-object v0
.end method

.method public getValue(Lcom/netflix/falkor/ModelProxy;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->valueRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v1

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

    invoke-virtual {v0}, Lcom/netflix/falkor/PQL;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Lcom/netflix/falkor/ModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    instance-of v0, v1, Lcom/netflix/falkor/ReferenceTarget;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 72
    check-cast v0, Lcom/netflix/falkor/ReferenceTarget;

    .line 73
    new-instance v2, Lcom/netflix/falkor/LinkedList;

    invoke-interface {v0}, Lcom/netflix/falkor/ReferenceTarget;->getReferences()Lcom/netflix/falkor/LinkedList;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/netflix/falkor/LinkedList;-><init>(Ljava/lang/Object;Lcom/netflix/falkor/LinkedList;)V

    invoke-interface {v0, v2}, Lcom/netflix/falkor/ReferenceTarget;->setReferences(Lcom/netflix/falkor/LinkedList;)V

    .line 74
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->valueRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setExpires(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/netflix/falkor/Ref;->expires:Ljava/util/Date;

    .line 125
    return-void
.end method

.method public setPath(Lcom/netflix/falkor/PQL;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/netflix/falkor/Ref;->path:Lcom/netflix/falkor/PQL;

    .line 104
    return-void
.end method

.method public setRefPath(Lcom/netflix/falkor/PQL;)V
    .locals 2

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

    invoke-virtual {p1, v0}, Lcom/netflix/falkor/PQL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

    .line 48
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->valueRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
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
    .line 113
    iput-object p1, p0, Lcom/netflix/falkor/Ref;->references:Lcom/netflix/falkor/LinkedList;

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    const-string/jumbo v0, "Ref path: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
