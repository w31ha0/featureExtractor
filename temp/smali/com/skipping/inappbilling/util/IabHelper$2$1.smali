.class Lcom/skipping/inappbilling/util/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/inappbilling/util/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/skipping/inappbilling/util/IabHelper$2;

.field private final synthetic val$inv_f:Lcom/skipping/inappbilling/util/Inventory;

.field private final synthetic val$listener:Lcom/skipping/inappbilling/util/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$result_f:Lcom/skipping/inappbilling/util/IabResult;


# direct methods
.method constructor <init>(Lcom/skipping/inappbilling/util/IabHelper$2;Lcom/skipping/inappbilling/util/IabHelper$QueryInventoryFinishedListener;Lcom/skipping/inappbilling/util/IabResult;Lcom/skipping/inappbilling/util/Inventory;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/inappbilling/util/IabHelper$2$1;->this$1:Lcom/skipping/inappbilling/util/IabHelper$2;

    iput-object p2, p0, Lcom/skipping/inappbilling/util/IabHelper$2$1;->val$listener:Lcom/skipping/inappbilling/util/IabHelper$QueryInventoryFinishedListener;

    iput-object p3, p0, Lcom/skipping/inappbilling/util/IabHelper$2$1;->val$result_f:Lcom/skipping/inappbilling/util/IabResult;

    iput-object p4, p0, Lcom/skipping/inappbilling/util/IabHelper$2$1;->val$inv_f:Lcom/skipping/inappbilling/util/Inventory;

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 608
    iget-object v0, p0, Lcom/skipping/inappbilling/util/IabHelper$2$1;->val$listener:Lcom/skipping/inappbilling/util/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/skipping/inappbilling/util/IabHelper$2$1;->val$result_f:Lcom/skipping/inappbilling/util/IabResult;

    iget-object v2, p0, Lcom/skipping/inappbilling/util/IabHelper$2$1;->val$inv_f:Lcom/skipping/inappbilling/util/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/skipping/inappbilling/util/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/skipping/inappbilling/util/IabResult;Lcom/skipping/inappbilling/util/Inventory;)V

    .line 609
    return-void
.end method
