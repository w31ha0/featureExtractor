.class Lcom/facebook/internal/FacebookWebFallbackDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/FacebookWebFallbackDialog;


# direct methods
.method constructor <init>(Lcom/facebook/internal/FacebookWebFallbackDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/internal/FacebookWebFallbackDialog$2;->this$0:Lcom/facebook/internal/FacebookWebFallbackDialog;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/internal/FacebookWebFallbackDialog$2;->this$0:Lcom/facebook/internal/FacebookWebFallbackDialog;

    invoke-static {v0}, Lcom/facebook/internal/FacebookWebFallbackDialog;->access$0(Lcom/facebook/internal/FacebookWebFallbackDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/facebook/internal/FacebookWebFallbackDialog$2;->this$0:Lcom/facebook/internal/FacebookWebFallbackDialog;

    invoke-static {v0}, Lcom/facebook/internal/FacebookWebFallbackDialog;->access$1(Lcom/facebook/internal/FacebookWebFallbackDialog;)V

    .line 167
    :cond_0
    return-void
.end method
