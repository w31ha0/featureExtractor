.class Lcom/android/vending/billing/InAppBillingForNovel$2;
.super Ljava/lang/Object;
.source "InAppBillingForNovel.java"

# interfaces
.implements Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/InAppBillingForNovel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/InAppBillingForNovel;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/InAppBillingForNovel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/vending/billing/InAppBillingForNovel;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/vending/billing/InAppBillingForNovel$2;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Inventory;)V
    .locals 2
    .param p1, "result"    # Lcom/android/vending/billing/util/IabResult;
    .param p2, "inv"    # Lcom/android/vending/billing/util/Inventory;

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/vending/billing/InAppBillingForNovel$2;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v1, v1, Lcom/android/vending/billing/InAppBillingForNovel;->IAP_subscription:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/android/vending/billing/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/android/vending/billing/util/SkuDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/billing/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "applePrice":Ljava/lang/String;
    goto :goto_0
.end method
