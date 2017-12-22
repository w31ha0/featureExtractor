.class final Lcom/netflix/falkor/IterableBuilder$6;
.super Ljava/lang/Object;
.source "IterableBuilder.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/netflix/falkor/IterableBuilder$6;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lcom/netflix/falkor/IterableBuilder$6$1;

    invoke-direct {v0, p0}, Lcom/netflix/falkor/IterableBuilder$6$1;-><init>(Lcom/netflix/falkor/IterableBuilder$6;)V

    return-object v0
.end method
