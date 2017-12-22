.class public interface abstract Lcom/netflix/falkor/ReferenceTarget;
.super Ljava/lang/Object;
.source "ReferenceTarget.java"


# virtual methods
.method public abstract getReferences()Lcom/netflix/falkor/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/falkor/LinkedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setReferences(Lcom/netflix/falkor/LinkedList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/LinkedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;)V"
        }
    .end annotation
.end method
