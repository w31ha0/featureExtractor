.class Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;
.super Ljava/lang/Object;
.source "PlayBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic val$callback:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

.field final synthetic val$payload:Ljava/lang/String;

.field final synthetic val$requestCode:I

.field final synthetic val$sku:Ljava/lang/String;

.field final synthetic val$trialPeriodInDays:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iput-object p2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->val$callback:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

    iput-object p3, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p4, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->val$sku:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->val$payload:Ljava/lang/String;

    iput p6, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->val$trialPeriodInDays:I

    iput-object p7, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->val$accountId:Ljava/lang/String;

    iput p8, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 521
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->val$callback:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

    iput-object v1, v0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mPurchaseListener:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

    .line 522
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->val$sku:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->val$payload:Ljava/lang/String;

    iget v4, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->val$trialPeriodInDays:I

    iget-object v5, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->val$accountId:Ljava/lang/String;

    iget v6, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->val$requestCode:I

    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->access$000(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->flagEndAsync()V

    .line 524
    if-eqz v0, :cond_0

    .line 528
    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mPurchaseListener:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

    .line 529
    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iget-object v2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$4;->val$callback:Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->access$100(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;Lorg/json/JSONObject;)V

    .line 531
    :cond_0
    return-void
.end method
