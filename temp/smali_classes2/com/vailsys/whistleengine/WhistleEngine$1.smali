.class Lcom/vailsys/whistleengine/WhistleEngine$1;
.super Ljava/lang/Object;
.source "WhistleEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/vailsys/whistleengine/WhistleEngine;

.field final synthetic val$displayName:Ljava/lang/String;

.field final synthetic val$line:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vailsys/whistleengine/WhistleEngine;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngine$1;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    iput-object p2, p0, Lcom/vailsys/whistleengine/WhistleEngine$1;->val$displayName:Ljava/lang/String;

    iput p3, p0, Lcom/vailsys/whistleengine/WhistleEngine$1;->val$line:I

    iput-object p4, p0, Lcom/vailsys/whistleengine/WhistleEngine$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine$1;->val$displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 281
    const/4 v0, 0x0

    .line 285
    :goto_0
    iget-object v1, p0, Lcom/vailsys/whistleengine/WhistleEngine$1;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-static {v1}, Lcom/vailsys/whistleengine/WhistleEngine;->access$000(Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/vailsys/whistleengine/WhistleEngine$1;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-static {v1}, Lcom/vailsys/whistleengine/WhistleEngine;->access$000(Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    move-result-object v1

    iget v2, p0, Lcom/vailsys/whistleengine/WhistleEngine$1;->val$line:I

    iget-object v3, p0, Lcom/vailsys/whistleengine/WhistleEngine$1;->val$url:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/vailsys/whistleengine/WhistleEngineDelegate;->incomingCall(ILjava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine$1;->val$displayName:Ljava/lang/String;

    goto :goto_0
.end method
