.class public Lcom/paypal/android/MEP/PayPalReceiverDetails;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/math/BigDecimal;

.field private c:Lcom/paypal/android/MEP/PayPalInvoiceData;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->b:Ljava/math/BigDecimal;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->c:Lcom/paypal/android/MEP/PayPalInvoiceData;

    const/4 v0, 0x3

    iput v0, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->d:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->e:I

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->i:Z

    return-void
.end method


# virtual methods
.method public getCustomID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->c:Lcom/paypal/android/MEP/PayPalInvoiceData;

    return-object v0
.end method

.method public getIsPrimary()Z
    .locals 1

    iget-boolean v0, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->i:Z

    return v0
.end method

.method public getMerchantName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentSubtype()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->e:I

    return v0
.end method

.method public getPaymentType()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->d:I

    return v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtotal()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->b:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getTotal()Ljava/math/BigDecimal;
    .locals 2

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->b:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->c:Lcom/paypal/android/MEP/PayPalInvoiceData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->c:Lcom/paypal/android/MEP/PayPalInvoiceData;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getTax()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->c:Lcom/paypal/android/MEP/PayPalInvoiceData;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getTax()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->c:Lcom/paypal/android/MEP/PayPalInvoiceData;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getShipping()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->c:Lcom/paypal/android/MEP/PayPalInvoiceData;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getShipping()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public isEmailRecipient()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/a/h;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPhoneRecipient()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/a/h;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCustomID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->g:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->f:Ljava/lang/String;

    return-void
.end method

.method public setInvoiceData(Lcom/paypal/android/MEP/PayPalInvoiceData;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->c:Lcom/paypal/android/MEP/PayPalInvoiceData;

    return-void
.end method

.method public setIsPrimary(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->i:Z

    return-void
.end method

.method public setMerchantName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->h:Ljava/lang/String;

    return-void
.end method

.method public setPaymentSubtype(I)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->e:I

    return-void
.end method

.method public setPaymentType(I)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->d:I

    return-void
.end method

.method public setRecipient(Ljava/lang/String;)V
    .locals 2

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->a:Ljava/lang/String;

    return-void
.end method

.method public setSubtotal(Ljava/math/BigDecimal;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalReceiverDetails;->b:Ljava/math/BigDecimal;

    return-void
.end method
