.class Lcom/netflix/falkor/IterableBuilder$4;
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

.field final synthetic val$onCompletedAction:Lcom/netflix/falkor/Action;

.field final synthetic val$onNextAction:Lcom/netflix/falkor/Action1;

.field final synthetic val$self:Lcom/netflix/falkor/IterableBuilder;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/IterableBuilder;Lcom/netflix/falkor/IterableBuilder;Lcom/netflix/falkor/Action;Lcom/netflix/falkor/Action1;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/netflix/falkor/IterableBuilder$4;->this$0:Lcom/netflix/falkor/IterableBuilder;

    iput-object p2, p0, Lcom/netflix/falkor/IterableBuilder$4;->val$self:Lcom/netflix/falkor/IterableBuilder;

    iput-object p3, p0, Lcom/netflix/falkor/IterableBuilder$4;->val$onCompletedAction:Lcom/netflix/falkor/Action;

    iput-object p4, p0, Lcom/netflix/falkor/IterableBuilder$4;->val$onNextAction:Lcom/netflix/falkor/Action1;

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
    .line 79
    new-instance v0, Lcom/netflix/falkor/IterableBuilder$4$1;

    invoke-direct {v0, p0}, Lcom/netflix/falkor/IterableBuilder$4$1;-><init>(Lcom/netflix/falkor/IterableBuilder$4;)V

    return-object v0
.end method
