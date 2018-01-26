.class public Lcom/biznessapps/fragments/shoppingcart/PaypalResultDelegate;
.super Ljava/lang/Object;
.source "PaypalResultDelegate.java"

# interfaces
.implements Lcom/paypal/android/MEP/PayPalResultDelegate;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2711L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentCanceled(Ljava/lang/String;)V
    .locals 1
    .param p1, "paymentStatus"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v0, "CANCELED"

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultTitle:Ljava/lang/String;

    .line 48
    const-string v0, "The transaction has been cancelled."

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultInfo:Ljava/lang/String;

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultExtra:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public onPaymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "paymentStatus"    # Ljava/lang/String;
    .param p2, "correlationID"    # Ljava/lang/String;
    .param p3, "payKey"    # Ljava/lang/String;
    .param p4, "errorID"    # Ljava/lang/String;
    .param p5, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v0, "FAILURE"

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultTitle:Ljava/lang/String;

    .line 36
    sput-object p5, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultInfo:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nCorrelation ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nPay Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultExtra:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public onPaymentSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "payKey"    # Ljava/lang/String;
    .param p2, "paymentStatus"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string v0, "SUCCESS"

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultTitle:Ljava/lang/String;

    .line 20
    const-string v0, "You have successfully completed your transaction."

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultInfo:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultExtra:Ljava/lang/String;

    .line 22
    return-void
.end method
