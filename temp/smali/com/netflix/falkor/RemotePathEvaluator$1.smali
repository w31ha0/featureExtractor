.class Lcom/netflix/falkor/RemotePathEvaluator$1;
.super Ljava/lang/Object;
.source "RemotePathEvaluator.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/netflix/falkor/PathBoundValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/RemotePathEvaluator;

.field final synthetic val$builder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/RemotePathEvaluator;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/netflix/falkor/RemotePathEvaluator$1;->this$0:Lcom/netflix/falkor/RemotePathEvaluator;

    iput-object p2, p0, Lcom/netflix/falkor/RemotePathEvaluator$1;->val$builder:Ljava/lang/StringBuilder;

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
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;

    invoke-direct {v0, p0}, Lcom/netflix/falkor/RemotePathEvaluator$1$1;-><init>(Lcom/netflix/falkor/RemotePathEvaluator$1;)V

    return-object v0
.end method
