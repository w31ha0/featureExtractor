.class Lcom/netflix/falkor/CachedPathEvaluator$MissingMember;
.super Ljava/lang/Object;
.source "CachedPathEvaluator.java"

# interfaces
.implements Lcom/netflix/falkor/PathBound;


# instance fields
.field path:Lcom/netflix/falkor/PQL;

.field final synthetic this$0:Lcom/netflix/falkor/CachedPathEvaluator;


# direct methods
.method private constructor <init>(Lcom/netflix/falkor/CachedPathEvaluator;)V
    .locals 1

    .prologue
    .line 10
    iput-object p1, p0, Lcom/netflix/falkor/CachedPathEvaluator$MissingMember;->this$0:Lcom/netflix/falkor/CachedPathEvaluator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/netflix/falkor/PQL;->EMPTY:Lcom/netflix/falkor/PQL;

    iput-object v0, p0, Lcom/netflix/falkor/CachedPathEvaluator$MissingMember;->path:Lcom/netflix/falkor/PQL;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/falkor/CachedPathEvaluator;Lcom/netflix/falkor/CachedPathEvaluator$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/netflix/falkor/CachedPathEvaluator$MissingMember;-><init>(Lcom/netflix/falkor/CachedPathEvaluator;)V

    return-void
.end method


# virtual methods
.method public getPath()Lcom/netflix/falkor/PQL;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/netflix/falkor/CachedPathEvaluator$MissingMember;->path:Lcom/netflix/falkor/PQL;

    return-object v0
.end method

.method public setPath(Lcom/netflix/falkor/PQL;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/netflix/falkor/CachedPathEvaluator$MissingMember;->path:Lcom/netflix/falkor/PQL;

    .line 18
    return-void
.end method
