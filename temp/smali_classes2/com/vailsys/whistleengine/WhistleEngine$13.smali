.class Lcom/vailsys/whistleengine/WhistleEngine$13;
.super Ljava/lang/Object;
.source "WhistleEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/vailsys/whistleengine/WhistleEngine;

.field final synthetic val$codec:Ljava/lang/String;

.field final synthetic val$line:I

.field final synthetic val$sampleRate:I


# direct methods
.method constructor <init>(Lcom/vailsys/whistleengine/WhistleEngine;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngine$13;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    iput p2, p0, Lcom/vailsys/whistleengine/WhistleEngine$13;->val$line:I

    iput-object p3, p0, Lcom/vailsys/whistleengine/WhistleEngine$13;->val$codec:Ljava/lang/String;

    iput p4, p0, Lcom/vailsys/whistleengine/WhistleEngine$13;->val$sampleRate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 454
    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine$13;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-static {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->access$000(Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine$13;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-static {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->access$000(Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    move-result-object v0

    iget v1, p0, Lcom/vailsys/whistleengine/WhistleEngine$13;->val$line:I

    iget-object v2, p0, Lcom/vailsys/whistleengine/WhistleEngine$13;->val$codec:Ljava/lang/String;

    iget v3, p0, Lcom/vailsys/whistleengine/WhistleEngine$13;->val$sampleRate:I

    invoke-interface {v0, v1, v2, v3}, Lcom/vailsys/whistleengine/WhistleEngineDelegate;->selectedCodec(ILjava/lang/String;I)V

    .line 456
    :cond_0
    return-void
.end method
