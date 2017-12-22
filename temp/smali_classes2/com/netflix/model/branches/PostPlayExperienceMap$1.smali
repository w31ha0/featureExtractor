.class Lcom/netflix/model/branches/PostPlayExperienceMap$1;
.super Ljava/lang/Object;
.source "PostPlayExperienceMap.java"

# interfaces
.implements Lcom/netflix/falkor/Func;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netflix/falkor/Func",
        "<",
        "Lcom/netflix/falkor/BranchMap",
        "<",
        "Lcom/netflix/falkor/Ref;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/model/branches/PostPlayExperienceMap;


# direct methods
.method constructor <init>(Lcom/netflix/model/branches/PostPlayExperienceMap;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/netflix/model/branches/PostPlayExperienceMap$1;->this$0:Lcom/netflix/model/branches/PostPlayExperienceMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/netflix/falkor/BranchMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/netflix/model/branches/PostPlayExperienceMap$1;->call()Lcom/netflix/falkor/BranchMap;

    move-result-object v0

    return-object v0
.end method
