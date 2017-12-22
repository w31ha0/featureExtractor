.class public interface abstract Lcom/netflix/falkor/BranchNode;
.super Ljava/lang/Object;
.source "BranchNode.java"


# virtual methods
.method public abstract get(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/Object;)V
.end method
