.class Lcom/vailsys/whistleengine/WhistleEngine$7;
.super Ljava/lang/Object;
.source "WhistleEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/vailsys/whistleengine/WhistleEngine;

.field final synthetic val$line:I


# direct methods
.method constructor <init>(Lcom/vailsys/whistleengine/WhistleEngine;I)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngine$7;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    iput p2, p0, Lcom/vailsys/whistleengine/WhistleEngine$7;->val$line:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine$7;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-static {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->access$000(Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine$7;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-static {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->access$000(Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    move-result-object v0

    iget v1, p0, Lcom/vailsys/whistleengine/WhistleEngine$7;->val$line:I

    invoke-interface {v0, v1}, Lcom/vailsys/whistleengine/WhistleEngineDelegate;->callEnded(I)V

    .line 383
    :cond_0
    return-void
.end method
