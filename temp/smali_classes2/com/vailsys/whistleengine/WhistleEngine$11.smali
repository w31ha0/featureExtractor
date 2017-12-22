.class Lcom/vailsys/whistleengine/WhistleEngine$11;
.super Ljava/lang/Object;
.source "WhistleEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/vailsys/whistleengine/WhistleEngine;


# direct methods
.method constructor <init>(Lcom/vailsys/whistleengine/WhistleEngine;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngine$11;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine$11;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-static {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->access$000(Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine$11;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-static {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->access$000(Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/vailsys/whistleengine/WhistleEngineDelegate;->engineNotReady()V

    .line 432
    :cond_0
    return-void
.end method
