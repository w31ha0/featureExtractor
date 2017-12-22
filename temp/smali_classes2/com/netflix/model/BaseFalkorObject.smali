.class public abstract Lcom/netflix/model/BaseFalkorObject;
.super Ljava/lang/Object;
.source "BaseFalkorObject.java"

# interfaces
.implements Lcom/netflix/falkor/BranchNode;
.implements Lcom/netflix/falkor/Expires;
.implements Lcom/netflix/falkor/ModelProxyProvider;
.implements Lcom/netflix/falkor/ReferenceTarget;
.implements Lcom/netflix/model/branches/FalkorObject;


# instance fields
.field private expires:Ljava/util/Date;

.field protected final proxy:Lcom/netflix/falkor/ModelProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method protected constructor <init>(Lcom/netflix/falkor/ModelProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netflix/model/BaseFalkorObject;->proxy:Lcom/netflix/falkor/ModelProxy;

    .line 22
    return-void
.end method


# virtual methods
.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/model/BaseFalkorObject;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getModelProxy()Lcom/netflix/falkor/ModelProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/model/BaseFalkorObject;->proxy:Lcom/netflix/falkor/ModelProxy;

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
    .line 32
    iget-object v0, p0, Lcom/netflix/model/BaseFalkorObject;->references:Lcom/netflix/falkor/LinkedList;

    return-object v0
.end method

.method public setExpires(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/model/BaseFalkorObject;->expires:Ljava/util/Date;

    .line 47
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
    .line 36
    iput-object p1, p0, Lcom/netflix/model/BaseFalkorObject;->references:Lcom/netflix/falkor/LinkedList;

    .line 37
    return-void
.end method
