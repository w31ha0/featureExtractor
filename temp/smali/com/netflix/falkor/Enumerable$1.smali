.class final Lcom/netflix/falkor/Enumerable$1;
.super Ljava/lang/Object;
.source "Enumerable.java"

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
.field final synthetic val$array:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/netflix/falkor/Enumerable$1;->val$array:[Ljava/lang/Object;

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
    .line 17
    new-instance v0, Lcom/netflix/falkor/Enumerable$1$1;

    invoke-direct {v0, p0}, Lcom/netflix/falkor/Enumerable$1$1;-><init>(Lcom/netflix/falkor/Enumerable$1;)V

    return-object v0
.end method
