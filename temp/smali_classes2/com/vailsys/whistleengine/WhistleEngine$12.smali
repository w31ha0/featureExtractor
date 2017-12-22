.class Lcom/vailsys/whistleengine/WhistleEngine$12;
.super Ljava/lang/Object;
.source "WhistleEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/vailsys/whistleengine/WhistleEngine;

.field final synthetic val$line:I

.field final synthetic val$secured:Z


# direct methods
.method constructor <init>(Lcom/vailsys/whistleengine/WhistleEngine;IZ)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngine$12;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    iput p2, p0, Lcom/vailsys/whistleengine/WhistleEngine$12;->val$line:I

    iput-boolean p3, p0, Lcom/vailsys/whistleengine/WhistleEngine$12;->val$secured:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine$12;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-static {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->access$000(Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine$12;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-static {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->access$000(Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    move-result-object v0

    iget v1, p0, Lcom/vailsys/whistleengine/WhistleEngine$12;->val$line:I

    iget-boolean v2, p0, Lcom/vailsys/whistleengine/WhistleEngine$12;->val$secured:Z

    invoke-interface {v0, v1, v2}, Lcom/vailsys/whistleengine/WhistleEngineDelegate;->callSecured(IZ)V

    .line 444
    :cond_0
    return-void
.end method
