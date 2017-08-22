.class Lcom/android/vending/billing/InAppBillingForNovel$4;
.super Ljava/lang/Object;
.source "InAppBillingForNovel.java"

# interfaces
.implements Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;


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
    .line 123
    iput-object p1, p0, Lcom/android/vending/billing/InAppBillingForNovel$4;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V
    .locals 3
    .param p1, "result"    # Lcom/android/vending/billing/util/IabResult;
    .param p2, "purchase"    # Lcom/android/vending/billing/util/Purchase;

    .prologue
    .line 125
    const-string v0, "iapp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purchase finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", purchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/vending/billing/InAppBillingForNovel$4;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v0, v0, Lcom/android/vending/billing/InAppBillingForNovel;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/android/vending/billing/InAppBillingForNovel$4;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-boolean v0, v0, Lcom/android/vending/billing/InAppBillingForNovel;->mIsYearSubscription:Z

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/vending/billing/InAppBillingForNovel$4;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v1, p0, Lcom/android/vending/billing/InAppBillingForNovel$4;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v1, v1, Lcom/android/vending/billing/InAppBillingForNovel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/InAppBillingForNovel;->alert(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p2}, Lcom/android/vending/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/billing/InAppBillingForNovel$4;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v1, v1, Lcom/android/vending/billing/InAppBillingForNovel;->IAP_subscription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/android/vending/billing/InAppBillingForNovel$4;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v1, p0, Lcom/android/vending/billing/InAppBillingForNovel$4;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v1, v1, Lcom/android/vending/billing/InAppBillingForNovel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/InAppBillingForNovel;->alert(Ljava/lang/String;)V

    .line 141
    :cond_3
    const-string v0, "iapp"

    const-string v1, "Purchase successful."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
