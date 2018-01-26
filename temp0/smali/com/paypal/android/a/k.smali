.class final Lcom/paypal/android/a/k;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paypal/android/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/paypal/android/a/b;


# direct methods
.method constructor <init>(Lcom/paypal/android/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v0}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v0}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/a$b;

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1}, Lcom/paypal/android/a/b;->c(Lcom/paypal/android/a/b;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    const-string v1, "MPL"

    const-string v2, "start LOGIN"

    invoke-static {v1, v2}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v1

    const-string v2, "mpl-review"

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1, v7}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;I)I

    :try_start_1
    iget-object v4, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "usernameOrPhone"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v2}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;)Ljava/util/Hashtable;

    move-result-object v2

    const-string v5, "passwordOrPin"

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v1, v2}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :goto_2
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v2, v7}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;I)I

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v0, v3, v8}, Lcom/paypal/android/MEP/a$b;->a(ILjava/lang/Object;)V

    const-string v0, "MPL"

    const-string v1, "end LOGIN ok"

    invoke-static {v0, v1}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Login"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error during call to log in. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    const-string v2, "LOGIN"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;Ljava/lang/String;Lcom/paypal/android/MEP/a$b;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1, v7}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;I)I

    const-string v1, "MPL"

    const-string v2, "start QUICK_LOGIN"

    invoke-static {v1, v2}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1}, Lcom/paypal/android/a/b;->d(Lcom/paypal/android/a/b;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    :try_start_3
    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1}, Lcom/paypal/android/a/b;->e(Lcom/paypal/android/a/b;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    :goto_3
    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1, v7}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;I)I

    :cond_2
    if-eqz v2, :cond_3

    const/16 v1, 0xa

    invoke-interface {v0, v1, v8}, Lcom/paypal/android/MEP/a$b;->a(ILjava/lang/Object;)V

    const-string v0, "MPL"

    const-string v1, "end QUICK_LOGIN ok"

    invoke-static {v0, v1}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_2
    move-exception v1

    move v2, v3

    :goto_4
    const-string v4, "Login"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during call to log in. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    const-string v2, "QUICK_LOGIN"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;Ljava/lang/String;Lcom/paypal/android/MEP/a$b;)V

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "UPDATE_PAYMENT is supposed to be dead code"

    invoke-static {v0, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :pswitch_4
    const-string v1, "MPL"

    const-string v2, "start CREATE_PAYMENT"

    invoke-static {v1, v2}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1, v7}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;I)I

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v1

    const-string v2, "FundingPlanId"

    const-string v4, "0"

    invoke-virtual {v1, v2, v4}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v1

    const-string v2, "FundingPlans"

    invoke-virtual {v1, v2, v8}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v1

    const-string v2, "DefaultFundingPlan"

    invoke-virtual {v1, v2, v8}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1}, Lcom/paypal/android/a/b;->f(Lcom/paypal/android/a/b;)Ljava/util/Hashtable;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v1, "ActionType"

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "PAY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "-1"

    invoke-interface {v0, v9, v1}, Lcom/paypal/android/MEP/a$b;->a(ILjava/lang/Object;)V

    :goto_5
    const-string v0, "MPL"

    const-string v1, "end CREATE_PAYMENT ok"

    invoke-static {v0, v1}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x3

    invoke-interface {v0, v1, v2}, Lcom/paypal/android/MEP/a$b;->a(ILjava/lang/Object;)V

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1, v7}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;I)I

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    const-string v2, "CREATE_PAYMENT"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;Ljava/lang/String;Lcom/paypal/android/MEP/a$b;)V

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "QUICK_PAY is supposed to be dead code"

    invoke-static {v0, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :pswitch_6
    const-string v1, "MPL"

    const-string v2, "start SEND_PAYMENT"

    invoke-static {v1, v2}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1, v7}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;I)I

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1}, Lcom/paypal/android/a/b;->g(Lcom/paypal/android/a/b;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-virtual {v1}, Lcom/paypal/android/a/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/MEP/a$b;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "CHANGE_STRING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1}, Lcom/paypal/android/a/b;->h(Lcom/paypal/android/a/b;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    const-string v4, "mpl-success"

    invoke-virtual {v2, v4}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;)V

    :goto_6
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    invoke-interface {v0, v9, v1}, Lcom/paypal/android/MEP/a$b;->a(ILjava/lang/Object;)V

    const-string v0, "MPL"

    const-string v1, "end SEND_PAYMENT ok"

    invoke-static {v0, v1}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "CHANGE_STRING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_7
    iget-object v2, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v2, v7}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;I)I

    goto :goto_6

    :cond_8
    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    const-string v2, "SEND_PAYMENT"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;Ljava/lang/String;Lcom/paypal/android/MEP/a$b;)V

    goto :goto_7

    :pswitch_7
    const-string v1, "MPL"

    const-string v2, "start FUNDING"

    invoke-static {v1, v2}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1, v7}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;I)I

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1}, Lcom/paypal/android/a/b;->i(Lcom/paypal/android/a/b;)Ljava/util/Hashtable;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v2, 0x5

    invoke-interface {v0, v2, v1}, Lcom/paypal/android/MEP/a$b;->a(ILjava/lang/Object;)V

    const-string v0, "MPL"

    const-string v1, "end FUNDING ok"

    invoke-static {v0, v1}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1, v7}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;I)I

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    const-string v2, "FUNDING"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;Ljava/lang/String;Lcom/paypal/android/MEP/a$b;)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1, v7}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;I)I

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1}, Lcom/paypal/android/a/b;->j(Lcom/paypal/android/a/b;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v2}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/paypal/android/MEP/a$b;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1, v7}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;I)I

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    const-string v2, "GET_SHIPPING_ADDRESSES"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;Ljava/lang/String;Lcom/paypal/android/MEP/a$b;)V

    goto/16 :goto_1

    :pswitch_9
    const-string v1, "MPL"

    const-string v2, "start CREATE_PIN"

    invoke-static {v1, v2}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1, v7}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;I)I

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1}, Lcom/paypal/android/a/b;->k(Lcom/paypal/android/a/b;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v2}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/paypal/android/MEP/a$b;->a(ILjava/lang/Object;)V

    const-string v0, "MPL"

    const-string v1, "end CREATE_PIN ok"

    invoke-static {v0, v1}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1, v7}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;I)I

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    const-string v2, "CREATE_PIN"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;Ljava/lang/String;Lcom/paypal/android/MEP/a$b;)V

    goto/16 :goto_1

    :pswitch_a
    const-string v0, "MPL"

    const-string v1, "start CHECK_AUTH"

    invoke-static {v0, v1}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v0, v7}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;I)I

    iget-object v0, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v0}, Lcom/paypal/android/a/b;->d(Lcom/paypal/android/a/b;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/paypal/android/a/b;->a:Lcom/paypal/android/c/a;

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Lcom/paypal/android/c/a;->a(ILjava/lang/Object;)V

    const-string v0, "MPL"

    const-string v1, "end CHECK_AUTH ok"

    invoke-static {v0, v1}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    iget-object v0, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v0, v7}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;I)I

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    sget-object v1, Lcom/paypal/android/a/b;->a:Lcom/paypal/android/c/a;

    invoke-static {v0, v10, v1}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;ILcom/paypal/android/c/a;)V

    goto :goto_8

    :pswitch_b
    const-string v0, "MPL"

    const-string v1, "start REMOVE_AUTH"

    invoke-static {v0, v1}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v0, v7}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;I)I

    iget-object v0, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v0}, Lcom/paypal/android/a/b;->l(Lcom/paypal/android/a/b;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/paypal/android/a/b;->b:Lcom/paypal/android/c/a;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v2}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/paypal/android/c/a;->a(ILjava/lang/Object;)V

    const-string v0, "MPL"

    const-string v1, "end REMOVE_AUTH ok"

    invoke-static {v0, v1}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    iget-object v0, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v0, v7}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;I)I

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    const/16 v1, 0xc

    sget-object v2, Lcom/paypal/android/a/b;->b:Lcom/paypal/android/c/a;

    invoke-static {v0, v1, v2}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;ILcom/paypal/android/c/a;)V

    goto :goto_9

    :pswitch_c
    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1, v7}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;I)I

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1}, Lcom/paypal/android/a/b;->m(Lcom/paypal/android/a/b;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0xd

    invoke-interface {v0, v1, v8}, Lcom/paypal/android/MEP/a$b;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_e
    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1, v7}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;I)I

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    const-string v2, "PREAPPROVAL_DETAILS"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;Ljava/lang/String;Lcom/paypal/android/MEP/a$b;)V

    goto/16 :goto_1

    :pswitch_d
    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1, v7}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;I)I

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1}, Lcom/paypal/android/a/b;->n(Lcom/paypal/android/a/b;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0xe

    invoke-interface {v0, v1, v8}, Lcom/paypal/android/MEP/a$b;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_f
    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1, v7}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;I)I

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    const-string v2, "PREAPPROVAL_CONFIRM"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;Ljava/lang/String;Lcom/paypal/android/MEP/a$b;)V

    goto/16 :goto_1

    :pswitch_e
    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1}, Lcom/paypal/android/a/b;->o(Lcom/paypal/android/a/b;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0xf

    invoke-interface {v0, v1, v8}, Lcom/paypal/android/MEP/a$b;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_10
    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    invoke-static {v1, v7}, Lcom/paypal/android/a/b;->b(Lcom/paypal/android/a/b;I)I

    iget-object v1, p0, Lcom/paypal/android/a/k;->a:Lcom/paypal/android/a/b;

    const-string v2, "CREATE_PREAPPROVAL"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/a/b;->a(Lcom/paypal/android/a/b;Ljava/lang/String;Lcom/paypal/android/MEP/a$b;)V

    goto/16 :goto_1

    :cond_11
    const-string v0, "NetworkHandler"

    const-string v1, "thread exiting"

    invoke-static {v0, v1}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3
    move-exception v1

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_a
        :pswitch_5
        :pswitch_2
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
