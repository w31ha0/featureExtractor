.class public final Lcom/paypal/android/a/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/paypal/android/a/o$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;
    .locals 10

    const/4 v0, 0x0

    const/4 v3, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x0

    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x2

    invoke-direct {v2, v3, v1, v3, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    sget-object v2, Lcom/paypal/android/a/o$a;->a:Lcom/paypal/android/a/o$a;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/paypal/android/a/o$a;->c:Lcom/paypal/android/a/o$a;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/paypal/android/a/o$a;->e:Lcom/paypal/android/a/o$a;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/paypal/android/a/o$a;->g:Lcom/paypal/android/a/o$a;

    if-ne p0, v2, :cond_3

    :cond_0
    const-string v2, "Helvetica"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    sget-object v2, Lcom/paypal/android/a/o$a;->a:Lcom/paypal/android/a/o$a;

    if-eq p0, v2, :cond_1

    sget-object v2, Lcom/paypal/android/a/o$a;->b:Lcom/paypal/android/a/o$a;

    if-ne p0, v2, :cond_5

    :cond_1
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_1
    move-object v0, v1

    :cond_2
    return-object v0

    :cond_3
    sget-object v2, Lcom/paypal/android/a/o$a;->b:Lcom/paypal/android/a/o$a;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/paypal/android/a/o$a;->d:Lcom/paypal/android/a/o$a;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/paypal/android/a/o$a;->f:Lcom/paypal/android/a/o$a;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/paypal/android/a/o$a;->h:Lcom/paypal/android/a/o$a;

    if-ne p0, v2, :cond_2

    :cond_4
    const-string v2, "Helvetica"

    invoke-static {v2, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/paypal/android/a/o$a;->c:Lcom/paypal/android/a/o$a;

    if-eq p0, v2, :cond_6

    sget-object v2, Lcom/paypal/android/a/o$a;->d:Lcom/paypal/android/a/o$a;

    if-ne p0, v2, :cond_7

    :cond_6
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    :cond_7
    sget-object v2, Lcom/paypal/android/a/o$a;->e:Lcom/paypal/android/a/o$a;

    if-eq p0, v2, :cond_8

    sget-object v2, Lcom/paypal/android/a/o$a;->f:Lcom/paypal/android/a/o$a;

    if-ne p0, v2, :cond_9

    :cond_8
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    :cond_9
    sget-object v2, Lcom/paypal/android/a/o$a;->g:Lcom/paypal/android/a/o$a;

    if-eq p0, v2, :cond_a

    sget-object v2, Lcom/paypal/android/a/o$a;->h:Lcom/paypal/android/a/o$a;

    if-ne p0, v2, :cond_2

    :cond_a
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1
.end method

.method public static b(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/paypal/android/a/o;->a(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    move-result-object v4

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v1

    if-ne v1, v7, :cond_1

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPreapproval()Lcom/paypal/android/MEP/PayPalPreapproval;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalPreapproval;->getMerchantName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, v8, v6, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v3

    :cond_1
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->isPersonalPayment()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_send_to"

    invoke-static {v1}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getRecipient()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getMerchantName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getMerchantName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_send_to"

    invoke-static {v1}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getRecipient()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v0

    if-ne v0, v6, :cond_8

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getMerchantName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getPrimaryReceiver()Lcom/paypal/android/MEP/PayPalReceiverDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getMerchantName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_send_to"

    invoke-static {v1}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getPrimaryReceiver()Lcom/paypal/android/MEP/PayPalReceiverDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getRecipient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getMerchantName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_0

    :cond_a
    :goto_2
    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getRecipient()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANDROID_send_to"

    invoke-static {v2}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    move v1, v2

    :goto_3
    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getMerchantName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
