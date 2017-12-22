.class Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$8;
.super Ljava/lang/Object;
.source "PlayBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

.field final synthetic val$callback:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

.field final synthetic val$data:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$8;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iput-object p2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$8;->val$callback:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

    iput-object p3, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$8;->val$data:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$8;->val$callback:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$8;->val$data:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;->onResult(Lorg/json/JSONObject;)V

    .line 589
    return-void
.end method
