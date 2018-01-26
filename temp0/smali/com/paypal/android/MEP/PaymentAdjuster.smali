.class public interface abstract Lcom/paypal/android/MEP/PaymentAdjuster;
.super Ljava/lang/Object;


# virtual methods
.method public abstract adjustAmount(Lcom/paypal/android/MEP/MEPAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/paypal/android/MEP/MEPAmounts;
.end method

.method public abstract adjustAmountsAdvanced(Lcom/paypal/android/MEP/MEPAddress;Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/paypal/android/MEP/MEPAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/paypal/android/MEP/MEPReceiverAmounts;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Lcom/paypal/android/MEP/MEPReceiverAmounts;",
            ">;"
        }
    .end annotation
.end method
