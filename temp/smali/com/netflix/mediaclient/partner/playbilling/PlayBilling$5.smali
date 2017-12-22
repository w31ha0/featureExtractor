.class Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$5;
.super Ljava/lang/Object;
.source "PlayBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

.field final synthetic val$callback:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

.field final synthetic val$continuationToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Ljava/lang/String;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$5;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iput-object p2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$5;->val$continuationToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$5;->val$callback:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$5;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$5;->val$continuationToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->access$200(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 545
    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$5;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->flagEndAsync()V

    .line 546
    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$5;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iget-object v2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$5;->val$callback:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->access$100(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;Lorg/json/JSONObject;)V

    .line 547
    return-void
.end method
