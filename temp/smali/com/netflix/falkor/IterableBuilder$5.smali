.class Lcom/netflix/falkor/IterableBuilder$5;
.super Ljava/lang/Object;
.source "IterableBuilder.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/IterableBuilder;

.field final synthetic val$iterable:Ljava/lang/Iterable;

.field final synthetic val$self:Lcom/netflix/falkor/IterableBuilder;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/IterableBuilder;Lcom/netflix/falkor/IterableBuilder;Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/netflix/falkor/IterableBuilder$5;->this$0:Lcom/netflix/falkor/IterableBuilder;

    iput-object p2, p0, Lcom/netflix/falkor/IterableBuilder$5;->val$self:Lcom/netflix/falkor/IterableBuilder;

    iput-object p3, p0, Lcom/netflix/falkor/IterableBuilder$5;->val$iterable:Ljava/lang/Iterable;

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
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lcom/netflix/falkor/IterableBuilder$5$1;

    invoke-direct {v0, p0}, Lcom/netflix/falkor/IterableBuilder$5$1;-><init>(Lcom/netflix/falkor/IterableBuilder$5;)V

    return-object v0
.end method
