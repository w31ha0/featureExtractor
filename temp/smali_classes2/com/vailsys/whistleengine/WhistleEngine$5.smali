.class Lcom/vailsys/whistleengine/WhistleEngine$5;
.super Ljava/lang/Object;
.source "WhistleEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/vailsys/whistleengine/WhistleEngine;

.field final synthetic val$line:I

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$sipCode:I


# direct methods
.method constructor <init>(Lcom/vailsys/whistleengine/WhistleEngine;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngine$5;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    iput p2, p0, Lcom/vailsys/whistleengine/WhistleEngine$5;->val$line:I

    iput-object p3, p0, Lcom/vailsys/whistleengine/WhistleEngine$5;->val$reason:Ljava/lang/String;

    iput p4, p0, Lcom/vailsys/whistleengine/WhistleEngine$5;->val$sipCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine$5;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-static {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->access$000(Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine$5;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-static {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->access$000(Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    move-result-object v0

    iget v1, p0, Lcom/vailsys/whistleengine/WhistleEngine$5;->val$line:I

    iget-object v2, p0, Lcom/vailsys/whistleengine/WhistleEngine$5;->val$reason:Ljava/lang/String;

    iget v3, p0, Lcom/vailsys/whistleengine/WhistleEngine$5;->val$sipCode:I

    invoke-interface {v0, v1, v2, v3}, Lcom/vailsys/whistleengine/WhistleEngineDelegate;->callFailed(ILjava/lang/String;I)V

    .line 335
    :cond_0
    return-void
.end method
