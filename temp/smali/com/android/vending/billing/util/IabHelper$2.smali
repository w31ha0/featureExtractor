.class Lcom/android/vending/billing/util/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/util/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/android/vending/billing/util/IabHelper;ZLjava/util/List;Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/vending/billing/util/IabHelper;

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/vending/billing/util/IabHelper$2;->this$0:Lcom/android/vending/billing/util/IabHelper;

    iput-boolean p2, p0, Lcom/android/vending/billing/util/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/android/vending/billing/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/android/vending/billing/util/IabHelper$2;->val$listener:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/android/vending/billing/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 609
    new-instance v3, Lcom/android/vending/billing/util/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/android/vending/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 610
    .local v3, "result":Lcom/android/vending/billing/util/IabResult;
    const/4 v1, 0x0

    .line 612
    .local v1, "inv":Lcom/android/vending/billing/util/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/android/vending/billing/util/IabHelper$2;->this$0:Lcom/android/vending/billing/util/IabHelper;

    iget-boolean v6, p0, Lcom/android/vending/billing/util/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/android/vending/billing/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/android/vending/billing/util/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/android/vending/billing/util/Inventory;
    :try_end_0
    .catch Lcom/android/vending/billing/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 617
    :goto_0
    iget-object v5, p0, Lcom/android/vending/billing/util/IabHelper$2;->this$0:Lcom/android/vending/billing/util/IabHelper;

    invoke-virtual {v5}, Lcom/android/vending/billing/util/IabHelper;->flagEndAsync()V

    .line 619
    move-object v4, v3

    .line 620
    .local v4, "result_f":Lcom/android/vending/billing/util/IabResult;
    move-object v2, v1

    .line 621
    .local v2, "inv_f":Lcom/android/vending/billing/util/Inventory;
    iget-object v5, p0, Lcom/android/vending/billing/util/IabHelper$2;->this$0:Lcom/android/vending/billing/util/IabHelper;

    iget-boolean v5, v5, Lcom/android/vending/billing/util/IabHelper;->mDisposed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/vending/billing/util/IabHelper$2;->val$listener:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_0

    .line 622
    iget-object v5, p0, Lcom/android/vending/billing/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/android/vending/billing/util/IabHelper$2$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/android/vending/billing/util/IabHelper$2$1;-><init>(Lcom/android/vending/billing/util/IabHelper$2;Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 628
    :cond_0
    return-void

    .line 613
    .end local v2    # "inv_f":Lcom/android/vending/billing/util/Inventory;
    .end local v4    # "result_f":Lcom/android/vending/billing/util/IabResult;
    :catch_0
    move-exception v0

    .line 614
    .local v0, "ex":Lcom/android/vending/billing/util/IabException;
    invoke-virtual {v0}, Lcom/android/vending/billing/util/IabException;->getResult()Lcom/android/vending/billing/util/IabResult;

    move-result-object v3

    goto :goto_0
.end method
