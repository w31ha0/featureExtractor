.class public Lcom/paypal/android/MEP/PayPalPayment;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/math/BigDecimal;

.field private d:Lcom/paypal/android/MEP/PayPalInvoiceData;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->c:Ljava/math/BigDecimal;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->d:Lcom/paypal/android/MEP/PayPalInvoiceData;

    const/4 v0, 0x3

    iput v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->e:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->f:I

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Currency;ILcom/paypal/android/MEP/PayPalInvoiceData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/paypal/android/MEP/PayPalPayment;->d:Lcom/paypal/android/MEP/PayPalInvoiceData;

    iput p3, p0, Lcom/paypal/android/MEP/PayPalPayment;->e:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->f:I

    iput-object p6, p0, Lcom/paypal/android/MEP/PayPalPayment;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/paypal/android/MEP/PayPalPayment;->h:Ljava/lang/String;

    iput-object p7, p0, Lcom/paypal/android/MEP/PayPalPayment;->i:Ljava/lang/String;

    iput-object p8, p0, Lcom/paypal/android/MEP/PayPalPayment;->j:Ljava/lang/String;

    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->c:Ljava/math/BigDecimal;

    iget-object v0, p4, Lcom/paypal/android/MEP/PayPalInvoiceData;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalInvoiceItem;

    iget-object v2, p0, Lcom/paypal/android/MEP/PayPalPayment;->c:Ljava/math/BigDecimal;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->a:Ljava/math/BigDecimal;

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->c:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->c:Ljava/math/BigDecimal;

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->c:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public getCurrencyType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->d:Lcom/paypal/android/MEP/PayPalInvoiceData;

    return-object v0
.end method

.method public getIpnUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentSubtype()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->f:I

    return v0
.end method

.method public getPaymentType()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->e:I

    return v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtotal()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->c:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public setCurrencyType(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:Ljava/lang/String;

    return-void
.end method

.method public setCurrencyType(Ljava/util/Currency;)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:Ljava/lang/String;

    return-void
.end method

.method public setCustomID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->g:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->j:Ljava/lang/String;

    return-void
.end method

.method public setInvoiceData(Lcom/paypal/android/MEP/PayPalInvoiceData;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->d:Lcom/paypal/android/MEP/PayPalInvoiceData;

    return-void
.end method

.method public setIpnUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->i:Ljava/lang/String;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->j:Ljava/lang/String;

    return-void
.end method

.method public setMerchantName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->h:Ljava/lang/String;

    return-void
.end method

.method public setPaymentSubtype(I)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->f:I

    return-void
.end method

.method public setPaymentType(I)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->e:I

    return-void
.end method

.method public setRecipient(Ljava/lang/String;)V
    .locals 2

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    return-void
.end method

.method public setSubtotal(Ljava/math/BigDecimal;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->c:Ljava/math/BigDecimal;

    return-void
.end method
