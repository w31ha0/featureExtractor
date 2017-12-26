.class Lcom/facebook/Request$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/Request$Callback;


# instance fields
.field private final synthetic val$callback:Lcom/facebook/Request$GraphPlaceListCallback;


# direct methods
.method constructor <init>(Lcom/facebook/Request$GraphPlaceListCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/Request$3;->val$callback:Lcom/facebook/Request$GraphPlaceListCallback;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/facebook/Request$3;->val$callback:Lcom/facebook/Request$GraphPlaceListCallback;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/facebook/Request$3;->val$callback:Lcom/facebook/Request$GraphPlaceListCallback;

    const-class v1, Lcom/facebook/model/GraphPlace;

    invoke-static {p1, v1}, Lcom/facebook/Request;->access$2(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/Request$GraphPlaceListCallback;->onCompleted(Ljava/util/List;Lcom/facebook/Response;)V

    .line 426
    :cond_0
    return-void
.end method
