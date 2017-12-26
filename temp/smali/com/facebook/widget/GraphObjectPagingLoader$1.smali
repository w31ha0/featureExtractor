.class Lcom/facebook/widget/GraphObjectPagingLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/Request$Callback;


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/GraphObjectPagingLoader;


# direct methods
.method constructor <init>(Lcom/facebook/widget/GraphObjectPagingLoader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader$1;->this$0:Lcom/facebook/widget/GraphObjectPagingLoader;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader$1;->this$0:Lcom/facebook/widget/GraphObjectPagingLoader;

    invoke-static {v0, p1}, Lcom/facebook/widget/GraphObjectPagingLoader;->access$1(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/Response;)V

    .line 94
    return-void
.end method
