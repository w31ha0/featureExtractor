.class Lcom/facebook/Settings$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/facebook/Settings$2;

.field private final synthetic val$callback:Lcom/facebook/Request$Callback;

.field private final synthetic val$response:Lcom/facebook/Response;


# direct methods
.method constructor <init>(Lcom/facebook/Settings$2;Lcom/facebook/Request$Callback;Lcom/facebook/Response;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/Settings$2$1;->this$1:Lcom/facebook/Settings$2;

    iput-object p2, p0, Lcom/facebook/Settings$2$1;->val$callback:Lcom/facebook/Request$Callback;

    iput-object p3, p0, Lcom/facebook/Settings$2$1;->val$response:Lcom/facebook/Response;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/facebook/Settings$2$1;->val$callback:Lcom/facebook/Request$Callback;

    iget-object v1, p0, Lcom/facebook/Settings$2$1;->val$response:Lcom/facebook/Response;

    invoke-interface {v0, v1}, Lcom/facebook/Request$Callback;->onCompleted(Lcom/facebook/Response;)V

    .line 330
    return-void
.end method
