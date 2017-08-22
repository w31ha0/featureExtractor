.class Lcom/android/vending/billing/InAppBillingForNovel$3;
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
    .line 91
    iput-object p1, p0, Lcom/android/vending/billing/InAppBillingForNovel$3;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Inventory;)V
    .locals 5
    .param p1, "result"    # Lcom/android/vending/billing/util/IabResult;
    .param p2, "inventory"    # Lcom/android/vending/billing/util/Inventory;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    const-string v1, "iapp"

    const-string v4, "Query inventory finished."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/android/vending/billing/InAppBillingForNovel$3;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v1, v1, Lcom/android/vending/billing/InAppBillingForNovel;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    if-nez v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/android/vending/billing/InAppBillingForNovel$3;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query inventory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/billing/InAppBillingForNovel;->complain(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_1
    const-string v1, "iapp"

    const-string v4, "Query inventory was successful."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/android/vending/billing/InAppBillingForNovel$3;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v1, v1, Lcom/android/vending/billing/InAppBillingForNovel;->IAP_subscription:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/android/vending/billing/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/android/vending/billing/util/Purchase;

    move-result-object v0

    .line 108
    .local v0, "premiumPurchase":Lcom/android/vending/billing/util/Purchase;
    iget-object v4, p0, Lcom/android/vending/billing/InAppBillingForNovel$3;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/vending/billing/util/Purchase;->getPurchaseState()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, v4, Lcom/android/vending/billing/InAppBillingForNovel;->mIsYearSubscription:Z

    .line 110
    iget-object v1, p0, Lcom/android/vending/billing/InAppBillingForNovel$3;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-boolean v1, v1, Lcom/android/vending/billing/InAppBillingForNovel;->mIsYearSubscription:Z

    if-eqz v1, :cond_3

    .line 111
    const-string v1, "YearSubscription"

    iget-object v3, p0, Lcom/android/vending/billing/InAppBillingForNovel$3;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v3, v3, Lcom/android/vending/billing/InAppBillingForNovel;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/novel/reader/util/Setting;->saveSetting(Ljava/lang/String;ILandroid/content/Context;)V

    .line 112
    iget-object v1, p0, Lcom/android/vending/billing/InAppBillingForNovel$3;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    const-string/jumbo v2, "\u7d93\u9a57\u8b49\u5df2\u8cfc\u8cb7\uff0c\u5341\u5206\u611f\u8b1d\u4f60\uff01"

    invoke-virtual {v1, v2}, Lcom/android/vending/billing/InAppBillingForNovel;->alert(Ljava/lang/String;)V

    .line 116
    :goto_2
    const-string v2, "iapp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/vending/billing/InAppBillingForNovel$3;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-boolean v1, v1, Lcom/android/vending/billing/InAppBillingForNovel;->mIsYearSubscription:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/vending/billing/InAppBillingForNovel$3;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v1, v1, Lcom/android/vending/billing/InAppBillingForNovel;->IAP_subscription:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v1, v3

    .line 108
    goto :goto_1

    .line 114
    :cond_3
    const-string v1, "YearSubscription"

    iget-object v2, p0, Lcom/android/vending/billing/InAppBillingForNovel$3;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v2, v2, Lcom/android/vending/billing/InAppBillingForNovel;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v2}, Lcom/novel/reader/util/Setting;->saveSetting(Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_2

    .line 116
    :cond_4
    const-string v1, "not year_subscription"

    goto :goto_3
.end method
