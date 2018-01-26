.class public Lcom/paypal/android/MEP/PayPalInvoiceItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5L


# instance fields
.field a:Ljava/math/BigDecimal;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/math/BigDecimal;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->a:Ljava/math/BigDecimal;

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->d:Ljava/math/BigDecimal;

    const/4 v0, 0x0

    iput v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->d:Ljava/math/BigDecimal;

    iput p4, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->e:I

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p4}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->a:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->e:I

    return v0
.end method

.method public getTotalPrice()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->a:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getUnitPrice()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->d:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->a:Ljava/math/BigDecimal;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->a:Ljava/math/BigDecimal;

    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gtz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->d:Ljava/math/BigDecimal;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->d:Ljava/math/BigDecimal;

    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gtz v1, :cond_0

    :cond_4
    iget v1, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->e:I

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->c:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->b:Ljava/lang/String;

    return-void
.end method

.method public setQuantity(I)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->e:I

    return-void
.end method

.method public setTotalPrice(Ljava/math/BigDecimal;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->a:Ljava/math/BigDecimal;

    return-void
.end method

.method public setUnitPrice(Ljava/math/BigDecimal;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceItem;->d:Ljava/math/BigDecimal;

    return-void
.end method
