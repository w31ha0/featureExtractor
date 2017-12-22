.class Lcom/vailsys/whistleengine/WhistleEngine$8;
.super Ljava/lang/Object;
.source "WhistleEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/vailsys/whistleengine/WhistleEngine;

.field final synthetic val$registrationAuth:Z


# direct methods
.method constructor <init>(Lcom/vailsys/whistleengine/WhistleEngine;Z)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngine$8;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    iput-boolean p2, p0, Lcom/vailsys/whistleengine/WhistleEngine$8;->val$registrationAuth:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine$8;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-static {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->access$000(Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine$8;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-static {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->access$000(Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vailsys/whistleengine/WhistleEngine$8;->val$registrationAuth:Z

    invoke-interface {v0, v1}, Lcom/vailsys/whistleengine/WhistleEngineDelegate;->authenticationNeeded(Z)V

    .line 396
    :cond_0
    return-void
.end method
