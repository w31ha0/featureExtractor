.class Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$7;
.super Ljava/lang/Object;
.source "PlayBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

.field final synthetic val$callback:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

.field final synthetic val$skus:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Ljava/util/ArrayList;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$7;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iput-object p2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$7;->val$skus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$7;->val$callback:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 577
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$7;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$7;->val$skus:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->access$400(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$7;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->flagEndAsync()V

    .line 579
    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$7;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iget-object v2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$7;->val$callback:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->access$100(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;Lorg/json/JSONObject;)V

    .line 580
    return-void
.end method
